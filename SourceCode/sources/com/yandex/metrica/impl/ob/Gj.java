package com.yandex.metrica.impl.ob;

import android.telephony.CellIdentityLte;
import android.telephony.CellInfoLte;
import com.yandex.metrica.impl.ob.C1910uj;
/* loaded from: classes5.dex */
public class Gj extends AbstractC1791pj<CellInfoLte> {

    /* renamed from: c  reason: collision with root package name */
    private final Mj<CellIdentityLte> f12989c;

    public Gj() {
        this(A2.a(28) ? new Qj() : new Pj());
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1791pj
    protected void b(CellInfoLte cellInfoLte, C1910uj.a aVar) {
        CellInfoLte cellInfoLte2 = cellInfoLte;
        CellIdentityLte cellIdentity = cellInfoLte2.getCellIdentity();
        aVar.a(4).b(Integer.valueOf(cellIdentity.getCi())).c(Integer.valueOf(cellIdentity.getTac())).k(Integer.valueOf(cellIdentity.getPci())).l(Integer.valueOf(cellInfoLte2.getCellSignalStrength().getDbm())).i(this.f12989c.b(cellIdentity)).j(this.f12989c.a(cellIdentity));
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1791pj
    protected void c(CellInfoLte cellInfoLte, C1910uj.a aVar) {
        CellInfoLte cellInfoLte2 = cellInfoLte;
        if (A2.a(24)) {
            aVar.a(Integer.valueOf(Cj.a(cellInfoLte2.getCellIdentity())));
        }
        if (A2.a(26)) {
            aVar.f(Integer.valueOf(Dj.b(cellInfoLte2.getCellSignalStrength())));
            aVar.h(Integer.valueOf(Dj.c(cellInfoLte2.getCellSignalStrength())));
            aVar.e(Integer.valueOf(Dj.a(cellInfoLte2.getCellSignalStrength())));
        }
        if (A2.a(28)) {
            aVar.d(Integer.valueOf(Ej.a(cellInfoLte2.getCellIdentity())));
        }
        if (A2.a(29)) {
            aVar.g(Integer.valueOf(Fj.a(cellInfoLte2.getCellSignalStrength())));
        }
    }

    Gj(Mj<CellIdentityLte> mj) {
        this.f12989c = mj;
    }
}
