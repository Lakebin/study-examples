package com.lakebin.blog.mapper;

import com.lakebin.blog.entity.PostTagExample;
import com.lakebin.blog.entity.PostTagKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PostTagMapper {
    long countByExample(PostTagExample example);

    int deleteByExample(PostTagExample example);

    int deleteByPrimaryKey(PostTagKey key);

    int insert(PostTagKey record);

    int insertSelective(PostTagKey record);

    List<PostTagKey> selectByExample(PostTagExample example);

    int updateByExampleSelective(@Param("record") PostTagKey record, @Param("example") PostTagExample example);

    int updateByExample(@Param("record") PostTagKey record, @Param("example") PostTagExample example);
}