package com.spawpaw.ssm.controller;

import com.spawpaw.ssm.dao.CategoryMapper;
import com.spawpaw.ssm.entity.Category;
import com.spawpaw.ssm.entity.CategoryExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by Administrator on 2018/1/8 0008.
 */
@RestController
@RequestMapping(path = "/category")
public class CategoryController {
    @Autowired
    CategoryMapper categoryMapper;
    @RequestMapping(path = "get.action",method = RequestMethod.GET)
    public List<Category> get(){
        CategoryExample categoryExample = new CategoryExample();
        categoryExample.createCriteria().andIdIsNotNull();
        List<Category> categoryList = categoryMapper.selectByExample(categoryExample);
        try{
            if(categoryList!=null)
                return categoryList;
            else
                return null;
        }
        catch(Exception e){
            return null;
        }
    }
}
