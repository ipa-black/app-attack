package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class Rb {

    /* renamed from: a  reason: collision with root package name */
    private C1709mc f13793a;

    /* renamed from: b  reason: collision with root package name */
    private final U7 f13794b;

    /* renamed from: c  reason: collision with root package name */
    private final T7 f13795c;

    public Rb(C1709mc c1709mc, U7 u7, T7 t7) {
        this.f13793a = c1709mc;
        this.f13794b = u7;
        this.f13795c = t7;
    }

    public void a() {
        C1709mc c1709mc = this.f13793a;
        if (c1709mc != null) {
            long c2 = this.f13794b.c();
            int i = c1709mc.f15148f;
            if (c2 > i) {
                this.f13794b.b((int) (i * 0.1f));
            }
            C1709mc c1709mc2 = this.f13793a;
            long c3 = this.f13795c.c();
            int i2 = c1709mc2.f15148f;
            if (c3 > i2) {
                this.f13795c.b((int) (i2 * 0.1f));
            }
        }
    }

    public void a(C1709mc c1709mc) {
        this.f13793a = c1709mc;
    }
}
