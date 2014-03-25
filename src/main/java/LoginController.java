/**
 * User: wlai
 * Date: 3/25/14
 * Time: 4:06 PM
 */
public class LoginController {
    private String name;

    public LoginController(){

    }
    public LoginController(String name) {
        this.name = name;
    }

    public void login() {
        System.out.println(name + " is logining...");
    }

    public void login2(){
        System.out.println("login2....");
    }

}