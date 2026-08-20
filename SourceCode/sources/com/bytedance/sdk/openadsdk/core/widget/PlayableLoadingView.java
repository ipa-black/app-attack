package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.core.model.tP;
/* loaded from: classes2.dex */
public class PlayableLoadingView extends PAGFullScreenLoadingLayout {
    private long Qhi;
    private long cJ;

    @Override // com.bytedance.sdk.openadsdk.core.widget.PAGFullScreenLoadingLayout
    protected boolean Qhi() {
        return false;
    }

    public PlayableLoadingView(Context context) {
        super(context);
        setVisibility(8);
        setClickable(true);
    }

    public void ac() {
        setVisibility(8);
        if (this.Qhi != 0) {
            this.cJ = SystemClock.elapsedRealtime();
        }
    }

    public void cJ(tP tPVar, int i) {
        if (isShown()) {
            return;
        }
        cJ();
        setVisibility(0);
        this.Qhi = SystemClock.elapsedRealtime();
        Qhi(tPVar, i);
    }

    public boolean CJ() {
        return this.Qhi > 0 && this.cJ > 0;
    }

    public long getDisplayDuration() {
        if (this.Qhi == 0) {
            return 0L;
        }
        if (this.cJ == 0) {
            this.cJ = SystemClock.elapsedRealtime();
        }
        return this.cJ - this.Qhi;
    }
}
