package zhaoxin;

import zhaoxin.pojo.Newcomer;
import zhaoxin.vo.NewcomerVo;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by mamama72 on 2019/6/5.
 */
public interface NewcomerService {

    /**
     * 查询所有报名信息
     */
    public List<Newcomer> findAll();

    /**
     * 根据id查询新人信息
     */
    public Newcomer findById(int id);


    /**
     * 根据name查询新人信息
     */
    public Newcomer findByName(String name);



    /**
     * 根据小组查询报名信息
     */
    public Newcomer findByTeam(String team);



    /**
     * 添加新人报名信息
     * 判断是否已经存在
     * 如果存在，抛出异常；不存在，进行添加操作
     */
    public void add(NewcomerVo newcomerVo);


    /**
     * 根据id删除信息
     */
    public void removeById(int id);


    /**
     * 根据id修改信息
     */

   public void modify(int id, String name,String xuehao,String nianji,String zhuanye,String xueyuan,String team,String phone,String qq) ;



    void export(HttpServletResponse httpServletResponse);
}
