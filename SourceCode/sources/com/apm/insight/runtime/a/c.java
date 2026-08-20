package com.apm.insight.runtime.a;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import com.apm.insight.AttachUserData;
import com.apm.insight.CrashType;
import com.apm.insight.ICommonParams;
import com.apm.insight.l.u;
import com.apm.insight.l.v;
import com.onesignal.OSNotificationFormatHelper;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    protected CrashType f1078a;

    /* renamed from: b  reason: collision with root package name */
    protected Context f1079b;

    /* renamed from: c  reason: collision with root package name */
    protected ICommonParams f1080c = com.apm.insight.i.a().c();

    /* renamed from: d  reason: collision with root package name */
    protected b f1081d;

    /* renamed from: e  reason: collision with root package name */
    protected d f1082e;

    /* loaded from: classes.dex */
    public interface a {
        com.apm.insight.entity.a a(int i, com.apm.insight.entity.a aVar);

        com.apm.insight.entity.a a(int i, com.apm.insight.entity.a aVar, boolean z);

        void a(Throwable th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(CrashType crashType, Context context, b bVar, d dVar) {
        this.f1078a = crashType;
        this.f1079b = context;
        this.f1081d = bVar;
        this.f1082e = dVar;
    }

    private void i(com.apm.insight.entity.a aVar) {
        List<AttachUserData> a2 = com.apm.insight.i.b().a(this.f1078a);
        HashMap hashMap = new HashMap();
        JSONObject optJSONObject = aVar.h().optJSONObject(OSNotificationFormatHelper.PAYLOAD_OS_ROOT_CUSTOM);
        if (optJSONObject == null) {
            optJSONObject = new JSONObject();
            aVar.a(OSNotificationFormatHelper.PAYLOAD_OS_ROOT_CUSTOM, optJSONObject);
        }
        if (a2 != null) {
            for (int i = 0; i < a2.size(); i++) {
                try {
                    AttachUserData attachUserData = a2.get(i);
                    long uptimeMillis = SystemClock.uptimeMillis();
                    com.apm.insight.entity.a.a(optJSONObject, attachUserData.getUserData(this.f1078a));
                    hashMap.put("custom_cost_" + attachUserData.getClass().getName() + "_" + hashMap.size(), Long.valueOf(SystemClock.uptimeMillis() - uptimeMillis));
                } catch (Throwable th) {
                    com.apm.insight.entity.a.a(optJSONObject, th);
                }
            }
        }
        try {
            optJSONObject.put("fd_count", com.apm.insight.l.g.a());
        } catch (Throwable unused) {
        }
        List<AttachUserData> b2 = com.apm.insight.i.b().b(this.f1078a);
        if (b2 != null) {
            JSONObject optJSONObject2 = aVar.h().optJSONObject("custom_long");
            if (optJSONObject2 == null) {
                optJSONObject2 = new JSONObject();
                aVar.a("custom_long", optJSONObject2);
            }
            for (int i2 = 0; i2 < b2.size(); i2++) {
                try {
                    AttachUserData attachUserData2 = b2.get(i2);
                    long uptimeMillis2 = SystemClock.uptimeMillis();
                    com.apm.insight.entity.a.a(optJSONObject2, attachUserData2.getUserData(this.f1078a));
                    hashMap.put("custom_cost_" + attachUserData2.getClass().getName() + "_" + hashMap.size(), Long.valueOf(SystemClock.uptimeMillis() - uptimeMillis2));
                } catch (Throwable th2) {
                    com.apm.insight.entity.a.a(optJSONObject2, th2);
                }
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            try {
                optJSONObject.put((String) entry.getKey(), entry.getValue());
            } catch (Throwable unused2) {
            }
        }
    }

    public com.apm.insight.entity.a a(int i, com.apm.insight.entity.a aVar) {
        if (aVar == null) {
            aVar = new com.apm.insight.entity.a();
        }
        if (i == 0) {
            b(aVar);
        } else if (i == 1) {
            c(aVar);
            i(aVar);
        } else if (i == 2) {
            e(aVar);
        } else if (i == 4) {
            f(aVar);
        } else if (i == 5) {
            d(aVar);
        }
        return aVar;
    }

    public com.apm.insight.entity.a a(com.apm.insight.entity.a aVar) {
        return aVar;
    }

    public com.apm.insight.entity.a a(com.apm.insight.entity.a aVar, a aVar2, boolean z) {
        if (aVar == null) {
            aVar = new com.apm.insight.entity.a();
        }
        com.apm.insight.entity.a aVar3 = aVar;
        for (int i = 0; i < b(); i++) {
            long uptimeMillis = SystemClock.uptimeMillis();
            if (aVar2 != null) {
                try {
                    aVar3 = aVar2.a(i, aVar3);
                } catch (Throwable th) {
                    aVar2.a(th);
                }
            }
            try {
                aVar3 = a(i, aVar3);
            } catch (Throwable th2) {
                if (aVar2 != null) {
                    aVar2.a(th2);
                }
            }
            if (aVar2 != null) {
                try {
                    boolean z2 = true;
                    if (i != b() - 1) {
                        z2 = false;
                    }
                    aVar3 = aVar2.a(i, aVar3, z2);
                } catch (Throwable th3) {
                    aVar2.a(th3);
                }
                if (z) {
                    if (i != 0) {
                        aVar.c(aVar3.h());
                    } else {
                        aVar = aVar3;
                    }
                    aVar3 = new com.apm.insight.entity.a();
                }
            }
            aVar.b("step_cost_" + i, String.valueOf(SystemClock.uptimeMillis() - uptimeMillis));
        }
        return a(aVar);
    }

    protected boolean a() {
        return false;
    }

    public int b() {
        return 6;
    }

    public com.apm.insight.entity.a b(com.apm.insight.entity.a aVar) {
        aVar.a(com.apm.insight.i.p(), com.apm.insight.i.q());
        if (com.apm.insight.i.m()) {
            aVar.a("is_mp", (Object) 1);
        }
        try {
            aVar.a(this.f1080c.getPluginInfo());
        } catch (Throwable th) {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("Data fetch failed since source misstake:\n" + u.a(th), 0);
                aVar.a(hashMap);
            } catch (Throwable unused) {
            }
        }
        aVar.b(com.apm.insight.i.o());
        aVar.a("process_name", com.apm.insight.l.a.c(com.apm.insight.i.g()));
        return aVar;
    }

    public com.apm.insight.entity.a c(com.apm.insight.entity.a aVar) {
        b bVar;
        if (!com.apm.insight.l.a.b(com.apm.insight.i.g())) {
            aVar.a("remote_process", (Object) 1);
        }
        aVar.a("pid", Integer.valueOf(Process.myPid()));
        aVar.a(com.apm.insight.i.j());
        if (c() && (bVar = this.f1081d) != null) {
            aVar.a(bVar);
        }
        try {
            aVar.a(this.f1080c.getPatchInfo());
        } catch (Throwable th) {
            try {
                aVar.a(Arrays.asList("Data fetch failed since source misstake:\n" + u.a(th)));
            } catch (Throwable unused) {
            }
        }
        String k = com.apm.insight.i.k();
        if (k != null) {
            aVar.a("business", (Object) k);
        }
        aVar.a("is_background", Boolean.valueOf(!com.apm.insight.l.a.a(this.f1079b)));
        return aVar;
    }

    protected boolean c() {
        return true;
    }

    public com.apm.insight.entity.a d(com.apm.insight.entity.a aVar) {
        if (d()) {
            aVar.b(v.a(this.f1079b));
        }
        return aVar;
    }

    protected boolean d() {
        return true;
    }

    public com.apm.insight.entity.a e(com.apm.insight.entity.a aVar) {
        d dVar = this.f1082e;
        aVar.a("battery", Integer.valueOf(dVar == null ? 0 : dVar.a()));
        aVar.c(com.apm.insight.i.b().a());
        return aVar;
    }

    public com.apm.insight.entity.a f(com.apm.insight.entity.a aVar) {
        if (a()) {
            h(aVar);
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(com.apm.insight.entity.a aVar) {
    }

    protected void h(com.apm.insight.entity.a aVar) {
    }
}
