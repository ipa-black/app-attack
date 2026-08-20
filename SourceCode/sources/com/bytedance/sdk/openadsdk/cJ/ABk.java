package com.bytedance.sdk.openadsdk.cJ;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.explorestack.iab.vast.VastError;
import com.google.android.exoplayer2.PlaybackException;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: OpenAppSuccEvent.java */
/* loaded from: classes2.dex */
public class ABk {
    private static volatile ABk Qhi;
    private Map<String, Object> Tgh;
    private final Handler ac;
    private HandlerThread cJ;
    private final Executor CJ = Executors.newCachedThreadPool();
    private cJ fl = cJ.Qhi();

    public static ABk Qhi() {
        if (Qhi == null) {
            synchronized (ABk.class) {
                if (Qhi == null) {
                    Qhi = new ABk();
                }
            }
        }
        return Qhi;
    }

    public ABk Qhi(Map<String, Object> map) {
        this.Tgh = map;
        return Qhi();
    }

    private ABk() {
        if (this.cJ == null) {
            HandlerThread handlerThread = new HandlerThread("OpenAppSuccEvent_HandlerThread", 10);
            this.cJ = handlerThread;
            handlerThread.start();
        }
        this.ac = new Handler(this.cJ.getLooper(), new Handler.Callback() { // from class: com.bytedance.sdk.openadsdk.cJ.ABk.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what == 100) {
                    Qhi qhi = (message.obj == null || !(message.obj instanceof Qhi)) ? null : (Qhi) message.obj;
                    if (qhi != null) {
                        ABk.this.cJ(qhi);
                        return true;
                    }
                    return true;
                }
                return true;
            }
        });
    }

    public void Qhi(tP tPVar, String str) {
        Message obtainMessage = this.ac.obtainMessage();
        obtainMessage.what = 100;
        obtainMessage.obj = Qhi.Qhi(tPVar, str, this.Tgh);
        obtainMessage.sendToTarget();
    }

    private void Qhi(Qhi qhi) {
        if (qhi == null) {
            return;
        }
        qhi.cJ();
        if (qhi.Qhi() * this.fl.Qhi > this.fl.cJ) {
            ac(qhi.Qhi(false));
            return;
        }
        Message obtainMessage = this.ac.obtainMessage();
        obtainMessage.what = 100;
        obtainMessage.obj = qhi;
        this.ac.sendMessageDelayed(obtainMessage, this.fl.Qhi);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(Qhi qhi) {
        if (qhi == null) {
            return;
        }
        boolean CJ = com.bytedance.sdk.openadsdk.core.pA.Qhi().CJ();
        boolean Qhi2 = com.bytedance.sdk.openadsdk.core.pA.Qhi().Qhi(true);
        if (CJ || !Qhi2) {
            if (qhi.fl == null) {
                qhi.fl = new HashMap();
            }
            qhi.fl.put("is_background", Boolean.valueOf(CJ));
            qhi.fl.put("has_focus", Boolean.valueOf(Qhi2));
            ac(qhi.Qhi(true));
            return;
        }
        Qhi(qhi);
    }

    private void ac(Qhi qhi) {
        if (qhi == null) {
            return;
        }
        this.CJ.execute(qhi);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: OpenAppSuccEvent.java */
    /* loaded from: classes2.dex */
    public static class Qhi implements Serializable, Runnable {
        public String CJ;
        public tP ac;
        public Map<String, Object> fl;
        public final AtomicInteger Qhi = new AtomicInteger(0);
        public final AtomicBoolean cJ = new AtomicBoolean(false);

        public static Qhi Qhi(tP tPVar, String str, Map<String, Object> map) {
            return new Qhi(tPVar, str, map);
        }

        public Qhi(tP tPVar, String str, Map<String, Object> map) {
            this.ac = tPVar;
            this.CJ = str;
            this.fl = map;
        }

        public Qhi Qhi(boolean z) {
            this.cJ.set(z);
            return this;
        }

        public int Qhi() {
            return this.Qhi.get();
        }

        public void cJ() {
            this.Qhi.incrementAndGet();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.ac == null || TextUtils.isEmpty(this.CJ)) {
                return;
            }
            String str = this.cJ.get() ? "dpl_success" : "dpl_failed";
            if (this.fl == null) {
                this.fl = new HashMap();
            }
            tP tPVar = this.ac;
            if (tPVar != null && tPVar.nR() == 0) {
                Map<String, Object> map = this.fl;
                tP tPVar2 = this.ac;
                map.put("auto_click", Boolean.valueOf((tPVar2 == null || tPVar2.CJ()) ? false : true));
            }
            this.fl.put("lifeCycleInit", Boolean.valueOf(com.bytedance.sdk.openadsdk.core.pA.Qhi().ac()));
            ac.Qhi(this.ac, this.CJ, str, this.fl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: OpenAppSuccEvent.java */
    /* loaded from: classes2.dex */
    public static class cJ {
        public int Qhi = VastError.ERROR_CODE_GENERAL_WRAPPER;
        public int cJ = PlaybackException.ERROR_CODE_DRM_UNSPECIFIED;

        private cJ() {
        }

        public static cJ Qhi() {
            return new cJ();
        }
    }
}
