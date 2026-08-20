package com.apm.insight.i;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import com.apm.insight.CrashType;
import com.apm.insight.Npth;
import com.apm.insight.b.g;
import com.apm.insight.b.k;
import com.apm.insight.g.c;
import com.apm.insight.i;
import com.apm.insight.l.h;
import com.apm.insight.l.n;
import com.apm.insight.l.q;
import com.apm.insight.l.u;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.a.c;
import com.apm.insight.runtime.a.f;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import java.io.File;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b implements c {

    /* renamed from: a  reason: collision with root package name */
    private Context f892a;

    public b(Context context) {
        this.f892a = context;
    }

    private synchronized void b(final long j, final Thread thread, final Throwable th, final String str, File file, final String str2, final boolean z) {
        final File file2 = new File(n.a(this.f892a), str);
        com.apm.insight.g.a.a().a(file2.getName());
        file2.mkdirs();
        h.f(file2);
        final boolean c2 = u.c(th);
        com.apm.insight.entity.a a2 = f.a().a(CrashType.LAUNCH, null, new c.a() { // from class: com.apm.insight.i.b.1

            /* renamed from: a  reason: collision with root package name */
            long f893a = 0;

            @Override // com.apm.insight.runtime.a.c.a
            public com.apm.insight.entity.a a(int i, com.apm.insight.entity.a aVar) {
                String str3;
                String valueOf;
                this.f893a = SystemClock.uptimeMillis();
                if (i == 0) {
                    aVar.a("stack", (Object) u.a(th));
                    aVar.a("event_type", "start_crash");
                    aVar.a("isOOM", Boolean.valueOf(c2));
                    aVar.a("crash_time", Long.valueOf(j));
                    aVar.a("launch_mode", Integer.valueOf(com.apm.insight.runtime.a.b.b()));
                    aVar.a("launch_time", Long.valueOf(com.apm.insight.runtime.a.b.c()));
                    String str4 = str2;
                    if (str4 != null) {
                        aVar.a("crash_md5", (Object) str4);
                        aVar.a("crash_md5", str2);
                        boolean z2 = z;
                        if (z2) {
                            str3 = "has_ignore";
                            valueOf = String.valueOf(z2);
                            aVar.a(str3, valueOf);
                        }
                    }
                } else if (i == 1) {
                    aVar.a("timestamp", Long.valueOf(j));
                    aVar.a("main_process", Boolean.valueOf(com.apm.insight.l.a.b(b.this.f892a)));
                    aVar.a("crash_type", CrashType.JAVA);
                    Thread thread2 = thread;
                    aVar.a("crash_thread_name", (Object) (thread2 != null ? thread2.getName() : ""));
                    aVar.a(ScarConstants.TOKEN_ID_KEY, Integer.valueOf(Process.myTid()));
                    aVar.a("crash_after_crash", Npth.hasCrashWhenJavaCrash() ? "true" : "false");
                    aVar.a("crash_after_native", NativeImpl.d() ? "true" : "false");
                    com.apm.insight.g.a.a().a(thread, th, true, aVar);
                } else if (i == 2) {
                    if (c2) {
                        com.apm.insight.l.a.a(b.this.f892a, aVar.h());
                    }
                    aVar.a("launch_did", (Object) a.a(b.this.f892a));
                    JSONArray c3 = g.b().c();
                    long uptimeMillis = SystemClock.uptimeMillis();
                    JSONObject a3 = g.b().a(uptimeMillis).a();
                    JSONArray a4 = k.a(100, uptimeMillis);
                    aVar.a("history_message", (Object) c3);
                    aVar.a("current_message", a3);
                    aVar.a("pending_messages", (Object) a4);
                    aVar.a("disable_looper_monitor", String.valueOf(com.apm.insight.runtime.a.d()));
                    valueOf = String.valueOf(com.apm.insight.c.b.a());
                    str3 = "npth_force_apm_crash";
                    aVar.a(str3, valueOf);
                } else if (i == 3) {
                    JSONObject b2 = u.b(Thread.currentThread().getName());
                    if (b2 != null) {
                        aVar.a("all_thread_stacks", b2);
                    }
                    aVar.a("logcat", (Object) com.apm.insight.runtime.k.b(i.f()));
                } else if (i != 4) {
                    if (i == 5) {
                        aVar.a("crash_uuid", (Object) str);
                    }
                } else if (!c2) {
                    com.apm.insight.l.a.a(b.this.f892a, aVar.h());
                }
                return aVar;
            }

            @Override // com.apm.insight.runtime.a.c.a
            public com.apm.insight.entity.a a(int i, com.apm.insight.entity.a aVar, boolean z2) {
                if (q.a(q.b(i))) {
                    return aVar;
                }
                try {
                    h.a(new File(file2, file2.getName() + "." + i), aVar.h(), false);
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                return aVar;
            }

            @Override // com.apm.insight.runtime.a.c.a
            public void a(Throwable th2) {
            }
        }, true);
        long currentTimeMillis = System.currentTimeMillis() - j;
        a2.a("crash_type", "normal");
        a2.b("crash_cost", String.valueOf(currentTimeMillis));
        a2.a("crash_cost", String.valueOf(currentTimeMillis / 1000));
        if (q.a(4)) {
            return;
        }
        if (!Npth.isStopUpload()) {
            if (!q.a(2048)) {
            }
        }
    }

    @Override // com.apm.insight.g.c
    public void a(long j, Thread thread, Throwable th, String str, File file, String str2, boolean z) {
        b(j, thread, th, str, file, str2, z);
    }

    @Override // com.apm.insight.g.c
    public boolean a(Throwable th) {
        return true;
    }
}
