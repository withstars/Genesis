package com.withstars.domain;

import java.io.Serializable;

public class Tab implements Serializable {
    private Integer id;

    private String tabName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTabName() {
        return tabName;
    }

    public void setTabName(String tabName) {
        this.tabName = tabName;
    }
}