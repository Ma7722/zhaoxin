package zhaoxin.backend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by mamama72 on 2019/6/11.
 */
@Controller
@RequestMapping("/backend/sysuser")
public class SysuserController {

    @RequestMapping("/login")
    public String login(){
        //处理登陆操作

        return "home";
    }

}
