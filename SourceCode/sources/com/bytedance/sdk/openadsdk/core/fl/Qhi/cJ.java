package com.bytedance.sdk.openadsdk.core.fl.Qhi;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Process;
import android.util.ArrayMap;
import androidx.core.app.NotificationCompat;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AdShowCheckForSec.java */
/* loaded from: classes2.dex */
public class cJ {
    private static volatile cJ Qhi;
    private final ArrayList<String> cJ = new ArrayList<>();
    private final AtomicBoolean ac = new AtomicBoolean(false);
    private long CJ = System.currentTimeMillis();
    private long fl = 0;
    private long Tgh = 0;
    private String ROR = "";
    private String Sf = "";
    private String hm = "";
    private boolean WAv = false;
    private boolean Gm = false;

    public static cJ Qhi(Application application) {
        if (Qhi == null) {
            synchronized (cJ.class) {
                if (Qhi == null) {
                    cJ cJVar = new cJ();
                    Qhi = cJVar;
                    cJVar.WAv = Qhi((Context) application);
                    Qhi.Gm = Qhi(application.getApplicationContext(), "android.permission.SYSTEM_ALERT_WINDOW") == 0;
                    Qhi.Qhi();
                }
            }
        }
        return Qhi;
    }

    private static int Qhi(Context context, String str) {
        try {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        } catch (Throwable unused) {
            return -1;
        }
    }

    private static boolean Qhi(Context context) {
        ApplicationInfo applicationInfo;
        return (context == null || (applicationInfo = context.getApplicationInfo()) == null || (applicationInfo.flags & 1) <= 0) ? false : true;
    }

    public void Qhi(Activity activity) {
        String localClassName = activity.getLocalClassName();
        if (this.cJ.size() == 0) {
            this.ROR = localClassName;
            this.fl = System.currentTimeMillis();
            this.Tgh = System.currentTimeMillis() - this.CJ;
            this.ac.set(false);
        }
        if (!this.cJ.contains(localClassName)) {
            this.cJ.add(localClassName);
        }
        if (localClassName.contains("com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity") || localClassName.contains("com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity")) {
            return;
        }
        this.hm = localClassName;
    }

    public void cJ(Activity activity) {
        String localClassName = activity.getLocalClassName();
        if (this.cJ.contains(localClassName)) {
            this.cJ.remove(localClassName);
        }
        if (this.cJ.size() == 0) {
            this.CJ = System.currentTimeMillis();
            this.ac.set(true);
            this.Sf = localClassName;
        }
    }

    private void Qhi() {
        int size;
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            ArrayMap arrayMap = (ArrayMap) declaredField.get(invoke);
            if (arrayMap != null && (size = arrayMap.size()) > 0) {
                Class<?> cls2 = Class.forName("android.app.ActivityThread$ActivityClientRecord");
                Field declaredField2 = cls2.getDeclaredField("stopped");
                declaredField2.setAccessible(true);
                Field declaredField3 = cls2.getDeclaredField("activity");
                declaredField3.setAccessible(true);
                for (int i = 0; i < size; i++) {
                    Object valueAt = arrayMap.valueAt(i);
                    if (!((Boolean) declaredField2.get(valueAt)).booleanValue()) {
                        String localClassName = ((Activity) declaredField3.get(valueAt)).getLocalClassName();
                        if (!this.cJ.contains(localClassName)) {
                            this.cJ.add(localClassName);
                        }
                    }
                }
                this.ac.set(this.cJ.size() <= 0);
            }
        } catch (Exception unused) {
        }
    }

    public String Qhi(String str, long j, int i) {
        String str2;
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = currentTimeMillis - this.fl;
        long j3 = currentTimeMillis - j;
        int i2 = j3 < 500 ? 1 : 0;
        if (this.ac.get() && this.Gm) {
            i2 |= 2;
        }
        if (!this.ac.get() && this.Tgh >= 5000 && j2 < 1000) {
            i2 = this.Sf.equals(this.hm) ? i2 | 4 : i2 | 8;
        }
        try {
            str2 = new JSONObject().put("rst", i2).put("adtag", str).put("bakdur", this.Tgh).put("rit", i).put("poptime", j2).put("unlocktime", j3).put("bakground", this.ac).put("alert", this.Gm).put(NotificationCompat.CATEGORY_SYSTEM, this.WAv).put("actsize", this.cJ.size()).put("mutiproc", com.bytedance.sdk.openadsdk.multipro.cJ.ac()).toString();
        } catch (JSONException unused) {
            str2 = "";
        }
        this.ROR = "";
        this.Tgh = 0L;
        this.fl = 0L;
        this.CJ = System.currentTimeMillis();
        return str2;
    }
}
