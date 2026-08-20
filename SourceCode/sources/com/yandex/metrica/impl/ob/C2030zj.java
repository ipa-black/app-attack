package com.yandex.metrica.impl.ob;

import android.telephony.CellInfoCdma;
import com.yandex.metrica.impl.ob.C1910uj;
/* renamed from: com.yandex.metrica.impl.ob.zj  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2030zj extends AbstractC1791pj<CellInfoCdma> {
    @Override // com.yandex.metrica.impl.ob.AbstractC1791pj
    protected void b(CellInfoCdma cellInfoCdma, C1910uj.a aVar) {
        aVar.l(Integer.valueOf(cellInfoCdma.getCellSignalStrength().getDbm()));
        aVar.a(2);
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1791pj
    protected void c(CellInfoCdma cellInfoCdma, C1910uj.a aVar) {
    }
}
