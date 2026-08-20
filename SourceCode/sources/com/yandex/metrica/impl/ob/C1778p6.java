package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.p6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1778p6 implements InterfaceC1753o6 {

    /* renamed from: a  reason: collision with root package name */
    private final List<InterfaceC1719mm<String>> f15365a;

    /* renamed from: b  reason: collision with root package name */
    private final C1946w7 f15366b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1719mm<String> f15367c;

    /* renamed from: com.yandex.metrica.impl.ob.p6$a */
    /* loaded from: classes5.dex */
    class a implements InterfaceC1719mm<String> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(String str) {
            C1778p6.a(C1778p6.this, str);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1778p6(android.content.Context r4) {
        /*
            r3 = this;
            com.yandex.metrica.impl.ob.w7 r0 = new com.yandex.metrica.impl.ob.w7
            java.lang.String r1 = com.yandex.metrica.impl.ob.C1422b.a(r4)
            java.io.File r4 = com.yandex.metrica.coreutils.io.FileUtils.getStorageDirectory(r4)
            if (r4 != 0) goto Le
            r4 = 0
            goto L25
        Le:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = r4.getAbsolutePath()
            java.lang.StringBuilder r4 = r2.append(r4)
            java.lang.String r2 = "/appmetrica_native_crashes"
            java.lang.StringBuilder r4 = r4.append(r2)
            java.lang.String r4 = r4.toString()
        L25:
            r0.<init>(r1, r4)
            r3.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1778p6.<init>(android.content.Context):void");
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1753o6
    public synchronized void a(InterfaceC1719mm<String> interfaceC1719mm) {
        this.f15365a.add(interfaceC1719mm);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1753o6
    public synchronized void b(InterfaceC1719mm<String> interfaceC1719mm) {
        this.f15365a.remove(interfaceC1719mm);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1674l2
    public void a() {
        this.f15366b.a(this.f15367c);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1674l2
    public void b() {
        this.f15366b.b(this.f15367c);
    }

    static void a(C1778p6 c1778p6, String str) {
        ArrayList arrayList;
        synchronized (c1778p6) {
            arrayList = new ArrayList(c1778p6.f15365a);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((InterfaceC1719mm) it.next()).b(str);
        }
    }

    C1778p6(C1946w7 c1946w7) {
        this.f15365a = new ArrayList();
        this.f15367c = new a();
        this.f15366b = c1946w7;
    }
}
