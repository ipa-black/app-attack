package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgdz extends zzgeb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgdz(zzgap zzgapVar, boolean z) {
        super(zzgapVar, true);
        zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzgeb
    public final /* bridge */ /* synthetic */ Object zzH(List list) {
        ArrayList zza = zzgbi.zza(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzgea zzgeaVar = (zzgea) it.next();
            zza.add(zzgeaVar != null ? zzgeaVar.zza : null);
        }
        return Collections.unmodifiableList(zza);
    }
}
