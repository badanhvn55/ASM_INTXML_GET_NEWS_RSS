/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpt.model;

import java.util.List;
import com.fpt.entity.Feed;
import com.fpt.entity.News;

/**
 *
 * @author quanglinh
 */
public class RSSProcess {
    
    public List<News> getNews(String linkPage) {
        RSSFeedParser parser = new RSSFeedParser(linkPage);
        Feed feed = parser.readFeed();
        System.out.println(feed);
        return feed.getMessages();
    }
}
