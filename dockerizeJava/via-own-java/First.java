public class First {
    public static void main(String[] args) {
        System.out.println("App is working...");
        try {
            Thread.sleep(10000);
        } catch (Exception e) {
            System.out.println(e);
        }
        System.out.println("--The end--");
    }
}