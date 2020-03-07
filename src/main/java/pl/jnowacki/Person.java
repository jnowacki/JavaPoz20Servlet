package pl.jnowacki;

import java.io.Serializable;

public class Person implements Serializable {

    private String name;
    private String pwd;

    public Person() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
}
