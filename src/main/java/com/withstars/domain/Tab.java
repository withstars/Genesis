package com.withstars.domain;

import java.io.Serializable;

/**
 * 主题板块实体类
 */
public class Tab implements Serializable {
    private Integer id;

    private String tabName;

    @Override
    public String toString() {
        return "该板块id为"+id+",板块名为"+tabName;
    }

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