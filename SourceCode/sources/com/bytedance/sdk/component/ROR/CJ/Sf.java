package com.bytedance.sdk.component.ROR.CJ;
/* compiled from: Logger.java */
/* loaded from: classes2.dex */
public class Sf {
    private Qhi Qhi;
    private cJ cJ;

    /* compiled from: Logger.java */
    /* loaded from: classes2.dex */
    public enum Qhi {
        DEBUG,
        INFO,
        ERROR,
        OFF
    }

    /* compiled from: Logger.java */
    /* loaded from: classes2.dex */
    public interface cJ {
    }

    private Sf() {
        this.Qhi = Qhi.OFF;
        this.cJ = new ROR();
    }

    /* compiled from: Logger.java */
    /* loaded from: classes2.dex */
    private static class ac {
        private static final Sf Qhi = new Sf();
    }

    public static void Qhi(Qhi qhi) {
        synchronized (Sf.class) {
            ac.Qhi.Qhi = qhi;
        }
    }
}
