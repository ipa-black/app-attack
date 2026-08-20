package com.appsgeyser.multiTabApp.configuration;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class UrlBarMenuButton implements Serializable {
    private static final long serialVersionUID = 1;
    private UrlBarMenuButtonTypes type;

    /* loaded from: classes2.dex */
    public enum UrlBarMenuButtonTypes {
        BACK,
        FORWARD,
        REFRESH,
        REQUEST_DESKTOP,
        ADD_TO_HOME,
        HOME,
        URL_BUTTON,
        LINK,
        ICON,
        DOWNLOADS_LIST
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UrlBarMenuButton(UrlBarMenuButtonTypes urlBarMenuButtonTypes) {
        this.type = urlBarMenuButtonTypes;
    }

    public UrlBarMenuButtonTypes getType() {
        return this.type;
    }

    public void setType(UrlBarMenuButtonTypes urlBarMenuButtonTypes) {
        this.type = urlBarMenuButtonTypes;
    }
}
