
public class BankMain {
    public static void main(String[] args) {
        BankDataAccessObject dao = new BankDataAccessObject();

        dao.transferMoney(101, 102, 500);

        dao.close();
    }
}
