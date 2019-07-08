package zhaoxin.service.impl;

import org.apache.commons.beanutils.PropertyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import zhaoxin.NewcomerService;
import zhaoxin.dao.NewcomerDao;
import zhaoxin.pojo.Newcomer;
import zhaoxin.vo.NewcomerVo;

import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

/**
 * Created by mamama72 on 2019/6/10.
 */
@Service
@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
public class NewcomerServiceImpl implements NewcomerService {

    @Autowired
    private NewcomerDao newcomerDao;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
    public List<Newcomer> findAll() {
        return newcomerDao.selectAll();
    }


    @Override
    public Newcomer findByTeam(String team) {
        return newcomerDao.selectByTeam(team);
    }

    @Override
    public void add(NewcomerVo newcomerVo) {

        Newcomer newcomer = new Newcomer();
        try {
            PropertyUtils.copyProperties(newcomer, newcomerVo);

            newcomerDao.insert(newcomer);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Newcomer findById(int id) {
        return newcomerDao.selectById(id);
    }

    @Override
    public void removeById(int id) {
        newcomerDao.deleteById(id);
    }


    @Override
    public void modify(int id, String name, String xuehao, String nianji, String zhuanye, String xueyuan, String team, String phone, String qq) {

        newcomerDao.update(id, name, xuehao, nianji, zhuanye, xueyuan, team, phone, qq);
    }


    @Override
    public Newcomer findByName(String name) {
        return null;
    }

    @Override
    public void export(HttpServletResponse httpServletResponse) {

    }
}