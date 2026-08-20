package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.P3;
/* renamed from: com.yandex.metrica.impl.ob.w2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1941w2<C extends P3> implements InterfaceC1674l2 {

    /* renamed from: a  reason: collision with root package name */
    private C f15949a;

    /* renamed from: b  reason: collision with root package name */
    final Object f15950b = new Object();

    /* renamed from: c  reason: collision with root package name */
    boolean f15951c = false;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC2005yi f15952d;

    public C1941w2(C c2, InterfaceC2005yi interfaceC2005yi) {
        this.f15949a = c2;
        this.f15952d = interfaceC2005yi;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1674l2
    public void a() {
        synchronized (this.f15950b) {
            if (this.f15951c) {
                this.f15951c = false;
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1674l2
    public void b() {
        synchronized (this.f15950b) {
            if (!this.f15951c) {
                c();
                this.f15951c = true;
            }
        }
    }

    void c() {
    }

    public void d() {
        synchronized (this.f15950b) {
            if (!this.f15951c) {
                synchronized (this.f15950b) {
                    if (!this.f15951c) {
                        f();
                    }
                }
                c();
            }
        }
    }

    public C e() {
        return this.f15949a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        this.f15952d.a();
    }
}
