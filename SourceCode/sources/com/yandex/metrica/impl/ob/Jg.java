package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.text.StringsKt;
/* loaded from: classes5.dex */
public final class Jg {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f13297a;

    /* renamed from: b  reason: collision with root package name */
    private final C1869t2 f13298b;

    public Jg(C1869t2 c1869t2) {
        this.f13298b = c1869t2;
        this.f13297a = a(new String[]{"https://startup.mobile.yandex.net/", "", "", ""});
    }

    public final Collection<String> a() {
        String[] a2 = this.f13298b.a();
        if (a2 != null) {
            List<String> a3 = a(a2);
            if (!(!a3.isEmpty())) {
                a3 = null;
            }
            if (a3 != null) {
                return a3;
            }
        }
        return this.f13297a;
    }

    private final List<String> a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            str = (str == null || !(StringsKt.isBlank(str) ^ true)) ? null : null;
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Jg() {
        /*
            r3 = this;
            com.yandex.metrica.impl.ob.t2 r0 = new com.yandex.metrica.impl.ob.t2
            com.yandex.metrica.impl.ob.F0 r1 = com.yandex.metrica.impl.ob.F0.g()
            java.lang.String r2 = "GlobalServiceLocator.getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            android.content.Context r1 = r1.e()
            java.lang.String r2 = "GlobalServiceLocator.getInstance().context"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            java.lang.String r2 = "appmetrica_startup_hosts"
            r0.<init>(r1, r2)
            r3.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Jg.<init>():void");
    }
}
