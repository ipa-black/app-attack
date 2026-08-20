package com.yandex.metrica.identifiers.impl;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes3.dex */
public final class r implements i {

    /* renamed from: a  reason: collision with root package name */
    private final e f12600a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public r() {
        /*
            r4 = this;
            com.yandex.metrica.identifiers.impl.e r0 = new com.yandex.metrica.identifiers.impl.e
            android.content.Intent r1 = com.yandex.metrica.identifiers.impl.s.a()
            com.yandex.metrica.identifiers.impl.q r2 = com.yandex.metrica.identifiers.impl.q.f12599a
            java.lang.String r3 = "huawei"
            r0.<init>(r1, r2, r3)
            r4.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.identifiers.impl.r.<init>():void");
    }

    public r(e connectionController) {
        Intrinsics.checkNotNullParameter(connectionController, "connectionController");
        this.f12600a = connectionController;
    }

    @Override // com.yandex.metrica.identifiers.impl.i
    public g a(Context context) {
        g gVar;
        g gVar2;
        e eVar;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            try {
                try {
                    v vVar = (v) this.f12600a.a(context);
                    gVar2 = new g(l.f12592b, new f("huawei", vVar.a(), Boolean.valueOf(vVar.c())), null, 4);
                    eVar = this.f12600a;
                } catch (Throwable unused) {
                }
            } catch (j e2) {
                String errorMessage = e2.getMessage();
                if (errorMessage == null) {
                    errorMessage = "unknown exception during binding huawei services";
                }
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                gVar = new g(l.f12593c, null, errorMessage);
                gVar2 = gVar;
                eVar = this.f12600a;
                eVar.b(context);
                return gVar2;
            } catch (Throwable th) {
                String errorMessage2 = "exception while fetching hoaid: " + th.getMessage();
                Intrinsics.checkNotNullParameter(errorMessage2, "errorMessage");
                gVar = new g(l.f12593c, null, errorMessage2);
                gVar2 = gVar;
                eVar = this.f12600a;
                eVar.b(context);
                return gVar2;
            }
            eVar.b(context);
            return gVar2;
        } catch (Throwable th2) {
            try {
                this.f12600a.b(context);
            } catch (Throwable unused2) {
            }
            throw th2;
        }
    }
}
