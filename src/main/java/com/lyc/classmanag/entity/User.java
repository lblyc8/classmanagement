package com.lyc.classmanag.entity;

public class User {
    private String UserId;
    private String UserName;
    private String Password;

    public String getUserId() {
        return UserId;
    }

    public void setUserId(String userId) {
        UserId = userId;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String userName) {
        UserName = userName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "UserId='" + UserId +"'" +
                ",UserName='"+ UserName +"'" +
                ",Password='"+ Password +"'" +
                "}";
    }
}
