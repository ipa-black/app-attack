package com.appnext.ads.fullscreen;

import android.content.Context;
/* loaded from: classes.dex */
public class FullScreenVideo extends Video {
    private long closeDelay;
    private boolean showClose;

    /* JADX INFO: Access modifiers changed from: protected */
    public FullScreenVideo(Context context, FullScreenVideo fullScreenVideo) {
        super(context, fullScreenVideo);
        this.showClose = true;
        setShowClose(fullScreenVideo.isShowClose());
        setCloseDelay(fullScreenVideo.getCloseDelay());
        setBackButtonCanClose(fullScreenVideo.isBackButtonCanClose());
    }

    public FullScreenVideo(Context context, String str) {
        super(context, 1, str);
        this.showClose = true;
        this.closeDelay = Integer.parseInt(getConfig().get("show_close_time"));
    }

    public FullScreenVideo(Context context, String str, FullscreenConfig fullscreenConfig) {
        super(context, 1, str, fullscreenConfig);
        this.showClose = true;
        if (fullscreenConfig != null) {
            setBackButtonCanClose(fullscreenConfig.isBackButtonCanClose());
            if (fullscreenConfig.showClose != null) {
                setShowClose(fullscreenConfig.isShowClose());
            }
            setCloseDelay(fullscreenConfig.closeDelay);
        }
    }

    public boolean isShowClose() {
        return this.showClose;
    }

    public void setShowClose(boolean z) {
        this.showClose = z;
    }

    public void setShowClose(boolean z, long j) {
        this.showClose = z;
        if (j < 100 || j > 7500) {
            return;
        }
        this.closeDelay = j;
    }

    public long getCloseDelay() {
        return this.closeDelay;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.ads.fullscreen.Video
    public c getConfig() {
        return c.m();
    }

    @Override // com.appnext.core.Ad
    public String getAUID() {
        return "700";
    }

    protected void setCloseDelay(long j) {
        this.closeDelay = j;
    }
}
