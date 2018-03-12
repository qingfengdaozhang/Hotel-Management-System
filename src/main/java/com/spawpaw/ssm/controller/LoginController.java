package com.spawpaw.ssm.controller;

import com.spawpaw.ssm.dao.ManagerMapper;
import com.spawpaw.ssm.dao.MemberMapper;
import com.spawpaw.ssm.dao.UserMapper;
import com.spawpaw.ssm.entity.*;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2018/1/4 0004.
 */
@RestController
@RequestMapping(path = "/login")
public class LoginController {
    @Autowired
    MemberMapper memberMapper;

    @Autowired
    ManagerMapper managerMapper;

    @RequestMapping(path = "get.action",method = RequestMethod.POST)
    public @ResponseBody
    Member  get(HttpServletRequest request)
    {
        String name =request.getParameter("name");
        String password = request.getParameter("password");
        System.out.println(name+password);
        MemberExample memberExample =new MemberExample();
        MemberExample.Criteria criteria=memberExample.createCriteria();
        criteria.andUsernameEqualTo(name);
        criteria.andPwdEqualTo(password);
        List<Member> members = memberMapper.selectByExample(memberExample);
        try{
            System.out.println(members.get(0).getPhone());
            HttpSession session = request.getSession();
            //session.setAttribute("userinfo",members.get(0));
            //session.setAttribute("linkman",members.get(0).getName());
            session.setAttribute("userid",members.get(0).getId());
            session.setAttribute("userpassword",members.get(0).getPwd());
            return members.get(0);
        }
        catch(Exception e)
        {
            System.out.println("无用户");
            return null;
        }
    }

    @RequestMapping(path = "getmanage.action",method = RequestMethod.POST)
    public @ResponseBody
    Manager  getmanage(HttpServletRequest request)
    {
        String name =request.getParameter("name");
        String password = request.getParameter("password");
        ManagerExample managerExample =new ManagerExample();
        ManagerExample.Criteria criteria=managerExample.createCriteria();
        criteria.andUsernameEqualTo(name);
        criteria.andPwdEqualTo(password);
        List<Manager> managers = managerMapper.selectByExample(managerExample);
        try{
            HttpSession session = request.getSession();
            session.setAttribute("manageid",managers.get(0).getId());
            session.setAttribute("managepassword",managers.get(0).getPwd());
            return managers.get(0);
        }
        catch(Exception e)
        {
            System.out.println("无用户");
            return null;
        }
    }

    @RequestMapping(path = "getallmember.action",method = RequestMethod.GET)
    public @ResponseBody
    List<Member> getmember(HttpServletRequest request){
        MemberExample memberExample=new MemberExample();
        memberExample.createCriteria().andIdIsNotNull();
        return memberMapper.selectByExample(memberExample);
    }



    @RequestMapping(path = "add.action",method =RequestMethod.POST)
    public String add(HttpServletRequest request)
    {
        //System.out.println("进入函数");
        Date day = new Date();
        //SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String passwordenter = request.getParameter("passwordenter");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String linkman = request.getParameter("linkman");
        MemberExample memberExample =new MemberExample();
        Boolean test=false;
        try {
            memberExample.createCriteria().andNameEqualTo(name);
            List<Member> members = memberMapper.selectByExample(memberExample);
            if(members.get(0)!=null)
                test=true;
            test=false;
        }
        catch(Exception e){
            test = false;
        }
        if(!password.equals(passwordenter)||test)
        {
            return "fail";
        }
        Member member = new Member();
        member.setName(linkman);
        member.setEmail(email);
        member.setPhone(phone);

        member.setPwd(password);
        member.setRegtime(day);
        member.setUsername(name);
        try {
            memberMapper.insert(member);
            return "success";
        }
        catch (Exception e)
        {
            return "fail";
        }
    }
    @RequestMapping(path = "charge.action",method = RequestMethod.POST)
    public String charge(HttpServletRequest request)
    {
        String linkman = request.getParameter("linkman");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        Member member = new Member();
        member.setName(linkman);
        member.setPhone(phone);
        member.setEmail(email);
        HttpSession session = request.getSession();
        member.setId(Integer.valueOf(session.getAttribute("userid").toString()));
        try{
            System.out.println("开始修改");
            memberMapper.updateByPrimaryKeySelective(member);
            return "success";
        }
        catch (Exception e){
            return "fail";
        }



    }
    @RequestMapping(path = "chargepassword.action",method = RequestMethod.POST)
    public String chargepassword(HttpServletRequest request){
        String oldpassword =request.getParameter("oldpassword");
        String newpassword = request.getParameter("newpassword");
        String enterpassword = request.getParameter("enterpassword");
        HttpSession session =request.getSession();
        if(!session.getAttribute("userpassword").toString().equals(oldpassword)){
            return "error_password";
        }
        if(!newpassword.equals(enterpassword)){
            return "error_enter";
        }
        try{
            Member member = new Member();
            member.setId(Integer.valueOf(session.getAttribute("userid").toString()));
            member.setPwd(newpassword);
            memberMapper.updateByPrimaryKeySelective(member);
            return "success";
        }
        catch (Exception e){
            return "fail";
        }
    }
}
