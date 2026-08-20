package com.apm.insight.a;

import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.runtime.p;
/* loaded from: classes.dex */
public class a implements ICrashCallback {

    /* renamed from: d  reason: collision with root package name */
    private static volatile a f689d;

    /* renamed from: a  reason: collision with root package name */
    private volatile String f690a;

    /* renamed from: b  reason: collision with root package name */
    private volatile b f691b;

    /* renamed from: c  reason: collision with root package name */
    private volatile c f692c;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f693e = false;

    private a() {
    }

    public static a a() {
        if (f689d == null) {
            synchronized (a.class) {
                if (f689d == null) {
                    f689d = new a();
                }
            }
        }
        return f689d;
    }

    public void a(CrashType crashType, long j, String str) {
    }

    public void a(String str) {
    }

    public void a(String str, b bVar, c cVar) {
        this.f690a = str;
        this.f691b = bVar;
        this.f692c = cVar;
        if (this.f693e) {
            return;
        }
        this.f693e = true;
        p.b().a(new Runnable() { // from class: com.apm.insight.a.a.1
            @Override // java.lang.Runnable
            public void run() {
            }
        });
    }

    public void b() {
    }

    @Override // com.apm.insight.ICrashCallback
    public void onCrash(CrashType crashType, String str, Thread thread) {
        crashType.equals(CrashType.NATIVE);
    }
}
