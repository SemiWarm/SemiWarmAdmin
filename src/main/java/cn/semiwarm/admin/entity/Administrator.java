package cn.semiwarm.admin.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 管理员类
 * Created by alibct on 2017/3/10.
 */
public class Administrator implements Serializable {
    private Long administratorId; // 管理员ID
    private String administratorName; // 管理员名称
    private String password; // 密码
    private Integer privilegeLevel; // 权限等级默认一级，最高十级
    private Boolean status; // 是否可用
    private Date createAt; // 创建时间

    public Long getAdministratorId() {
        return administratorId;
    }

    public void setAdministratorId(Long administratorId) {
        this.administratorId = administratorId;
    }

    public String getAdministratorName() {
        return administratorName;
    }

    public void setAdministratorName(String administratorName) {
        this.administratorName = administratorName;
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

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    @Override
    public String toString() {
        return "Administrator{" +
                "administratorId=" + administratorId +
                ", administratorName='" + administratorName + '\'' +
                ", password='" + password + '\'' +
                ", privilegeLevel=" + privilegeLevel +
                ", status=" + status +
                ", createAt=" + createAt +
                '}';
    }
}
