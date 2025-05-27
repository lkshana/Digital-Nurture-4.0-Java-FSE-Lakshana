import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BankDataAccessObject {

    private final Connection databaseConnection;

    public BankDataAccessObject() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            databaseConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "password");
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void transferMoney(int fromAccountNumber, int toAccountNumber, double transferAmount) {
        try {
            databaseConnection.setAutoCommit(false);

            try {
                // debit
                try (PreparedStatement debitStatement = databaseConnection.prepareStatement(
                        "UPDATE accounts SET balance = balance - ? WHERE acc_no = ?")) {
                    debitStatement.setDouble(1, transferAmount);
                    debitStatement.setInt(2, fromAccountNumber);
                    int rowsAffected1 = debitStatement.executeUpdate();

                    if (rowsAffected1 != 1) {
                        throw new SQLException("Debit failed");
                    }
                }

                // credit
                try (PreparedStatement creditStatement = databaseConnection.prepareStatement(
                        "UPDATE accounts SET balance = balance + ? WHERE acc_no = ?")) {
                    creditStatement.setDouble(1, transferAmount);
                    creditStatement.setInt(2, toAccountNumber);
                    int rowsAffected2 = creditStatement.executeUpdate();

                    if (rowsAffected2 != 1) {
                        throw new SQLException("Credit failed");
                    }
                }

                databaseConnection.commit();
                System.out.println("Transaction successful!");
            } catch (SQLException e) {
                databaseConnection.rollback();
                System.out.println("Transaction failed and rolled back.");
                throw e;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                databaseConnection.setAutoCommit(true);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public void close() {
        try {
            if (databaseConnection != null) {
                databaseConnection.close();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
