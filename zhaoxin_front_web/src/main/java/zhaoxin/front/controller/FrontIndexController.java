package zhaoxin.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import zhaoxin.NewcomerService;
import zhaoxin.exception.newcomerExistException;
import zhaoxin.util.ResponseResult;
import zhaoxin.vo.NewcomerVo;

/**
 * Created by mamama72 on 2019/6/11.
 */

@Controller
@RequestMapping("/front")
public class FrontIndexController {

    @Autowired
    private NewcomerService newcomerService;

    @RequestMapping("/home")
    public String home() {
        //返回主页
        return "home";
    }

    @RequestMapping("/baoming")
    public String baoming() {
        //返回报名页
        return "baoming";
    }

    @RequestMapping("/add")
    @ResponseBody
    public ResponseResult add(NewcomerVo newcomerVo) throws newcomerExistException {
        newcomerService.add(newcomerVo);
        return ResponseResult.success();
    }



    @RequestMapping("/java")
    public String java() {
        //返回报名页
        return "java";
    }
    @RequestMapping("/php")
    public String php() {
        //返回报名页
        return "php";
    }
    @RequestMapping("/python")
    public String python() {
        //返回报名页
        return "python";
    }
    @RequestMapping("/sjk")
    public String sjk() {
        //返回报名页
        return "sjk";
    }
    @RequestMapping("/succeed")
    public String succeed() {
        //返回报名页
        return "succeed";
    }
    @RequestMapping("/text")
    public String text() {
        //返回报名页
        return "";
    }

    @RequestMapping("/ui")
    public String ui() {
        //返回报名页
        return "ui";
    }
    @RequestMapping("/yw")
    public String yw() {
        //返回报名页
        return "yw";
    }
}