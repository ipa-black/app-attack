package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgah extends zzgaj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgah() {
        super(null);
    }

    static final zzgaj zzf(int i) {
        zzgaj zzgajVar;
        zzgaj zzgajVar2;
        zzgaj zzgajVar3;
        if (i < 0) {
            zzgajVar3 = zzgaj.zzb;
            return zzgajVar3;
        } else if (i > 0) {
            zzgajVar2 = zzgaj.zzc;
            return zzgajVar2;
        } else {
            zzgajVar = zzgaj.zza;
            return zzgajVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgaj
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgaj
    public final zzgaj zzb(int i, int i2) {
        return zzf(i < i2 ? -1 : i > i2 ? 1 : 0);
    }

    @Override // com.google.android.gms.internal.ads.zzgaj
    public final zzgaj zzc(Object obj, Object obj2, Comparator comparator) {
        return zzf(comparator.compare(obj, obj2));
    }

    @Override // com.google.android.gms.internal.ads.zzgaj
    public final zzgaj zzd(boolean z, boolean z2) {
        return zzf(zzgcy.zza(z, z2));
    }

    @Override // com.google.android.gms.internal.ads.zzgaj
    public final zzgaj zze(boolean z, boolean z2) {
        return zzf(zzgcy.zza(false, false));
    }
}
