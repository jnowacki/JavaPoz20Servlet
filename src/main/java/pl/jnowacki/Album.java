package pl.jnowacki;

import java.io.Serializable;

public class Album implements Serializable {

    private String name;
    private String author;

    public Album() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}
