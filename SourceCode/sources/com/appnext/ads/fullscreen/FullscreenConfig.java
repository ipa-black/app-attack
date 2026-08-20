package com.appnext.ads.fullscreen;

import com.appnext.core.p;
import com.google.android.exoplayer2.ExoPlayer;
import java.io.Serializable;
/* loaded from: classes.dex */
public class FullscreenConfig extends VideoConfig implements Serializable {
    private static final long serialVersionUID = 1;
    public Boolean backButtonCanClose = Boolean.TRUE;
    public long closeDelay;
    public Boolean showClose;

    public FullscreenConfig() {
        this.closeDelay = ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
        this.closeDelay = Integer.parseInt(c.m().get("show_close_time"));
    }

    @Override // com.appnext.core.Configuration
    public boolean isBackButtonCanClose() {
        Boolean bool = this.backButtonCanClose;
        return bool == null ? Boolean.parseBoolean(c.m().get("can_close")) : bool.booleanValue();
    }

    public void setBackButtonCanClose(boolean z) {
        this.backButtonCanClose = Boolean.valueOf(z);
    }

    public boolean isShowClose() {
        Boolean bool = this.showClose;
        if (bool == null) {
            return true;
        }
        return bool.booleanValue();
    }

    protected final Boolean k() {
        return this.showClose;
    }

    public void setShowClose(Boolean bool) {
        this.showClose = bool;
    }

    public void setShowClose(boolean z, long j) {
        this.showClose = Boolean.valueOf(z);
        if (j < 100 || j > 7500) {
            return;
        }
        this.closeDelay = j;
    }

    @Override // com.appnext.ads.fullscreen.VideoConfig, com.appnext.core.Configuration
    protected final p l() {
        return c.m();
    }
}
