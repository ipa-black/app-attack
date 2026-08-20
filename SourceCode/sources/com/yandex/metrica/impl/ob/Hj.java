package com.yandex.metrica.impl.ob;

import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoWcdma;
import com.yandex.metrica.impl.ob.C1910uj;
/* loaded from: classes5.dex */
public class Hj extends AbstractC1791pj<CellInfo> {

    /* renamed from: c  reason: collision with root package name */
    private final Mj<CellIdentityWcdma> f13056c;

    public Hj() {
        this(A2.a(28) ? new Sj() : new Rj());
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1791pj
    protected void b(CellInfo cellInfo, C1910uj.a aVar) {
        CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) cellInfo;
        CellIdentityWcdma cellIdentity = cellInfoWcdma.getCellIdentity();
        aVar.a(3).b(Integer.valueOf(cellIdentity.getCid())).c(Integer.valueOf(cellIdentity.getLac())).k(Integer.valueOf(cellIdentity.getPsc())).l(Integer.valueOf(cellInfoWcdma.getCellSignalStrength().getDbm())).i(this.f13056c.b(cellIdentity)).j(this.f13056c.a(cellIdentity));
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1791pj
    protected void c(CellInfo cellInfo, C1910uj.a aVar) {
        if (A2.a(24)) {
            aVar.a(Integer.valueOf(Cj.a(((CellInfoWcdma) cellInfo).getCellIdentity())));
        }
    }

    Hj(Mj<CellIdentityWcdma> mj) {
        this.f13056c = mj;
    }
}
