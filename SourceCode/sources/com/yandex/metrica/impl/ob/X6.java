package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.core.api.ProtobufConverter;
import java.util.List;
/* loaded from: classes5.dex */
public class X6 implements ProtobufConverter<H6, C1563gf> {

    /* renamed from: a  reason: collision with root package name */
    private final W6 f14245a;

    /* renamed from: b  reason: collision with root package name */
    private final J6 f14246b;

    /* renamed from: c  reason: collision with root package name */
    private final L6 f14247c;

    /* renamed from: d  reason: collision with root package name */
    private final T6 f14248d;

    /* renamed from: e  reason: collision with root package name */
    private final Q6 f14249e;

    /* renamed from: f  reason: collision with root package name */
    private final R6 f14250f;

    public X6() {
        this(new W6(), new J6(new V6()), new L6(), new T6(), new Q6(), new R6());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1563gf fromModel(H6 h6) {
        C1563gf c1563gf = new C1563gf();
        F6 f6 = h6.f13027a;
        if (f6 != null) {
            c1563gf.f14792a = this.f14245a.fromModel(f6);
        }
        C1945w6 c1945w6 = h6.f13028b;
        if (c1945w6 != null) {
            c1563gf.f14793b = this.f14246b.fromModel(c1945w6);
        }
        List<D6> list = h6.f13029c;
        if (list != null) {
            c1563gf.f14796e = this.f14248d.fromModel(list);
        }
        String str = h6.f13033g;
        if (str != null) {
            c1563gf.f14794c = str;
        }
        c1563gf.f14795d = this.f14247c.a(h6.f13034h);
        if (!TextUtils.isEmpty(h6.f13030d)) {
            c1563gf.f14799h = this.f14249e.fromModel(h6.f13030d);
        }
        if (!TextUtils.isEmpty(h6.f13031e)) {
            c1563gf.i = h6.f13031e.getBytes();
        }
        if (!A2.b(h6.f13032f)) {
            c1563gf.j = this.f14250f.fromModel(h6.f13032f);
        }
        return c1563gf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1563gf c1563gf = (C1563gf) obj;
        throw new UnsupportedOperationException();
    }

    X6(W6 w6, J6 j6, L6 l6, T6 t6, Q6 q6, R6 r6) {
        this.f14246b = j6;
        this.f14245a = w6;
        this.f14247c = l6;
        this.f14248d = t6;
        this.f14249e = q6;
        this.f14250f = r6;
    }
}
