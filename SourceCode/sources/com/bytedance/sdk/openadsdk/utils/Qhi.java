package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Window;
import com.bytedance.sdk.openadsdk.ApmHelper;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: ActivityLifecycleListener.java */
/* loaded from: classes2.dex */
public class Qhi implements Application.ActivityLifecycleCallbacks {
    public static boolean Qhi = false;
    public static long ac;
    public static long cJ;
    private volatile WeakReference<Activity> ABk;
    private final AtomicBoolean CJ = new AtomicBoolean(false);
    private final RunnableC0242Qhi fl = new RunnableC0242Qhi();
    private final fl Tgh = new fl();
    private final ac ROR = new ac();
    private final cJ Sf = new cJ();
    private int hm = 0;
    private volatile CopyOnWriteArrayList<WeakReference<com.bytedance.sdk.component.adexpress.Qhi>> WAv = new CopyOnWriteArrayList<>();
    private HandlerThread Gm = null;
    private Handler zc = null;
    private final LinkedList<Activity> iMK = new LinkedList<>();

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public Qhi() {
        ac();
    }

    private void ac() {
        HandlerThread handlerThread = new HandlerThread("lifecycle", 10);
        this.Gm = handlerThread;
        handlerThread.start();
        this.zc = new Handler(this.Gm.getLooper());
    }

    private void Qhi(Runnable runnable) {
        if (!this.Gm.isAlive()) {
            ac();
        }
        this.zc.postDelayed(runnable, 1000L);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.iMK.addFirst(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.hm++;
        this.zc.removeCallbacks(this.Sf);
        if (this.CJ.get()) {
            Qhi(this.Sf);
        }
        this.CJ.set(false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Qhi(this.Tgh);
        if (!Qhi) {
            cJ = System.currentTimeMillis();
            Qhi = true;
        }
        this.ABk = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        int i = this.hm - 1;
        this.hm = i;
        if (i < 0) {
            this.hm = 0;
        }
        if (ApmHelper.isIsInit()) {
            Qhi(this.ROR);
        }
    }

    /* compiled from: ActivityLifecycleListener.java */
    /* renamed from: com.bytedance.sdk.openadsdk.utils.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static class RunnableC0242Qhi implements Runnable {
        RunnableC0242Qhi() {
        }

        @Override // java.lang.Runnable
        public void run() {
            lG.ac(new com.bytedance.sdk.component.Sf.hm("reportPvFromBackGround") { // from class: com.bytedance.sdk.openadsdk.utils.Qhi.Qhi.1
                @Override // java.lang.Runnable
                public void run() {
                    ApmHelper.reportPvFromBackGround();
                }
            });
        }
    }

    /* compiled from: ActivityLifecycleListener.java */
    /* loaded from: classes2.dex */
    class fl implements Runnable {
        fl() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.openadsdk.core.iMK.cJ().removeMessages(1001);
            if (com.bytedance.sdk.openadsdk.core.HzH.Qhi() == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.Tgh.Qhi.cJ();
        }
    }

    /* compiled from: ActivityLifecycleListener.java */
    /* loaded from: classes2.dex */
    class ac implements Runnable {
        ac() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ApmHelper.isIsInit()) {
                Handler cJ = com.bytedance.sdk.openadsdk.core.iMK.cJ();
                Message obtain = Message.obtain(cJ, Qhi.this.fl);
                obtain.what = 1001;
                cJ.sendMessageDelayed(obtain, 30000L);
            }
        }
    }

    /* compiled from: ActivityLifecycleListener.java */
    /* loaded from: classes2.dex */
    private static class cJ implements Runnable {
        private cJ() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.openadsdk.CJ.MQ.Qhi().cJ();
            if (com.bytedance.sdk.openadsdk.core.settings.HzH.YD().HUk().Qhi() || !com.bytedance.sdk.component.utils.hpZ.Sf(com.bytedance.sdk.openadsdk.core.HzH.Qhi())) {
                return;
            }
            com.bytedance.sdk.openadsdk.cJ.Qhi.fl.Qhi(com.bytedance.sdk.openadsdk.core.zc.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi()));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (this.hm <= 0) {
            this.CJ.set(true);
        }
        if (Qhi()) {
            Qhi = false;
            com.bytedance.sdk.openadsdk.core.iMK.cJ.set(false);
            ac = System.currentTimeMillis();
            Qhi(this.Sf);
        }
        Qhi(new Tgh(cJ, ac, Qhi()));
    }

    /* compiled from: ActivityLifecycleListener.java */
    /* loaded from: classes2.dex */
    public class Tgh implements Runnable {
        private boolean CJ;
        private long ac;
        private long cJ;

        public Tgh(long j, long j2, boolean z) {
            this.cJ = j;
            this.ac = j2;
            this.CJ = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.CJ) {
                com.bytedance.sdk.openadsdk.Gm.ac.Qhi().Qhi(this.cJ / 1000, this.ac / 1000);
            }
            Qhi.this.CJ();
        }
    }

    public void Qhi(com.bytedance.sdk.component.adexpress.Qhi qhi) {
        this.WAv.add(new WeakReference<>(qhi));
    }

    public boolean cJ(com.bytedance.sdk.component.adexpress.Qhi qhi) {
        return this.WAv.remove(new WeakReference(qhi));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (this.WAv != null && this.WAv.size() > 0) {
            Iterator<WeakReference<com.bytedance.sdk.component.adexpress.Qhi>> it = this.WAv.iterator();
            while (it.hasNext()) {
                WeakReference<com.bytedance.sdk.component.adexpress.Qhi> next = it.next();
                if (next != null && next.get() != null) {
                    try {
                        next.get().Qhi(activity);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        if (this.ABk != null && this.ABk.get() == activity) {
            this.ABk = null;
        }
        this.iMK.remove(activity);
    }

    public boolean Qhi() {
        return this.CJ.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void CJ() {
        com.bytedance.sdk.openadsdk.cJ.Qhi.Qhi.Qhi();
    }

    public boolean Qhi(boolean z) {
        Activity activity;
        Window window;
        return (this.ABk == null || (activity = this.ABk.get()) == null || (window = activity.getWindow()) == null) ? z : window.getDecorView().hasWindowFocus();
    }

    public Activity cJ() {
        if (this.iMK.isEmpty()) {
            return null;
        }
        return this.iMK.getFirst();
    }
}
