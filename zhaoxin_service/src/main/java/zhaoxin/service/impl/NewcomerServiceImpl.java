package zhaoxin.service.impl;

import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;
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
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
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
    public void add(NewcomerVo newcomerVo){

        Newcomer newcomer = new Newcomer();
        try {
            PropertyUtils.copyProperties(newcomer,newcomerVo);

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

        newcomerDao.update(id,name,xuehao,nianji,zhuanye,xueyuan,team,phone,qq);
    }


    @Override
    public Newcomer findByName(String name) {
        return null;
    }

    @Override
    public void export(HttpServletResponse httpServletResponse) {
        
    }
    /**
     * 导出基本Excel模板代码
     * @param response 输出流
     * @param lists Newcomer的list
     */
    private void exportSimpleExcelTemplate(HttpServletResponse response, List<Newcomer> lists) {

        XLSExcelFileExportFactory<Newcomer> factory = new XLSExcelFileExportFactory<Newcomer>();

        String exportFileName = DateUtils.nowYYYYmmdd();

        File file = new File(exportFileName + ".xls");
        FileOutputStream fos = null;
        FileInputStream fis = null;

        try {
            fos = new FileOutputStream(file);
            WritableWorkbook workbook = factory.createExcel(fos,
                    new Excel(DateUtils.nowYYYYmmdd(), 0),
                    Arrays.asList("id", "姓名", "学号", "年级", "专业", "学院", "小组", "电话", "qq"),
                    lists,
                    new NewcomerExportMapper());

            workbook.write();
            workbook.close();

            response.setContentType("application/x-export");
            response.setCharacterEncoding("UTF-8");
            response.setHeader("Content-Disposition", "attachment; filename=" + file.getName());
            response.setHeader("Content-Length", String.valueOf(file.length()));

            int length = 0;
            byte[] buffer = new byte[1024];

            fis = new FileInputStream(file);
            OutputStream os = response.getOutputStream();

            while (-1 != (length = fis.read(buffer, 0, buffer.length))) {
                os.write(buffer, 0, length);
            }

            os.flush();
            os.close();
        } catch (RowsExceededException e) {
            e.printStackTrace();
        } catch (WriteException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            file.delete();

            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            if (fis != null) {
                try {
                    fis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
