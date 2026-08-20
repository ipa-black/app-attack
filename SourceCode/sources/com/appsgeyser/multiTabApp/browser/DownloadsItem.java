package com.appsgeyser.multiTabApp.browser;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class DownloadsItem implements Serializable {
    private Long date;
    private String file_path;
    private long id_d;
    private String link_d;
    private String name;
    private Integer progress = 0;
    private Status status = Status.InProgress;
    private String description = "";

    /* loaded from: classes2.dex */
    public enum Status {
        Ok,
        InProgress,
        Fail
    }

    public String getName() {
        return this.name;
    }

    public DownloadsItem(long j, String str, String str2) {
        this.id_d = j;
        this.link_d = str2;
        this.name = str;
    }

    public DownloadsItem(String str) {
        this.name = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public Integer getProgress() {
        return this.progress;
    }

    public void setProgress(Integer num) {
        this.progress = num;
    }

    public Status getStatus() {
        return this.status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public long getId_d() {
        return this.id_d;
    }

    public void setId_d(long j) {
        this.id_d = j;
    }

    public String getLink_d() {
        return this.link_d;
    }

    public void setLink_d(String str) {
        this.link_d = str;
    }

    public String getFile_path() {
        return this.file_path;
    }

    public void setFile_path(String str) {
        this.file_path = str;
    }

    public Long getDate() {
        return this.date;
    }

    public void setDate(Long l) {
        this.date = l;
    }
}
