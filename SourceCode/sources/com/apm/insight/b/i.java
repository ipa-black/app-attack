package com.apm.insight.b;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Printer;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static volatile boolean f773a;

    /* renamed from: b  reason: collision with root package name */
    private static Printer f774b;

    /* renamed from: d  reason: collision with root package name */
    private static e f776d;

    /* renamed from: e  reason: collision with root package name */
    private static volatile a f777e;

    /* renamed from: c  reason: collision with root package name */
    private static final CopyOnWriteArrayList<e> f775c = new CopyOnWriteArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    private static volatile boolean f778f = false;

    /* renamed from: g  reason: collision with root package name */
    private static long f779g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static int f780h = 0;

    /* loaded from: classes.dex */
    public interface a {
        void a(long j);
    }

    public static void a() {
        if (f773a) {
            return;
        }
        f773a = true;
        f774b = new Printer() { // from class: com.apm.insight.b.i.1
            @Override // android.util.Printer
            public void println(String str) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                boolean z = false;
                if (str.charAt(0) == '>') {
                    z = true;
                } else if (str.charAt(0) != '<') {
                    return;
                }
                i.a(z, str);
            }
        };
        j.a();
        j.a(f774b);
    }

    public static void a(e eVar) {
        CopyOnWriteArrayList<e> copyOnWriteArrayList = f775c;
        synchronized (copyOnWriteArrayList) {
            copyOnWriteArrayList.add(eVar);
        }
    }

    public static void a(boolean z, String str) {
        e eVar;
        e eVar2;
        long nanoTime = System.nanoTime();
        e.f721a = nanoTime / 1000000;
        e.f722b = SystemClock.currentThreadTimeMillis();
        if (z && (eVar2 = f776d) != null && eVar2.a()) {
            f776d.a(str);
        }
        CopyOnWriteArrayList<e> copyOnWriteArrayList = f775c;
        for (int i = 0; i < copyOnWriteArrayList.size(); i++) {
            e eVar3 = copyOnWriteArrayList.get(i);
            if (eVar3 != null && eVar3.a()) {
                boolean z2 = eVar3.f723c;
                if (z) {
                    if (!z2) {
                        eVar3.a(str);
                    }
                } else if (z2) {
                    eVar3.b(str);
                }
            } else if (!z && eVar3.f723c) {
                eVar3.b("");
            }
        }
        if (!z && (eVar = f776d) != null && eVar.a()) {
            f776d.b("");
        }
        if (f778f) {
            f779g += System.nanoTime() - nanoTime;
            int i2 = f780h;
            f780h = i2 + 1;
            if (i2 >= 1000) {
                if (f777e != null) {
                    f777e.a(f779g);
                }
                f780h = 0;
                f779g = 0L;
                f778f = false;
            }
        }
    }
}
