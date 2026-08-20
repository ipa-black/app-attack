package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Xl implements InterfaceC1445bm {

    /* renamed from: a  reason: collision with root package name */
    private volatile String f14289a;

    public String b() {
        if (this.f14289a != null) {
            return this.f14289a;
        }
        synchronized (this) {
            if (this.f14289a == null) {
                this.f14289a = a();
            }
        }
        return this.f14289a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            return (String) cls.getMethod("getProcessName", new Class[0]).invoke(cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]), new Object[0]);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }
}
