package cilicili.jz2.pojo;

import java.util.Date;

public class Token {
    private Integer id;

    private Integer userId;

    private String token;

    private Date applytime;

    private Date expiretime;

    private Integer countAuth;

    private Integer maxCountAuth;

    private String ussage;

    public Token(Integer id, Integer userId, String token, Date applytime, Date expiretime, Integer countAuth, Integer maxCountAuth, String ussage) {
        this.id = id;
        this.userId = userId;
        this.token = token;
        this.applytime = applytime;
        this.expiretime = expiretime;
        this.countAuth = countAuth;
        this.maxCountAuth = maxCountAuth;
        this.ussage = ussage;
    }

    public Token() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token == null ? null : token.trim();
    }

    public Date getApplytime() {
        return applytime;
    }

    public void setApplytime(Date applytime) {
        this.applytime = applytime;
    }

    public Date getExpiretime() {
        return expiretime;
    }

    public void setExpiretime(Date expiretime) {
        this.expiretime = expiretime;
    }

    public Integer getCountAuth() {
        return countAuth;
    }

    public void setCountAuth(Integer countAuth) {
        this.countAuth = countAuth;
    }

    public Integer getMaxCountAuth() {
        return maxCountAuth;
    }

    public void setMaxCountAuth(Integer maxCountAuth) {
        this.maxCountAuth = maxCountAuth;
    }

    public String getUssage() {
        return ussage;
    }

    public void setUssage(String ussage) {
        this.ussage = ussage == null ? null : ussage.trim();
    }
}