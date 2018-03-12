package com.spawpaw.ssm.controller;

import com.spawpaw.ssm.dao.CategoryMapper;
import com.spawpaw.ssm.dao.RoomAndDtlInfoMapper;
import com.spawpaw.ssm.dao.SubscriptionDtlMapper;
import com.spawpaw.ssm.dao.SubscriptionMapper;
import com.spawpaw.ssm.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

/**
 * Created by Administrator on 2018/1/5 0005.
 */
@RestController
@RequestMapping(path = "/subscript")
public class SubScriptionController {
    @Autowired
    SubscriptionMapper subscriptionMapper;
    @Autowired
    SubscriptionDtlMapper subscriptionDtlMapper;
    @Autowired
    CategoryMapper categoryMapper;
    @Autowired
    RoomAndDtlInfoMapper roomAndDtlInfoMapper;

    @RequestMapping(path = "getsubscription.action",method = RequestMethod.GET)
    public @ResponseBody
    List<Subscription> getsubscription(HttpServletRequest request){
        SubscriptionExample subscriptionExample =new SubscriptionExample();

        SubscriptionExample.Criteria  criteria = subscriptionExample.createCriteria();

        criteria.andIdIsNotNull();

        HttpSession session = request.getSession();

        criteria.andMidEqualTo(Integer.valueOf(session.getAttribute("userid").toString()));
        criteria.andStatusEqualTo("3");

        List<Subscription> subscriptions = subscriptionMapper.selectByExample(subscriptionExample);

        return subscriptions;
    }


    @RequestMapping(path = "postsubscriptioninfo.action",method = RequestMethod.POST)
    public String postsubscriptioninfo(HttpServletRequest request){
        String linkman = request.getParameter("linkman");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        HttpSession session = request.getSession();
        String mid = session.getAttribute("userid").toString();
        Random random = new Random(1000);
        String no = "320" + random.nextInt();
        Date cretime = new Date();
        String remark = "";
        try {
            Subscription subscription = new Subscription();
            subscription.setCretime(cretime);
            subscription.setEmail(email);
            subscription.setLinkman(linkman);
            subscription.setMid(Integer.valueOf(mid));
            subscription.setNo(no);
            subscription.setPhone(phone);
            subscription.setRemark(remark);
            subscription.setStatus("3");
            subscriptionMapper.updateByPrimaryKeySelective(subscription);
            return "success";
        }
        catch(Exception e){
            return "fail";
        }
    }

    @RequestMapping(path = "getallsubscription.action",method = RequestMethod.GET)
    public @ResponseBody
    List<Subscription> getallsubscription(HttpServletRequest request){
        SubscriptionExample subscriptionExample =new SubscriptionExample();

        HttpSession session = request.getSession();
        SubscriptionExample.Criteria  criteria = subscriptionExample.createCriteria();
        criteria.andIdIsNotNull();

        criteria.andMidEqualTo(Integer.valueOf(session.getAttribute("userid").toString()));

        List<Subscription> subscriptions = subscriptionMapper.selectByExample(subscriptionExample);

        return subscriptions;
    }

    @RequestMapping(path = "delete.action",method = RequestMethod.GET)
    public String delete(HttpServletRequest request){
        Integer id = Integer.valueOf(request.getParameter("id"));
        System.out.println("id"+id);
        try {
            subscriptionMapper.deleteByPrimaryKey(id);
            return "success";
        }
        catch(Exception e){
            return "fail";
        }
    }

    @RequestMapping(path = "subscriptiondtl.action",method = RequestMethod.GET)
    public @ResponseBody
    List<SubscriptionDtl> getsubscriptiondtl(HttpServletRequest request){
        System.out.println("成功查询");

        System.out.println(request);

        Integer id = Integer.valueOf(request.getParameter("id"));
        System.out.println("订单id"+id);

        SubscriptionDtlExample subscriptionDtlExample=new SubscriptionDtlExample();

        SubscriptionDtlExample.Criteria criteria = subscriptionDtlExample.createCriteria();

        criteria.andSidEqualTo(id);

        try{
         return subscriptionDtlMapper.selectByExample(subscriptionDtlExample);
        }catch(Exception e){
            return null;
        }
    }

    @RequestMapping(path = "postsubdtl.action",method = RequestMethod.POST)
    public String postsubdtl(HttpServletRequest request)
    {
        String rid = request.getParameter("rid");
        String sid = request.getParameter("sid");
        String sdate = request.getParameter("stime");
        String edate = request.getParameter("etime");
        String residetype = request.getParameter("residetype");
        Integer cid = Integer.valueOf(request.getParameter("cid"));
        Float price = categoryMapper.selectByPrimaryKey(cid).getBedprice()*Integer.valueOf(residetype);

        SubscriptionDtl subscriptionDtl =new SubscriptionDtl();
        subscriptionDtl.setRid(Integer.valueOf(rid));
        subscriptionDtl.setSid(Integer.valueOf(sid));
        try{
            System.out.println("开始更改时间");
            Date stime=null;
            Date etime=null;
            SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
            stime=formatter.parse(sdate);
            etime=formatter.parse(edate);
            System.out.println("更改时间结束"+sdate+edate);
            subscriptionDtl.setSdate(stime);
            subscriptionDtl.setEdate(etime);
            subscriptionDtl.setResidetype(Integer.valueOf(residetype));
            subscriptionDtl.setPrice(price);
            System.out.println("begin insert");
            subscriptionDtlMapper.insert(subscriptionDtl);
            return "success";
        }
        catch(Exception e){
            return "fail";
        }

    }


    @RequestMapping(path = "getroomanddtl.action",method = RequestMethod.GET)
    public @ResponseBody
    List<RoomAndDtl> getroomanddtl(HttpServletRequest request){
        Integer id = Integer.valueOf(request.getParameter("id"));
        try{
            return roomAndDtlInfoMapper.selectRoomAndDtlById(id);}
        catch(Exception e){
            return null;
        }
    }

    @RequestMapping(path = "getmanagesubscription.action",method = RequestMethod.GET)
    public @ResponseBody
    List<Subscription> getaamanagesubscription(HttpServletRequest request)
    {
        SubscriptionExample subscriptionExample =new SubscriptionExample();
        SubscriptionExample.Criteria  criteria = subscriptionExample.createCriteria();
        criteria.andIdIsNotNull();

        List<Subscription> subscriptions = subscriptionMapper.selectByExample(subscriptionExample);

        return subscriptions;
    }

    @RequestMapping(path = "charge.action",method = RequestMethod.GET)
    public String charge(HttpServletRequest request){
        Integer id = Integer.valueOf(request.getParameter("id"));
        try{
            Subscription subscription=new Subscription();
            subscription.setStatus("1");
            subscription.setId(id);
            subscriptionMapper.updateByPrimaryKeySelective(subscription);
            return "success";
        }
        catch(Exception e)
        {
            return "fail";
        }

    }

}
