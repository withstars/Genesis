package com.withstars.domain;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 主题实体类
 */
public class Topic extends BaseDomain {

    private User user;

    private Tab tab;

    private Integer countReplies;

    private Integer id;

    private Integer userId;

    private Date createTime;

    private Date updateTime;

    private String title;

    private Integer click;

    private Byte tabId;

    private String content;




    public Integer getCountReplies() {
        return countReplies;
    }

    public void setCountReplies(Integer countReplies) {
        this.countReplies = countReplies;
    }

    public void setTab(Tab tab) {
        this.tab = tab;
    }

    public Tab getTab() {
        return tab;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
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

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getClick() {
        return click;
    }

    public void setClick(Integer click) {
        this.click = click;
    }

    public Byte getTabId() {
        return tabId;
    }

    public void setTabId(Byte tabId) {
        this.tabId = tabId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getLocalCreateTime() {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-M-dd HH:mm:ss");//设置日期格式
        String date = df.format(this.createTime);
        return date;
    }
    public String getLocalUpdateTime() {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-M-dd HH:mm:ss");//设置日期格式
        String date = df.format(updateTime);
        return date;
    }
}