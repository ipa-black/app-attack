package com.yandex.metrica.impl.ob;

import android.telephony.CellInfo;
import com.yandex.metrica.impl.ob.C1910uj;
/* renamed from: com.yandex.metrica.impl.ob.sj  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1862sj implements Lj {

    /* renamed from: a  reason: collision with root package name */
    private final C2006yj f15729a;

    /* renamed from: b  reason: collision with root package name */
    private final C1982xj f15730b;

    public C1862sj() {
        this(new C2006yj(), new C1982xj());
    }

    @Override // com.yandex.metrica.impl.ob.S
    public void a(Sh sh) {
        this.f15729a.a(sh);
    }

    C1862sj(C2006yj c2006yj, C1982xj c1982xj) {
        this.f15729a = c2006yj;
        this.f15730b = c1982xj;
    }

    @Override // com.yandex.metrica.impl.ob.Lj
    public C1910uj a(CellInfo cellInfo) {
        C1910uj.a aVar = new C1910uj.a();
        this.f15729a.a(cellInfo, aVar);
        return this.f15730b.a(new C1910uj(aVar));
    }
}
