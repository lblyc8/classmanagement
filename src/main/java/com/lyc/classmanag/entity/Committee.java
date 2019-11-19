package com.lyc.classmanag.entity;

public class Committee {
    private String UserId;
    private String Name;
    private String Phone;
    private String Position;

    public void setUserId(String userId) {
        UserId = userId;
    }

    public String getUserId() {
        return UserId;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getName() {
        return Name;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPosition(String position) {
        Position = position;
    }

    public String getPosition() {
        return Position;
    }
}
