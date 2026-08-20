package com.bytedance.sdk.openadsdk.core;

import android.app.Application;
import android.content.Context;
import android.view.ViewConfiguration;
import java.lang.reflect.Method;
/* compiled from: InternalContainer.java */
/* loaded from: classes2.dex */
public class HzH {
    private static volatile Context Qhi = null;
    private static int ac = -1;
    private static volatile tP<com.bytedance.sdk.openadsdk.cJ.Qhi> cJ;

    public static Context Qhi() {
        if (Qhi == null) {
            cJ(null);
        }
        return Qhi;
    }

    public static Context Qhi(Context context) {
        if (context == null) {
            context = Qhi();
        }
        if (context instanceof Application) {
            return context;
        }
        if (context != null) {
            return context.getApplicationContext();
        }
        return null;
    }

    public static void cJ(Context context) {
        if (Qhi == null) {
            synchronized (HzH.class) {
                if (Qhi == null) {
                    if (context != null) {
                        Qhi = context;
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            Qhi = applicationContext;
                        }
                        return;
                    }
                    try {
                        Application Qhi2 = Qhi.Qhi();
                        if (Qhi2 != null) {
                            Qhi = Qhi2;
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    public static int cJ() {
        Context Qhi2;
        if (ac < 0 && (Qhi2 = Qhi()) != null) {
            ac = ViewConfiguration.get(Qhi2).getScaledTouchSlop();
        }
        return ac;
    }

    public static tP<com.bytedance.sdk.openadsdk.cJ.Qhi> ac() {
        if (cJ == null) {
            synchronized (HzH.class) {
                if (cJ == null) {
                    cJ = new MQ(Qhi);
                }
            }
        }
        return cJ;
    }

    public static com.bytedance.sdk.openadsdk.core.settings.ROR CJ() {
        return com.bytedance.sdk.openadsdk.core.settings.HzH.YD();
    }

    public static com.bytedance.sdk.openadsdk.Gm.ac.cJ fl() {
        if (!com.bytedance.sdk.openadsdk.core.settings.ABk.Qhi()) {
            return com.bytedance.sdk.openadsdk.Gm.ac.ac.Qhi();
        }
        return com.bytedance.sdk.openadsdk.cJ.Qhi.fl.Qhi();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: InternalContainer.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        private static volatile Application Qhi;

        public static Application Qhi() {
            return Qhi;
        }

        static {
            try {
                Object cJ = cJ();
                Qhi = (Application) cJ.getClass().getMethod("getApplication", new Class[0]).invoke(cJ, new Object[0]);
                com.bytedance.sdk.component.utils.ABk.Qhi("MyApplication", "application get success");
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ABk.Qhi("MyApplication", "application get failed", th);
            }
        }

        private static Object cJ() {
            try {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]);
                method.setAccessible(true);
                return method.invoke(null, new Object[0]);
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ABk.Qhi("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th);
                return null;
            }
        }
    }
}
