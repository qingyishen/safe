package com.mybatis.test;

import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.cuit.domain.Admin;
import com.cuit.service.AdminService;

@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类  
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})  
public class TestMyBatis {
	private static Logger logger = Logger.getLogger(TestMyBatis.class);  
    @Resource  
    private AdminService as = null;  
  
    @Test  
    public void test() {  
    	Admin admin = as.getUserById(1);  
        logger.info(JSON.toJSONString(admin));  
    }  
}
