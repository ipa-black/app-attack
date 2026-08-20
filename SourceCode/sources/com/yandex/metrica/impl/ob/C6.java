package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.AbstractC1993y6;
/* loaded from: classes5.dex */
public class C6 extends AbstractC1993y6 {

    /* renamed from: d  reason: collision with root package name */
    private C1989y2 f12741d;

    public C6(Context context, C1989y2 c1989y2, AbstractC1993y6.a aVar, com.yandex.metrica.c cVar) {
        this(c1989y2, aVar, cVar, new A0(context));
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1993y6
    void a(H6 h6) {
        this.f12741d.a().a(h6);
    }

    C6(C1989y2 c1989y2, AbstractC1993y6.a aVar, com.yandex.metrica.c cVar, A0 a0) {
        super(aVar, cVar, a0);
        this.f12741d = c1989y2;
    }
}
