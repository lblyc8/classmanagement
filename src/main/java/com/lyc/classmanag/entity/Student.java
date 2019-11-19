package com.lyc.classmanag.entity;

public class Student {
    private String Sno;
    private String Name;
    private String Sex;
    private String Birthday;
    private String Phone;
    private String QQ;
    private String Email;
    private Integer start;
    private Integer rows;

    public String getSno() {
        return Sno;
    }

    public void setSno(String sno) {
        Sno = sno;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getSex() {
        return Sex;
    }

    public void setSex(String sex) {
        Sex = sex;
    }

    public String getBirthday() {
        return Birthday;
    }

    public void setBirthday(String birthday) {
        Birthday = birthday;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public String getQQ() {
        return QQ;
    }

    public void setQQ(String QQ) {
        this.QQ = QQ;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    @Override
    public String toString() {
        return "Student{" +
                "Sno='" + Sno + "'" +
                ",Name='"+ Name + "'" +
                ",Sex='"+ Sex + "'" +
                ",Birthday='"+ Birthday + "'" +
                ",Phone='"+ Phone + "'" +
                ",QQ='"+ QQ + "'" +
                ",Email='"+ Email + "'" +
                "}";
    }
}