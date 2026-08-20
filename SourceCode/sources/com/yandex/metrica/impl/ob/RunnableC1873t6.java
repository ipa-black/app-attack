package com.yandex.metrica.impl.ob;

import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.t6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class RunnableC1873t6<Output> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final File f15740a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1744nm<File, Output> f15741b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1719mm<File> f15742c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1719mm<Output> f15743d;

    public RunnableC1873t6(File file, InterfaceC1744nm<File, Output> interfaceC1744nm, InterfaceC1719mm<File> interfaceC1719mm, InterfaceC1719mm<Output> interfaceC1719mm2) {
        this.f15740a = file;
        this.f15741b = interfaceC1744nm;
        this.f15742c = interfaceC1719mm;
        this.f15743d = interfaceC1719mm2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f15740a.exists()) {
            try {
                Output a2 = this.f15741b.a(this.f15740a);
                if (a2 != null) {
                    this.f15743d.b(a2);
                }
            } catch (Throwable unused) {
            }
            this.f15742c.b(this.f15740a);
        }
    }
}
