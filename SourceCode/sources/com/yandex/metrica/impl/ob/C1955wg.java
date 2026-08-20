package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* renamed from: com.yandex.metrica.impl.ob.wg  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1955wg {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1663kg f15984a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.wg$a */
    /* loaded from: classes5.dex */
    public class a implements InterfaceC1663kg {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1663kg
        public void a(InterfaceC1931vg interfaceC1931vg) throws Throwable {
            throw new IllegalStateException("No class: com.android.installreferrer.api.InstallReferrerClient");
        }
    }

    public C1955wg(Context context, ICommonExecutor iCommonExecutor) {
        this(a(context, iCommonExecutor));
    }

    public void a(InterfaceC1931vg interfaceC1931vg) {
        try {
            this.f15984a.a(interfaceC1931vg);
        } catch (Throwable th) {
            interfaceC1931vg.a(th);
        }
    }

    C1955wg(InterfaceC1663kg interfaceC1663kg) {
        this.f15984a = interfaceC1663kg;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.yandex.metrica.impl.ob.InterfaceC1663kg a(android.content.Context r1, com.yandex.metrica.core.api.executors.ICommonExecutor r2) {
        /*
            java.lang.String r0 = "com.android.installreferrer.api.InstallReferrerClient"
            boolean r0 = com.yandex.metrica.impl.ob.C1575h2.a(r0)
            if (r0 == 0) goto L16
            com.yandex.metrica.impl.ob.qg r0 = new com.yandex.metrica.impl.ob.qg     // Catch: java.lang.Throwable -> L16
            com.android.installreferrer.api.InstallReferrerClient$Builder r1 = com.android.installreferrer.api.InstallReferrerClient.newBuilder(r1)     // Catch: java.lang.Throwable -> L16
            com.android.installreferrer.api.InstallReferrerClient r1 = r1.build()     // Catch: java.lang.Throwable -> L16
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L16
            goto L17
        L16:
            r0 = 0
        L17:
            if (r0 != 0) goto L1e
            com.yandex.metrica.impl.ob.wg$a r0 = new com.yandex.metrica.impl.ob.wg$a
            r0.<init>()
        L1e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1955wg.a(android.content.Context, com.yandex.metrica.core.api.executors.ICommonExecutor):com.yandex.metrica.impl.ob.kg");
    }
}
