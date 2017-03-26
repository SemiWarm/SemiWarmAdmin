package cn.semiwarm.admin.entity;

import java.io.Serializable;

/**
 * 登录返回结果
 * Created by alibct on 2017/3/25.
 */
public class SignInResponse implements Serializable{
    private Integer success; // 0 | 1 0 表示登录失败,1 表示登录成功
    private String message; // 提示信息
    private Administrator administrator; // 管理员信息

    public Integer getSuccess() {
        return success;
    }

    public void setSuccess(Integer success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Administrator getAdministrator() {
        return administrator;
    }

    public void setAdministrator(Administrator administrator) {
        this.administrator = administrator;
    }

    @Override
    public String toString() {
        return "SignInResponse{" +
                "success=" + success +
                ", message='" + message + '\'' +
                ", administrator=" + administrator +
                '}';
    }
}
