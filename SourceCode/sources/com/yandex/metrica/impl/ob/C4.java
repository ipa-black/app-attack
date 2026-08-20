package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.coreutils.services.TimeProvider;
import com.yandex.metrica.impl.ob.C1811qf;
import com.yandex.metrica.impl.ob.E4;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class C4 {

    /* renamed from: h  reason: collision with root package name */
    public static final Map<Integer, Integer> f12733h = Collections.unmodifiableMap(new a());

    /* renamed from: a  reason: collision with root package name */
    private final C1448c0 f12734a;

    /* renamed from: b  reason: collision with root package name */
    private final D4 f12735b;

    /* renamed from: c  reason: collision with root package name */
    private final E4 f12736c;

    /* renamed from: d  reason: collision with root package name */
    private final C1471cn f12737d;

    /* renamed from: e  reason: collision with root package name */
    private final C1471cn f12738e;

    /* renamed from: f  reason: collision with root package name */
    private final TimeProvider f12739f;

    /* renamed from: g  reason: collision with root package name */
    private final O3 f12740g;

    /* loaded from: classes5.dex */
    class a extends HashMap<Integer, Integer> {
        a() {
            put(Integer.valueOf(EnumC1399a1.EVENT_TYPE_DIAGNOSTIC.b()), 22);
            put(Integer.valueOf(EnumC1399a1.EVENT_TYPE_DIAGNOSTIC_STATBOX.b()), 23);
            put(Integer.valueOf(EnumC1399a1.EVENT_TYPE_DIAGNOSTIC_DISABLE_STAT_SENDING.b()), 24);
            put(Integer.valueOf(EnumC1399a1.EVENT_TYPE_APPMETRICA_DIAGNOSTICS.b()), 24);
        }
    }

    public C4(C1448c0 c1448c0, D4 d4, E4 e4, O3 o3, C1471cn c1471cn, C1471cn c1471cn2, TimeProvider timeProvider) {
        this.f12734a = c1448c0;
        this.f12735b = d4;
        this.f12736c = e4;
        this.f12740g = o3;
        this.f12738e = c1471cn;
        this.f12737d = c1471cn2;
        this.f12739f = timeProvider;
    }

    public byte[] a() {
        C1811qf c1811qf = new C1811qf();
        C1811qf.d dVar = new C1811qf.d();
        c1811qf.f15510a = new C1811qf.d[]{dVar};
        E4.a a2 = this.f12736c.a();
        dVar.f15538a = a2.f12844a;
        C1811qf.d.b bVar = new C1811qf.d.b();
        dVar.f15539b = bVar;
        bVar.f15561c = 2;
        bVar.f15559a = new C1811qf.f();
        C1811qf.f fVar = dVar.f15539b.f15559a;
        long j = a2.f12845b;
        fVar.f15567a = j;
        fVar.f15568b = ((GregorianCalendar) GregorianCalendar.getInstance()).getTimeZone().getOffset(j * 1000) / 1000;
        dVar.f15539b.f15560b = this.f12735b.k();
        C1811qf.d.a aVar = new C1811qf.d.a();
        dVar.f15540c = new C1811qf.d.a[]{aVar};
        aVar.f15541a = a2.f12846c;
        aVar.p = this.f12740g.a(this.f12734a.o());
        aVar.f15542b = this.f12739f.currentTimeSeconds() - a2.f12845b;
        aVar.f15543c = f12733h.get(Integer.valueOf(this.f12734a.o())).intValue();
        if (!TextUtils.isEmpty(this.f12734a.g())) {
            aVar.f15544d = this.f12738e.a(this.f12734a.g());
        }
        if (!TextUtils.isEmpty(this.f12734a.q())) {
            String q = this.f12734a.q();
            String a3 = this.f12737d.a(q);
            if (!TextUtils.isEmpty(a3)) {
                aVar.f15545e = a3.getBytes();
            }
            int length = q.getBytes().length;
            byte[] bArr = aVar.f15545e;
            aVar.j = length - (bArr != null ? bArr.length : 0);
        }
        return MessageNano.toByteArray(c1811qf);
    }
}
