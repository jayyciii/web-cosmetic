package entity;

public class UserAccount{
    public static final String GENDER_MALE="M";
    public static final String GENDER_FEMALE="F";
    
    private String userName;
    private String gender;
    private String password;
    
    public UserAccount(){
        
    }

    public UserAccount(String userName, String gender, String password) {
        this.userName = userName;
        this.gender = gender;
        this.password = password;
    }
    
    public UserAccount(String username, String password){
        this.userName=username;
        this.password=password;
    }
    
    public UserAccount(UserAccount us){
        this.userName=us.userName;
        this.gender=us.gender;
        this.password=us.password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
}