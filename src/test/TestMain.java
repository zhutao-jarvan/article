package test;

import bean.Article;
import bean.User;
import utils.TableUtils;

public class TestMain {
    public static void main(String[] args) {
        String sql = TableUtils.getCreateTableSQl(Article.class);
        System.out.println(sql);
    }
}
