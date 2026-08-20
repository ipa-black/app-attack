package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import javax.annotation.CheckForNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
abstract class zzgeb extends zzgdq {
    @CheckForNull
    private List zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgeb(zzgap zzgapVar, boolean z) {
        super(zzgapVar, true, true);
        List zza;
        if (zzgapVar.isEmpty()) {
            zza = Collections.emptyList();
        } else {
            zza = zzgbi.zza(zzgapVar.size());
        }
        for (int i = 0; i < zzgapVar.size(); i++) {
            zza.add(null);
        }
        this.zza = zza;
    }

    abstract Object zzH(List list);

    @Override // com.google.android.gms.internal.ads.zzgdq
    final void zzg(int i, Object obj) {
        List list = this.zza;
        if (list != null) {
            list.set(i, new zzgea(obj));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdq
    final void zzv() {
        List list = this.zza;
        if (list != null) {
            zzd(zzH(list));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgdq
    public final void zzz(int i) {
        super.zzz(i);
        this.zza = null;
    }
}
