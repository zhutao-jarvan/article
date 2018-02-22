package bean;

import annotation.Column;
import annotation.Table;

@Table(tableName = "user")
public class User {
    @Column(type = "VARCHAR(30)", field = "id", primaryKey = true, defaultNull = false)
    private String id;        //主键，采用UUID

    @Column(type = "VARCHAR(20)", field = "username")
    private String username;  //用户名

    @Column(type = "VARCHAR(20)", field = "password")
    private String password;  //密码

    @Column(type = "VARCHAR(60)", field = "headerPic")
    private String headerPic; //头像

    @Column(type = "VARCHAR(60)", field = "email")
    private String email;     //电子邮箱

    @Column(type = "VARCHAR(2)", field = "sex")
    private Integer sex;      //性别 0男 1女 3保密

    @Column(type = "datetime", field = "create_time")
    private String createTime;//创建时间

    @Column(type = "timestamp", field = "update_time")
    private String updateTime;//最后更新时间

    @Column(type = "int(1)", field = "is_delete")
    private Integer isDelete; // 删除状态  0未删除  1删除

    @Column(type = "VARCHAR(200)", field = "address")
    private String address;   //地址

    @Column(type = "VARCHAR(15)", field = "telephone")
    private String telephone; //电话
}
