package com.miaoshaProject.error;

/**
 * Created by Enzo Cotter on 2019/4/18.
 */
public interface CommonError {
    public int getErrCode();
    public String getErrMsg();
    public CommonError setErrMsg(String errMsg);
}
