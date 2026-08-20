package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import com.yandex.metrica.CounterConfiguration;
/* loaded from: classes5.dex */
public class Q1 extends C2014z3 {

    /* renamed from: c  reason: collision with root package name */
    protected C1963x0 f13738c;

    /* renamed from: d  reason: collision with root package name */
    protected C1612ie f13739d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f13740e;

    /* renamed from: f  reason: collision with root package name */
    private final String f13741f;

    /* JADX INFO: Access modifiers changed from: protected */
    public Q1(A3 a3, CounterConfiguration counterConfiguration) {
        this(a3, counterConfiguration, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C1446bn c1446bn) {
        this.f13738c = new C1963x0(c1446bn);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bundle c() {
        Bundle bundle = new Bundle();
        CounterConfiguration b2 = b();
        synchronized (b2) {
            bundle.putParcelable("COUNTER_CFG_OBJ", b2);
        }
        A3 a2 = a();
        synchronized (a2) {
            bundle.putParcelable("PROCESS_CFG_OBJ", a2);
        }
        return bundle;
    }

    public String d() {
        return this.f13738c.a();
    }

    public String e() {
        return this.f13741f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.f13740e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        this.f13740e = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        this.f13740e = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Q1(A3 a3, CounterConfiguration counterConfiguration, String str) {
        super(a3, counterConfiguration);
        this.f13740e = true;
        this.f13741f = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(InterfaceC1640ji interfaceC1640ji) {
        if (interfaceC1640ji != null) {
            b().d(((C1591hi) interfaceC1640ji).e());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C1612ie c1612ie) {
        this.f13739d = c1612ie;
    }
}
