package com.apm.insight.b;

import android.app.ActivityManager;
import android.content.Context;
import android.os.FileObserver;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import com.apm.insight.l.q;
import com.apm.insight.l.u;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static String f714a = null;

    /* renamed from: b  reason: collision with root package name */
    private static long f715b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f716c = false;

    /* renamed from: d  reason: collision with root package name */
    private static FileObserver f717d;

    /* renamed from: e  reason: collision with root package name */
    private static ActivityManager.ProcessErrorStateInfo f718e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Context context, int i) {
        if (q.a(256)) {
            f716c = false;
            return "TEST_ANR_INFO";
        } else if (SystemClock.uptimeMillis() - f715b < 5000) {
            return null;
        } else {
            try {
                ActivityManager.ProcessErrorStateInfo a2 = com.apm.insight.l.a.a(context, i);
                if (a2 != null && Process.myPid() == a2.pid) {
                    ActivityManager.ProcessErrorStateInfo processErrorStateInfo = f718e;
                    if (processErrorStateInfo == null || !a.a(processErrorStateInfo, a2)) {
                        f718e = a2;
                        f714a = null;
                        f715b = SystemClock.uptimeMillis();
                        f716c = false;
                        return a.a(a2);
                    }
                    return null;
                }
            } catch (Throwable unused) {
            }
            String str = f714a;
            if (str != null) {
                f716c = true;
                f714a = null;
                f715b = SystemClock.uptimeMillis();
                return str;
            }
            return null;
        }
    }

    public static JSONObject a(boolean z) {
        try {
            StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("thread_number", 1);
            jSONObject.put("mainStackFromTrace", u.a(stackTrace));
            return jSONObject;
        } catch (Throwable th) {
            com.apm.insight.c.a().a("NPTH_CATCH", th);
            return null;
        }
    }

    public static void a(final String str, final com.apm.insight.f fVar) {
        FileObserver fileObserver = f717d;
        if (fileObserver != null) {
            fileObserver.stopWatching();
        }
        FileObserver fileObserver2 = new FileObserver(str, 136) { // from class: com.apm.insight.b.d.1
            @Override // android.os.FileObserver
            public void onEvent(int i, String str2) {
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                try {
                    String unused = d.f714a = fVar.a(str, str2);
                } catch (Throwable th) {
                    com.apm.insight.c.a().a("NPTH_CATCH", th);
                }
            }
        };
        f717d = fileObserver2;
        fileObserver2.startWatching();
    }

    public static boolean a() {
        return f716c;
    }

    public static void b() {
        f718e = null;
    }
}
