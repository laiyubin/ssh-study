package com.lai.utils;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 13-10-20
 * Time: 下午4:34
 * To change this template use File | Settings | File Templates.
 */
public class Page<T> {
    private int pageSize=10;
    private int currentPage=1;
    private long allCount;
    private int allPage;
    private List<T> result;

    public long getAllCount() {
        return allCount;
    }

    public void setAllCount(long allCount) {
        this.allCount = allCount;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public List<T> getResult() {
        return result;
    }

    public void setResult(List<T> result) {
        this.result = result;
    }

    public int getAllPage() {
        return (int) allCount / pageSize + 1;
    }

    public int getCurrent(){
        return pageSize*(currentPage-1)   ;
    }

}
