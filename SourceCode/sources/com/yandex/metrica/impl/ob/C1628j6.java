package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.google.protobuf.nano.ym.MessageNano;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.j6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1628j6 {

    /* renamed from: a  reason: collision with root package name */
    private final String f14959a = "session_extras";

    /* renamed from: b  reason: collision with root package name */
    private final C1554g6 f14960b = new C1554g6();

    /* renamed from: c  reason: collision with root package name */
    private final C1604i6 f14961c = new C1604i6();

    /* renamed from: d  reason: collision with root package name */
    private final R7 f14962d;

    public C1628j6(Context context, I3 i3) {
        String str = "[SessionExtrasStorage-" + i3.a() + ']';
        R7 a2 = C1632ja.a(context).a(i3);
        Intrinsics.checkNotNullExpressionValue(a2, "DatabaseStorageFactory.g…Id\") !no-logs*/\n        }");
        this.f14962d = a2;
    }

    public final Map<String, byte[]> a() {
        try {
            byte[] a2 = this.f14962d.a(this.f14959a);
            if (a2 != null) {
                if (!(a2.length == 0)) {
                    C1554g6 c1554g6 = this.f14960b;
                    this.f14961c.getClass();
                    Gf gf = (Gf) MessageNano.mergeFrom(new Gf(), a2);
                    Intrinsics.checkNotNullExpressionValue(gf, "SessionExtrasProtobuf.Se…ionExtras.parseFrom(data)");
                    return c1554g6.toModel(gf);
                }
            }
        } catch (Throwable unused) {
        }
        C1554g6 c1554g62 = this.f14960b;
        this.f14961c.getClass();
        return c1554g62.toModel(new Gf());
    }

    public final void a(Map<String, byte[]> map) {
        R7 r7 = this.f14962d;
        String str = this.f14959a;
        C1604i6 c1604i6 = this.f14961c;
        Gf fromModel = this.f14960b.fromModel(map);
        c1604i6.getClass();
        r7.a(str, MessageNano.toByteArray(fromModel));
    }
}
