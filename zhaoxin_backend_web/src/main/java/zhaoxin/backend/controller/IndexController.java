package zhaoxin.backend.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import zhaoxin.NewcomerService;
import zhaoxin.constant.PaginationConstant;
import zhaoxin.exception.newcomerExistException;
import zhaoxin.pojo.Newcomer;
import zhaoxin.util.ResponseResult;
import zhaoxin.vo.NewcomerVo;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by mamama72 on 2019/6/11.
 */
@Controller
@RequestMapping("/backend")
public class IndexController {

    @Autowired
    private NewcomerService newcomerService;

    @RequestMapping("/list")

    public ModelAndView list(Integer pageNum) {

        if (ObjectUtils.isEmpty(pageNum)){
            pageNum= PaginationConstant.PAGE_NUM;
        }
        //设置分页
        PageHelper.startPage(pageNum,PaginationConstant.PAGE_SIZE);
        //查询数据
        List<Newcomer> Newcomers = newcomerService.findAll();
        //查出的结果放入PageInfo对象中
        PageInfo<Newcomer> pageInfo = new PageInfo<>(Newcomers);
        ModelAndView modelAndView = new ModelAndView("list");
        modelAndView.addObject("pageInfo",pageInfo);

        return modelAndView;
    }

    @RequestMapping("/home")
    public String home(){
        //返回主页
        return "home";
    }

    @RequestMapping("/add")
    @ResponseBody
    public ResponseResult add(NewcomerVo newcomerVo) throws newcomerExistException {
        newcomerService.add(newcomerVo);
        return ResponseResult.success();
    }

    @RequestMapping("/modify")
    @ResponseBody

    public ResponseResult modify(int id, String name,  String xuehao,  String nianji, @RequestParam("zhuanye") String zhuanye, @RequestParam("xueyuan") String xueyuan, @RequestParam("team") String team, @RequestParam("phone") String phone, @RequestParam("qq") String qq) {

            newcomerService.modify(id, name, xuehao, nianji, zhuanye, xueyuan, team, phone, qq);
            return ResponseResult.success("修改成功");

        }


    @RequestMapping("/findById")
    @ResponseBody
    public ResponseResult findById(int id){
        Newcomer newcomer = newcomerService.findById(id);

        return ResponseResult.success(newcomer);
    }

    @RequestMapping("/removeById")
    @ResponseBody
    public ResponseResult removeById(int id){
        newcomerService.removeById(id);
        return ResponseResult.success();
    }

    @RequestMapping("/export")
    public void export(HttpServletResponse httpServletResponse){
        newcomerService.export(httpServletResponse);

    }



}
