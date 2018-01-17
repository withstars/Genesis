package com.withstars.dao;

import com.withstars.domain.Reply;

public interface ReplyMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Reply record);

    int insertSelective(Reply record);

    Reply selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Reply record);

    int updateByPrimaryKeyWithBLOBs(Reply record);

    int updateByPrimaryKey(Reply record);
}