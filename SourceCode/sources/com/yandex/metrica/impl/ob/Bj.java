package com.yandex.metrica.impl.ob;

import android.telephony.CellIdentityGsm;
import android.telephony.CellInfoGsm;
import com.yandex.metrica.impl.ob.C1910uj;
/* loaded from: classes5.dex */
public class Bj extends AbstractC1791pj<CellInfoGsm> {

    /* renamed from: c  reason: collision with root package name */
    private final Mj<CellIdentityGsm> f12705c;

    public Bj() {
        this(A2.a(28) ? new Oj() : new Nj());
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1791pj
    protected void b(CellInfoGsm cellInfoGsm, C1910uj.a aVar) {
        CellInfoGsm cellInfoGsm2 = cellInfoGsm;
        CellIdentityGsm cellIdentity = cellInfoGsm2.getCellIdentity();
        aVar.a(1).b(Integer.valueOf(cellIdentity.getCid())).c(Integer.valueOf(cellIdentity.getLac())).l(Integer.valueOf(cellInfoGsm2.getCellSignalStrength().getDbm())).i(this.f12705c.b(cellIdentity)).j(this.f12705c.a(cellIdentity));
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1791pj
    protected void c(CellInfoGsm cellInfoGsm, C1910uj.a aVar) {
        CellInfoGsm cellInfoGsm2 = cellInfoGsm;
        if (A2.a(24)) {
            aVar.a(Integer.valueOf(cellInfoGsm2.getCellIdentity().getArfcn()));
        }
    }

    Bj(Mj<CellIdentityGsm> mj) {
        this.f12705c = mj;
    }
}
