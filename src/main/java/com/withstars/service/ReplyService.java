package com.withstars.service;

import com.withstars.domain.Reply;

import java.util.List;

public interface ReplyService {

    List<Reply> getRepliesOfTopic(Integer topicId);
}
