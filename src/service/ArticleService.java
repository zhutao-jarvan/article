package service;

import utils.DataBaseUtils;

import java.util.List;
import java.util.Map;

public class ArticleService {
    public List<Map<String,Object>> getArticlesByCategoryId(Integer categoryId, Integer start, Integer end){
        String sql = "select id,header,name,author,"
                + "description from article where 1 = 1 "
                + " and is_delete = 0"
                + " and is_published = 1"
                + " and category_id = ?"
                + "  order by update_time desc limit ?,?";
        return DataBaseUtils.queryForList(sql, categoryId, start,end);
    }

    public List<Map<String,Object>> getContentByArticleId(String id){
        String sql = "select content from t_article where id = ?";
        return DataBaseUtils.queryForList(sql,id);
    }
}
