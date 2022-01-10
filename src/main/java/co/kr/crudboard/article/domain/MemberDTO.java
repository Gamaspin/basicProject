package co.kr.crudboard.article.domain;

import java.util.Date;

public class MemberDTO {

    private int member_no;
    private String member_id;
    private String member_pw;
    private String member_name;
    private String member_email;
    private Date member_regdate;

    public MemberDTO() {

    }

    public int getMember_no() {
        return member_no;
    }

    public void setMember_no(int member_no) {
        this.member_no = member_no;
    }

    public String getMember_id() {
        return member_id;
    }

    public void setMember_id(String member_id) {
        this.member_id = member_id;
    }

    public String getMember_pw() {
        return member_pw;
    }

    public void setMember_pw(String member_pw) {
        this.member_pw = member_pw;
    }

    public String getMember_name() {
        return member_name;
    }

    public void setMember_name(String member_name) {
        this.member_name = member_name;
    }

    public String getMember_email() {
        return member_email;
    }

    public void setMember_email(String member_email) {
        this.member_email = member_email;
    }

    public Date getMember_regdate() {
        return member_regdate;
    }

    public void setMember_regdate(Date member_regdate) {
        this.member_regdate = member_regdate;
    }

    @Override
    public String toString() {
        return "MemberDTO{" +
                "member_no=" + member_no +
                ", member_id='" + member_id + '\'' +
                ", member_pw='" + member_pw + '\'' +
                ", member_name='" + member_name + '\'' +
                ", member_email='" + member_email + '\'' +
                ", member_regdate=" + member_regdate +
                '}';
    }
}

