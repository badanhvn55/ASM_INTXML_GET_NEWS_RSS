/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpt.model;

import com.fpt.entity.News;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;

/**
 *
 * @author quanglinh
 */
public class NewsList extends ActionSupport {
    
    private String type;
    
    private List<News> newsList;

    public List<News> getNewsList() {
        return newsList;
    }

    public void setNewsList(List<News> newsList) {
        this.newsList = newsList;
    }

    @Override
    public String execute() throws Exception {
        if(type == null){
            newsList = new RSSProcess().getNews("https://vnexpress.net/rss/tin-moi-nhat.rss");
            return SUCCESS;
        }
        switch(type){
            case "thoi-su":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/thoi-su.rss");
                return SUCCESS;
            case "the-gioi":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/the-gioi.rss");
                return SUCCESS;
            case "kinh-doanh":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/kinh-doanh.rss");
                return SUCCESS;
            case "startup":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/startup.rss");
                return SUCCESS;
            case "giai-tri":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/giai-tri.rss");
                return SUCCESS;
            case "the-thao":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/the-thao.rss");
                return SUCCESS;
            case "phap-luat":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/phap-luat.rss");
                return SUCCESS;
            case "giao-duc":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/giao-duc.rss");
                return SUCCESS;
            case "suc-khoe":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/suc-khoe.rss");
                return SUCCESS;
            case "doi-song":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/doi-song.rss");
                return SUCCESS;
            case "du-lich":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/du-lich.rss");
                return SUCCESS;
            case "khoa-hoc":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/khoa-hoc.rss");
                return SUCCESS;
            case "so-hoa":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/so-hoa.rss");
                return SUCCESS;
            case "xe":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/oto-xe-may.rss");
                return SUCCESS;
            case "cong-dong":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/cong-dong.rss");
                return SUCCESS;
            case "tam-su":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/tam-su.rss");
                return SUCCESS;
            case "cuoi":
                newsList = new RSSProcess().getNews("https://vnexpress.net/rss/cuoi.rss");
                return SUCCESS;
        }
        
        return ERROR;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
    
}
