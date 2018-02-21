package bean;

public class User {
    private String id;    //主键，采用UUID
    private String username;  //用户名
    private String password;  //密码
    private String headerPic; //头像
    private String email;     //电子邮箱
    private Integer male;     //性别 0男 1女 3保密
    private String createTime;//创建时间
    private String updateTime;//最后更新时间
    private Integer isDelete; // 删除状态0未删除1删除
    private String address;   //地址
    private String telephone; //电话
}
