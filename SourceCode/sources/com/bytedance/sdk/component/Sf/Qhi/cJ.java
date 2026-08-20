package com.bytedance.sdk.component.Sf.Qhi;

import android.os.HandlerThread;
import com.bytedance.sdk.component.utils.CQU;
import java.lang.ref.WeakReference;
/* compiled from: HandlerWapper.java */
/* loaded from: classes2.dex */
public class cJ extends CQU implements ac {
    private final HandlerThread cJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cJ(HandlerThread handlerThread, CQU.Qhi qhi) {
        super(handlerThread.getLooper(), qhi);
        this.cJ = handlerThread;
    }

    @Override // com.bytedance.sdk.component.Sf.Qhi.ac
    public void Qhi() {
        removeCallbacksAndMessages(null);
        if (this.Qhi != null) {
            this.Qhi.clear();
            this.Qhi = null;
        }
    }

    public void Qhi(CQU.Qhi qhi) {
        this.Qhi = new WeakReference<>(qhi);
    }

    public void cJ() {
        HandlerThread handlerThread = this.cJ;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }
}
