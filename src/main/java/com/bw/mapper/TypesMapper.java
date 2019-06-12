package com.bw.mapper;

import com.bw.entity.Types;

public interface TypesMapper {
    int deleteByPrimaryKey(Integer tid);

    int insert(Types record);

    int insertSelective(Types record);

    Types selectByPrimaryKey(Integer tid);

    int updateByPrimaryKeySelective(Types record);

    int updateByPrimaryKey(Types record);
}