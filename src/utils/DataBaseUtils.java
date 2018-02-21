package utils;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import java.io.IOException;
import java.io.InputStream;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
import java.util.UUID;

public class DataBaseUtils {
    private static String username; //用户名
    private static String password; //密码
    private static String dataBaseName; //数据库名

    public static void config(String path){
        InputStream inputStream = DataBaseUtils.class.getClassLoader().getResourceAsStream(path);
        Properties p = new Properties();
        try {
            p.load(inputStream);
            username = p.getProperty("db.username");
            password = p.getProperty("db.password");
            dataBaseName = p.getProperty("db.dataBaseName");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection(){
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection  = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/"+dataBaseName+"?useUnicode=true&characterEncoding=utf8",username,password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public static void closeConnection(Connection connection, PreparedStatement statement, ResultSet rs){
        try {
            if(rs!=null)rs.close();
            if(statement!=null)statement.close();
            if(connection!=null)connection.close();
        } catch (Exception e) {
            e.fillInStackTrace();
        }
    }

    /**
     * DML操作
     * @param sql
     * @param objects
     */
    public static void update(String sql, Object...objects){
        Connection connection = getConnection();
        PreparedStatement statement = null;
        try {
            statement = (PreparedStatement) connection.prepareStatement(sql);
            for (int i = 0; i < objects.length; i++) {
                statement.setObject(i+1, objects[i]);
            }
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            closeConnection(connection, statement, null);
        }
    }

    public static void main(String[] args) {
        config("config/jdbc.properties");
        Connection connection = getConnection();
        String id = UUID.randomUUID() + "";
        String createTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        update("INSERT INTO user(id,username,password,sex,create_time,is_delete,address,telephone) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)", id,"张三",123456,0,createTime,0,"保密","保密");
        //closeConnection();
    }
}
