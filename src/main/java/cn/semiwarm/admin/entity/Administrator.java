package cn.semiwarm.admin.entity;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * 管理员类
 * Created by alibct on 2017/3/10.
 */
public class Administrator implements Serializable{
    private String adminId; // 管理员ID
    private String adminName; // 管理员名称
    private String password; // 密码
    private Integer privilegeLevel; // 权限等级默认一级，最高十级
    private Boolean status; // 是否可用
    private Timestamp createTime; // 创建时间

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getPrivilegeLevel() {
        return privilegeLevel;
    }

    public void setPrivilegeLevel(Integer privilegeLevel) {
        this.privilegeLevel = privilegeLevel;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Administrator{" +
                "adminId='" + adminId + '\'' +
                ", adminName='" + adminName + '\'' +
                ", password='" + password + '\'' +
                ", privilegeLevel=" + privilegeLevel +
                ", status=" + status +
                ", createTime=" + createTime +
                '}';
    }
}
