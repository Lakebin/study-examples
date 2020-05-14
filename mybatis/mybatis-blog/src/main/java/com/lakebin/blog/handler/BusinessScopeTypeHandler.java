package com.lakebin.blog.handler;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author hubin.f
 * @date 2020/5/9 10:05
 */
public class BusinessScopeTypeHandler extends BaseTypeHandler<List<Integer>> {

    public void setNonNullParameter(PreparedStatement ps, int i, List<Integer> integers, JdbcType jdbcType) throws SQLException {
        String collect = integers.stream().map(value -> value + ",").collect(Collectors.joining());
        ps.setString(i, collect);
    }

    public List<Integer> getNullableResult(ResultSet resultSet, String s) throws SQLException {
        return toIntList(resultSet.getString(s));
    }

    public List<Integer> getNullableResult(ResultSet resultSet, int i) throws SQLException {
        return toIntList(resultSet.getString(i));
    }

    public List<Integer> getNullableResult(CallableStatement callableStatement, int i) throws SQLException {
        return toIntList(callableStatement.getString(i));
    }

    private List<Integer> toIntList(String str) {
        String[] split = str.split(",");
        return Arrays.stream(split).map(Integer::parseInt).collect(Collectors.toList());
    }
}
