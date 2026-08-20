package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.google.protobuf.nano.ym.MessageNano;
/* loaded from: classes5.dex */
public class Q5 {

    /* renamed from: a  reason: collision with root package name */
    private final O5 f13748a;

    /* renamed from: b  reason: collision with root package name */
    private final P5 f13749b;

    /* renamed from: c  reason: collision with root package name */
    private final R7 f13750c;

    public Q5(Context context, I3 i3) {
        this(new P5(), new O5(), C1632ja.a(context).a(i3), "event_hashes");
    }

    public N5 a() {
        try {
            byte[] a2 = this.f13750c.a("event_hashes");
            if (A2.a(a2)) {
                O5 o5 = this.f13748a;
                this.f13749b.getClass();
                return o5.toModel(new Af());
            }
            O5 o52 = this.f13748a;
            this.f13749b.getClass();
            return o52.toModel((Af) MessageNano.mergeFrom(new Af(), a2));
        } catch (Throwable unused) {
            O5 o53 = this.f13748a;
            this.f13749b.getClass();
            return o53.toModel(new Af());
        }
    }

    Q5(P5 p5, O5 o5, R7 r7, String str) {
        this.f13749b = p5;
        this.f13748a = o5;
        this.f13750c = r7;
    }

    public void a(N5 n5) {
        R7 r7 = this.f13750c;
        P5 p5 = this.f13749b;
        Af fromModel = this.f13748a.fromModel(n5);
        p5.getClass();
        r7.a("event_hashes", MessageNano.toByteArray(fromModel));
    }
}
