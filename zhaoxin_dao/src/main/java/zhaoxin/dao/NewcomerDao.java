package zhaoxin.dao;

import org.apache.ibatis.annotations.Param;
import zhaoxin.pojo.Newcomer;

import java.util.List;

/**
 * Created by mamama72 on 2019/6/5.
 */
public interface NewcomerDao {

    /**
     * 查询所有报名信息
     */
    public List<Newcomer> selectAll();

    /**
     * 根据id查询报名信息
     */
    public Newcomer selectById(int id);

    /**
     * 根据name查询报名信息
     */
    public Newcomer selectByName(String name);

    /**
     * 根据小组查询报名信息
     */
    public Newcomer selectByTeam(String team);



    /**
     * 添加新人报名信息
     */

    public void insert(Newcomer newcomer);



    /**
     * 根据id删除新人信息
     */
    public void deleteById(int id);


    /**
     * 根据id修改新人信息
     */

    public void update(@Param("id") int id, @Param("name") String name, @Param("xuehao") String xuehao, @Param("nianji") String nianji, @Param("zhuanye") String zhuanye, @Param("xueyuan") String xueyuan, @Param("team") String team, @Param("phone") String phone, @Param("qq") String qq);

}
