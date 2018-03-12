package com.spawpaw.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2018/1/4 0004.
 */
@Controller
@RequestMapping(path = "/")
public class IndexController {
    @RequestMapping(path = "")
    public String init(){return "index";}


    @RequestMapping(path = "index")
    public String index()
    {
        return "index";
    }
    @RequestMapping(path = "login")
    public String login()
    {
        return "login";
    }
    @RequestMapping(path = "membercenter")
    public String membercenter(){return "membercenter";}
    @RequestMapping(path = "regest")
    public String regest(){return "regest";}
    @RequestMapping(path = "roomprice")
    public String roomprice(){return "roomprice";}
    @RequestMapping(path = "subscriptionDetail")
    public String subscriptionDetail(){return "subscriptionDetail";}
    @RequestMapping(path = "createsubccription-1")
    public String createsubccription_1(){return "createsubccription-1";}
    @RequestMapping(path = "createsubccription-2")
    public String createsubccription_2(){return "createsubccription-2";}
    @RequestMapping(path = "mySubscription(2)")
    public String mySubscription_2(){return "mySubscription(2)";}
    @RequestMapping(path = "manage")
    public String manager(){return "manage";}

}
