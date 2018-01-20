package com.withstars.service;

import com.withstars.domain.Topic;

import java.util.List;

public interface TopicService {

    //返回全部主题
    public List<Topic> getAllTopics();
    //返回指定id主题
    public Topic selectById(Integer id);
    //新建主题
    public boolean addTopic(Topic topic);
    //点击量加一
    public boolean clickAddOne(Integer id);
}
