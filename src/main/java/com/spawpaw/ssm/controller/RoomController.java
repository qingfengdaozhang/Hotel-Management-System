package com.spawpaw.ssm.controller;

import com.spawpaw.ssm.dao.CategoryMapper;
import com.spawpaw.ssm.dao.RoomMapper;
import com.spawpaw.ssm.entity.Room;
import com.spawpaw.ssm.entity.RoomExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2018/1/9 0009.
 */
@RestController
@RequestMapping(path = "/room")
public class RoomController {
    @Autowired
    RoomMapper roomMapper;
    @Autowired
    CategoryMapper categoryMapper;

    @RequestMapping(path = "selectno.action",method = RequestMethod.GET)
    public String getno(HttpServletRequest request)
    {
        Integer  id=Integer.valueOf( request.getParameter("id"));
        try{
            String name = roomMapper.selectByPrimaryKey(id).getNo();
            return name;
        }
        catch(Exception e){
        return "error";
        }
    }
    @RequestMapping(path = "selectcategory.action",method = RequestMethod.GET)
    public String selectcategory(HttpServletRequest request){
        Integer  id=Integer.valueOf( request.getParameter("id"));
        try{
            String name = categoryMapper.selectByPrimaryKey(roomMapper.selectByPrimaryKey(id).getCid()).getName();
            return name;
        }
        catch (Exception e){
            return "error";
        }
    }
    @RequestMapping(path = "selectrid.action",method = RequestMethod.GET)
    public @ResponseBody
    List<Room> getroom(HttpServletRequest request){
        Integer cid =Integer.valueOf( request.getParameter("cid"));
        RoomExample roomExample=new RoomExample();
        RoomExample.Criteria criteria = roomExample.createCriteria();
        criteria.andCidEqualTo(cid);
     //   criteria.andStatusEqualTo("o");
        try{
            return roomMapper.selectByExample(roomExample);
        }
        catch(Exception e){
            return null;
        }
    }

}
