package com.yandex.metrica.impl.ob;

import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import com.yandex.metrica.impl.ob.C1910uj;
/* renamed from: com.yandex.metrica.impl.ob.yj  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2006yj implements S {

    /* renamed from: a  reason: collision with root package name */
    private final Jj f16105a;

    /* renamed from: b  reason: collision with root package name */
    private final AbstractC1791pj<CellInfoGsm> f16106b;

    /* renamed from: c  reason: collision with root package name */
    private final AbstractC1791pj<CellInfoCdma> f16107c;

    /* renamed from: d  reason: collision with root package name */
    private final AbstractC1791pj<CellInfoLte> f16108d;

    /* renamed from: e  reason: collision with root package name */
    private final AbstractC1791pj<CellInfo> f16109e;

    /* renamed from: f  reason: collision with root package name */
    private final S[] f16110f;

    public C2006yj() {
        this(new Aj());
    }

    public void a(CellInfo cellInfo, C1910uj.a aVar) {
        this.f16105a.a(cellInfo, aVar);
        if (cellInfo instanceof CellInfoGsm) {
            this.f16106b.a((CellInfoGsm) cellInfo, aVar);
        } else if (cellInfo instanceof CellInfoCdma) {
            this.f16107c.a((CellInfoCdma) cellInfo, aVar);
        } else if (cellInfo instanceof CellInfoLte) {
            this.f16108d.a((CellInfoLte) cellInfo, aVar);
        } else if (A2.a(18) && (cellInfo instanceof CellInfoWcdma)) {
            this.f16109e.a((CellInfoWcdma) cellInfo, aVar);
        }
    }

    private C2006yj(AbstractC1791pj<CellInfo> abstractC1791pj) {
        this(new Jj(), new Bj(), new C2030zj(), new Gj(), A2.a(18) ? new Hj() : abstractC1791pj);
    }

    C2006yj(Jj jj, AbstractC1791pj<CellInfoGsm> abstractC1791pj, AbstractC1791pj<CellInfoCdma> abstractC1791pj2, AbstractC1791pj<CellInfoLte> abstractC1791pj3, AbstractC1791pj<CellInfo> abstractC1791pj4) {
        this.f16105a = jj;
        this.f16106b = abstractC1791pj;
        this.f16107c = abstractC1791pj2;
        this.f16108d = abstractC1791pj3;
        this.f16109e = abstractC1791pj4;
        this.f16110f = new S[]{abstractC1791pj, abstractC1791pj2, abstractC1791pj4, abstractC1791pj3};
    }

    @Override // com.yandex.metrica.impl.ob.S
    public void a(Sh sh) {
        for (S s : this.f16110f) {
            s.a(sh);
        }
    }
}
