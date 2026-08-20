package com.bytedance.sdk.component.Tgh.Qhi.ROR;

import android.os.Handler;
import android.os.HandlerThread;
/* compiled from: TimerUtils.java */
/* loaded from: classes2.dex */
public class Qhi {
    private static volatile HandlerThread Qhi = null;
    private static int ac = 3000;
    private static volatile Handler cJ;

    static {
        HandlerThread handlerThread = new HandlerThread("csj_ad_log", 10);
        Qhi = handlerThread;
        handlerThread.start();
    }

    public static Handler Qhi() {
        if (Qhi == null || !Qhi.isAlive()) {
            synchronized (Qhi.class) {
                if (Qhi == null || !Qhi.isAlive()) {
                    HandlerThread handlerThread = new HandlerThread("csj_init_handle", -1);
                    Qhi = handlerThread;
                    handlerThread.start();
                    cJ = new Handler(Qhi.getLooper());
                }
            }
        } else if (cJ == null) {
            synchronized (Qhi.class) {
                if (cJ == null) {
                    cJ = new Handler(Qhi.getLooper());
                }
            }
        }
        return cJ;
    }

    public static int cJ() {
        if (ac <= 0) {
            ac = 3000;
        }
        return ac;
    }
}
