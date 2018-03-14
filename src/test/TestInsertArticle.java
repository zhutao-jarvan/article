package test;

import bean.User;
import org.junit.jupiter.api.Test;
import service.ArticleService;
import service.LoginService;
import utils.DataBaseUtils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;


public class TestInsertArticle {
    @Test
    public void insertArticle() {
        String sql = "INSERT INTO article(id,header,name,content,author,"
                + "description,is_published,is_delete,create_time,update_time"
                + ",user_id,category_id) VALUES (?,?,?,?,?,?,?,?,?,?,?,?) ";
        User user = new LoginService().getUser("zhangsan");
        String id = UUID.randomUUID().toString(); //主键
        String header = "Java Web实用技术";
        String name  = "Tomcat及Java环境的安装";
        String content = "我们经常会在网上下载一些开源项目，或者从别的地方迁移一些项目进来，但经常会发现导入后各种报错。这是初学java肯定会遇到的问题，本文对一些常见的处理方案做一个总结。（本文将MyEclipse项目导入eclipse的过程为例，其他情况也可参考这个流程）";
        String author = "Jack";
        String description = "解决项目导入的冲突问题...";
        int isPublished = 1 ;
        int isDelete = 0;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String create_time = sdf.format(new Date());
        String update_time = sdf.format(new Date());
        String userId = user.getId();
        int categoryId = 2;
        DataBaseUtils.update(sql, id,header,name,content,author,description,isPublished,isDelete,create_time,update_time,userId,categoryId);
        System.out.println("新增成功！");
    }

    @Test
    public void getCategoryList() {
        String sql = "select * from category";
        List list  = DataBaseUtils.queryForList(sql);
        System.out.println(list);
    }

    @Test
    public void getArticle() {
        ArticleService ArticleService = new ArticleService();
        List list = ArticleService.getArticlesByCategoryId(2,0,10);
        System.out.println(list);
    }
}
