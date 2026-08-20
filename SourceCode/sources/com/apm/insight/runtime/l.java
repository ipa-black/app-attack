package com.apm.insight.runtime;

import android.os.SystemClock;
import android.util.Printer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static Printer f1122a;

    /* renamed from: b  reason: collision with root package name */
    private static l f1123b;

    /* renamed from: f  reason: collision with root package name */
    private static final Printer f1124f = new Printer() { // from class: com.apm.insight.runtime.l.1
        @Override // android.util.Printer
        public void println(String str) {
            if (str == null) {
                return;
            }
            if (str.charAt(0) == '>') {
                l.a().a(str);
            } else if (str.charAt(0) == '<') {
                l.a().b(str);
            }
            if (l.f1122a == null || l.f1122a == l.f1124f) {
                return;
            }
            l.f1122a.println(str);
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private long f1125c = -1;

    /* renamed from: d  reason: collision with root package name */
    private final List<Printer> f1126d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private final List<Printer> f1127e = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private boolean f1128g = false;

    private l() {
    }

    public static l a() {
        if (f1123b == null) {
            synchronized (l.class) {
                if (f1123b == null) {
                    f1123b = new l();
                }
            }
        }
        return f1123b;
    }

    private static void a(List<? extends Printer> list, String str) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Printer printer = list.get(i);
                if (printer == null) {
                    return;
                }
                printer.println(str);
            }
        } catch (Throwable th) {
            com.apm.insight.l.p.a(th);
        }
    }

    void a(String str) {
        com.apm.insight.b.f.a(false);
        this.f1125c = -1L;
        try {
            a(this.f1126d, str);
        } catch (Exception e2) {
            com.apm.insight.l.p.a((Throwable) e2);
        }
    }

    void b(String str) {
        this.f1125c = SystemClock.uptimeMillis();
        try {
            a(this.f1127e, str);
        } catch (Exception e2) {
            com.apm.insight.l.p.b((Throwable) e2);
        }
    }

    public boolean b() {
        return this.f1125c != -1 && SystemClock.uptimeMillis() - this.f1125c > 5000;
    }
}
