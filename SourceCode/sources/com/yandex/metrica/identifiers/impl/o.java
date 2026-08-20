package com.yandex.metrica.identifiers.impl;

import android.content.Context;
import com.appodeal.ads.AppodealNetworks;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes3.dex */
public final class o implements i {

    /* renamed from: a  reason: collision with root package name */
    private final e f12597a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public o() {
        /*
            r4 = this;
            com.yandex.metrica.identifiers.impl.e r0 = new com.yandex.metrica.identifiers.impl.e
            android.content.Intent r1 = com.yandex.metrica.identifiers.impl.p.a()
            com.yandex.metrica.identifiers.impl.n r2 = com.yandex.metrica.identifiers.impl.n.f12596a
            java.lang.String r3 = "yandex"
            r0.<init>(r1, r2, r3)
            r4.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.identifiers.impl.o.<init>():void");
    }

    public o(e connectionController) {
        Intrinsics.checkNotNullParameter(connectionController, "connectionController");
        this.f12597a = connectionController;
    }

    private final g b(Context context) {
        c cVar = (c) this.f12597a.a(context);
        String b2 = cVar.b();
        Intrinsics.checkNotNullExpressionValue(b2, "service.advId");
        return new g(l.f12592b, new f(AppodealNetworks.YANDEX, b2, Boolean.valueOf(cVar.d())), null, 4);
    }

    @Override // com.yandex.metrica.identifiers.impl.i
    public g a(Context context) {
        e eVar;
        g gVar;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            try {
                g b2 = b(context);
                try {
                    return b2;
                } catch (Throwable unused) {
                    return b2;
                }
            } finally {
                try {
                    this.f12597a.b(context);
                } catch (Throwable unused2) {
                }
            }
        } catch (m e2) {
            String message = e2.getMessage();
            if (message == null) {
                message = "No yandex adv_id service";
            }
            gVar = new g(l.f12593c, null, message, 2);
            try {
                eVar = this.f12597a;
                eVar.b(context);
            } catch (Throwable unused3) {
                return gVar;
            }
            return gVar;
        } catch (j e3) {
            String message2 = e3.getMessage();
            if (message2 == null) {
                message2 = "unknown exception while binding yandex adv_id service";
            }
            gVar = new g(l.f12593c, null, message2, 2);
            eVar = this.f12597a;
            eVar.b(context);
            return gVar;
        } catch (Throwable th) {
            g gVar2 = new g(l.f12594d, null, "exception while fetching yandex adv_id: " + th.getMessage(), 2);
            try {
                eVar = this.f12597a;
                gVar = gVar2;
                eVar.b(context);
                return gVar;
            } catch (Throwable unused4) {
                return gVar2;
            }
        }
    }
}
