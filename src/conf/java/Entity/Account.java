
package Entity;


public class Account {
    private int id;
    private String username;
    private String pass;
    private int isAdmin;


    public Account() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return username;
    }

    public void setUser(String user) {
        this.username = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public Account(int id, String user, String pass, int isAdmin) {
        this.id = id;
        this.username = user;
        this.pass = pass;
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", username=" + username + ", pass=" + pass + ", isAdmin=" + isAdmin + '}';
    }

    
    
    
}
