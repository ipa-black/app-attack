package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import android.text.TextUtils;
import com.yandex.metrica.impl.ac.CrashpadServiceHelper;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.yandex.metrica.impl.ob.t7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1874t7 implements InterfaceC1505e7<String> {

    /* renamed from: a  reason: collision with root package name */
    private final C1922v7 f15744a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1744nm<String, Bundle> f15745b;

    /* renamed from: c  reason: collision with root package name */
    private final Callable<List<Bundle>> f15746c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1719mm<String> f15747d;

    /* renamed from: e  reason: collision with root package name */
    private final C1850s7 f15748e;

    /* renamed from: com.yandex.metrica.impl.ob.t7$a */
    /* loaded from: classes5.dex */
    class a implements InterfaceC1744nm<String, Bundle> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1744nm
        public Bundle a(String str) {
            return CrashpadServiceHelper.readCrash(str);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.t7$b */
    /* loaded from: classes5.dex */
    class b implements Callable<List<Bundle>> {
        b() {
        }

        @Override // java.util.concurrent.Callable
        public List<Bundle> call() throws Exception {
            return CrashpadServiceHelper.readOldCrashes();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.t7$c */
    /* loaded from: classes5.dex */
    class c implements InterfaceC1719mm<String> {
        c() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(String str) {
            CrashpadServiceHelper.a(str);
        }
    }

    public C1874t7(C1922v7 c1922v7) {
        this(c1922v7, new C1850s7(), new a(), new b(), new c());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0016  */
    @Override // com.yandex.metrica.impl.ob.InterfaceC1505e7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r3) {
        /*
            r2 = this;
            java.lang.String r3 = (java.lang.String) r3
            com.yandex.metrica.impl.ob.nm<java.lang.String, android.os.Bundle> r0 = r2.f15745b     // Catch: java.lang.Throwable -> L13
            java.lang.Object r0 = r0.a(r3)     // Catch: java.lang.Throwable -> L13
            android.os.Bundle r0 = (android.os.Bundle) r0     // Catch: java.lang.Throwable -> L13
            if (r0 == 0) goto L13
            com.yandex.metrica.impl.ob.s7 r1 = r2.f15748e     // Catch: java.lang.Throwable -> L13
            com.yandex.metrica.impl.ob.r7 r0 = r1.a(r3, r0)     // Catch: java.lang.Throwable -> L13
            goto L14
        L13:
            r0 = 0
        L14:
            if (r0 == 0) goto L1c
            com.yandex.metrica.impl.ob.v7 r3 = r2.f15744a
            r3.a2(r0)
            goto L21
        L1c:
            com.yandex.metrica.impl.ob.mm<java.lang.String> r0 = r2.f15747d
            r0.b(r3)
        L21:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1874t7.a(java.lang.Object):void");
    }

    public C1874t7(C1922v7 c1922v7, C1850s7 c1850s7, InterfaceC1744nm<String, Bundle> interfaceC1744nm, Callable<List<Bundle>> callable, InterfaceC1719mm<String> interfaceC1719mm) {
        this.f15744a = c1922v7;
        this.f15748e = c1850s7;
        this.f15745b = interfaceC1744nm;
        this.f15746c = callable;
        this.f15747d = interfaceC1719mm;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1505e7
    public void a() {
        try {
            for (Bundle bundle : this.f15746c.call()) {
                String string = bundle.getString("arg_ui");
                if (!TextUtils.isEmpty(string)) {
                    C1826r7 a2 = this.f15748e.a(string, bundle);
                    if (a2 != null) {
                        this.f15744a.b2(a2);
                    } else {
                        this.f15747d.b(string);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }
}
