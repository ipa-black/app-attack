package com.bytedance.sdk.component.widget.Qhi;
/* compiled from: BaseAdapterInstance.java */
/* loaded from: classes2.dex */
public class Qhi {
    private static volatile Qhi cJ;
    private volatile cJ Qhi;

    private Qhi() {
    }

    public static Qhi Qhi() {
        if (cJ == null) {
            synchronized (Qhi.class) {
                if (cJ == null) {
                    cJ = new Qhi();
                }
            }
        }
        return cJ;
    }

    public void Qhi(cJ cJVar) {
        this.Qhi = cJVar;
    }

    public cJ cJ() {
        return this.Qhi;
    }
}
