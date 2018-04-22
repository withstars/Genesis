package com.withstars.domain;

import java.io.Serializable;
import java.util.List;

/**
 * 主题板块实体类
 */
public class Tab extends BaseDomain {
    private Integer id;

    private String tabName;

    private String tabNameEn;

    private List<Topic> topics;

    public String getTabNameEn() {
        return tabNameEn;
    }

    public void setTabNameEn(String tabNameEn) {
        this.tabNameEn = tabNameEn;
    }



    public void setTopics(List<Topic> topics) {
        this.topics = topics;
    }

    public List<Topic> getTopics() {
        return topics;
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