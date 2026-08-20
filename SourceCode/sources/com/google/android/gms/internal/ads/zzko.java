package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzko {
    private final zzaa zza;
    private final SparseArray zzb;

    public zzko(zzaa zzaaVar, SparseArray sparseArray) {
        this.zza = zzaaVar;
        SparseArray sparseArray2 = new SparseArray(zzaaVar.zzb());
        for (int i = 0; i < zzaaVar.zzb(); i++) {
            int zza = zzaaVar.zza(i);
            zzkn zzknVar = (zzkn) sparseArray.get(zza);
            zzknVar.getClass();
            sparseArray2.append(zza, zzknVar);
        }
        this.zzb = sparseArray2;
    }

    public final int zza(int i) {
        return this.zza.zza(i);
    }

    public final int zzb() {
        return this.zza.zzb();
    }

    public final zzkn zzc(int i) {
        zzkn zzknVar = (zzkn) this.zzb.get(i);
        zzknVar.getClass();
        return zzknVar;
    }

    public final boolean zzd(int i) {
        return this.zza.zzc(i);
    }
}
