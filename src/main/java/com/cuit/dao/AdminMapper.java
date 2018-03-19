package com.cuit.dao;
import org.apache.ibatis.annotations.Param;

import com.cuit.domain.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer id);
    
    public Admin findAdminByNameAndPwd(@Param("aname") String aname,@Param("password") String password);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}