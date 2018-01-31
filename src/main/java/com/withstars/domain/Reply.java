package com.withstars.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 回复实体类
 */
public class Reply implements Serializable {
    private Long id;

    private Integer topicId;

    private Integer replyUserId;

    private Date createTime;

    private Date updateTime;

    private String device;

    private String content;

    @Override
    public String toString() {
        return "该回复id为"+id+",主题id为"+topicId+",用户id为"+replyUserId+",发表时间为"+createTime+",更新时间为"+updateTime+",用户设备为"+device+",回复内容为"+content;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getTopicId() {
        return topicId;
    }

    public void setTopicId(Integer topicId) {
        this.topicId = topicId;
    }

    public Integer getReplyUserId() {
        return replyUserId;
    }

    public void setReplyUserId(Integer replyUserId) {
        this.replyUserId = replyUserId;
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

    public String getDevice() {
        return device;
    }

    public void setDevice(String device) {
        this.device = device == null ? null : device.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}