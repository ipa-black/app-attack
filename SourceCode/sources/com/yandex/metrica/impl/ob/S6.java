package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.core.api.ProtobufConverter;
import java.util.List;
/* loaded from: classes5.dex */
public class S6 implements ProtobufConverter<B6, C1588hf> {

    /* renamed from: a  reason: collision with root package name */
    private final W6 f13847a;

    /* renamed from: b  reason: collision with root package name */
    private final J6 f13848b;

    /* renamed from: c  reason: collision with root package name */
    private final L6 f13849c;

    /* renamed from: d  reason: collision with root package name */
    private final T6 f13850d;

    /* renamed from: e  reason: collision with root package name */
    private final Q6 f13851e;

    /* renamed from: f  reason: collision with root package name */
    private final R6 f13852f;

    public S6() {
        this(new W6(), new J6(new V6()), new L6(), new T6(), new Q6(), new R6());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1588hf fromModel(B6 b6) {
        C1588hf c1588hf = new C1588hf();
        String str = b6.f12672a;
        String str2 = c1588hf.f14859f;
        if (str == null) {
            str = str2;
        }
        c1588hf.f14859f = str;
        H6 h6 = b6.f12673b;
        if (h6 != null) {
            F6 f6 = h6.f13027a;
            if (f6 != null) {
                c1588hf.f14854a = this.f13847a.fromModel(f6);
            }
            C1945w6 c1945w6 = h6.f13028b;
            if (c1945w6 != null) {
                c1588hf.f14855b = this.f13848b.fromModel(c1945w6);
            }
            List<D6> list = h6.f13029c;
            if (list != null) {
                c1588hf.f14858e = this.f13850d.fromModel(list);
            }
            String str3 = h6.f13033g;
            String str4 = c1588hf.f14856c;
            if (str3 == null) {
                str3 = str4;
            }
            c1588hf.f14856c = str3;
            c1588hf.f14857d = this.f13849c.a(h6.f13034h);
            if (!TextUtils.isEmpty(h6.f13030d)) {
                c1588hf.i = this.f13851e.fromModel(h6.f13030d);
            }
            if (!TextUtils.isEmpty(h6.f13031e)) {
                c1588hf.j = h6.f13031e.getBytes();
            }
            if (!A2.b(h6.f13032f)) {
                c1588hf.k = this.f13852f.fromModel(h6.f13032f);
            }
        }
        return c1588hf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1588hf c1588hf = (C1588hf) obj;
        throw new UnsupportedOperationException();
    }

    S6(W6 w6, J6 j6, L6 l6, T6 t6, Q6 q6, R6 r6) {
        this.f13847a = w6;
        this.f13848b = j6;
        this.f13849c = l6;
        this.f13850d = t6;
        this.f13851e = q6;
        this.f13852f = r6;
    }
}
