package com.criteo.publisher.logging;

import android.util.Log;
import java.util.List;
/* compiled from: Logger.java */
/* loaded from: classes2.dex */
public class g {

    /* renamed from: c  reason: collision with root package name */
    private static final String f8964c = f.a("Logger");

    /* renamed from: d  reason: collision with root package name */
    private static final ThreadLocal<Integer> f8965d = new a();

    /* renamed from: a  reason: collision with root package name */
    private final String f8966a;

    /* renamed from: b  reason: collision with root package name */
    private final List<com.criteo.publisher.g0.a<d>> f8967b;

    /* compiled from: Logger.java */
    /* loaded from: classes2.dex */
    class a extends ThreadLocal<Integer> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public Integer initialValue() {
            return 0;
        }
    }

    public g(Class<?> cls, List<com.criteo.publisher.g0.a<d>> list) {
        this(cls.getSimpleName(), list);
    }

    g(String str, List<com.criteo.publisher.g0.a<d>> list) {
        this.f8966a = str;
        this.f8967b = list;
    }

    public void a(String str, Throwable th) {
        a(new e(3, str, th, null));
    }

    public void a(String str, Object... objArr) {
        a(new e(3, String.format(str, objArr), null, null));
    }

    public void a(e eVar) {
        int intValue = f8965d.get().intValue();
        if (intValue > 1) {
            return;
        }
        for (com.criteo.publisher.g0.a<d> aVar : this.f8967b) {
            f8965d.set(Integer.valueOf(intValue + 1));
            try {
                try {
                    aVar.a().a(this.f8966a, eVar);
                } catch (Exception e2) {
                    Log.w(f8964c, "Impossible to log with handler: " + aVar, e2);
                    if (intValue == 0) {
                    }
                }
                if (intValue == 0) {
                    f8965d.remove();
                } else {
                    f8965d.set(Integer.valueOf(intValue));
                }
            } catch (Throwable th) {
                if (intValue == 0) {
                    f8965d.remove();
                } else {
                    f8965d.set(Integer.valueOf(intValue));
                }
                throw th;
            }
        }
    }
}
