package com.imut.dao;

import com.imut.model.Menu;

public interface MenuMapper {
    int deleteByPrimaryKey(Integer pid);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer pid);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
}