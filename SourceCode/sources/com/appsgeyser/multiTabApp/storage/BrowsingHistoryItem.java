package com.appsgeyser.multiTabApp.storage;
/* loaded from: classes2.dex */
public class BrowsingHistoryItem {
    private String date;
    private String id;
    private String title;
    private String url;

    public BrowsingHistoryItem(String str, String str2, String str3, String str4) {
        this.id = str;
        this.date = str2;
        this.title = str3;
        this.url = str4;
    }

    public String getDate() {
        return this.date;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }
}
