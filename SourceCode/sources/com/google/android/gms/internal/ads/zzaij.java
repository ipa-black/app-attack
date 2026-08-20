package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaij implements zzaic {
    final /* synthetic */ zzail zza;
    private final zzee zzb = new zzee(new byte[4], 4);

    public zzaij(zzail zzailVar) {
        this.zza = zzailVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaic
    public final void zza(zzef zzefVar) {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        SparseArray sparseArray3;
        int i;
        if (zzefVar.zzk() == 0 && (zzefVar.zzk() & 128) != 0) {
            zzefVar.zzG(6);
            int zza = zzefVar.zza() / 4;
            for (int i2 = 0; i2 < zza; i2++) {
                zzefVar.zzA(this.zzb, 4);
                int zzc = this.zzb.zzc(16);
                this.zzb.zzj(3);
                if (zzc == 0) {
                    this.zzb.zzj(13);
                } else {
                    int zzc2 = this.zzb.zzc(13);
                    sparseArray2 = this.zza.zzf;
                    if (sparseArray2.get(zzc2) == null) {
                        zzail zzailVar = this.zza;
                        sparseArray3 = zzailVar.zzf;
                        sparseArray3.put(zzc2, new zzaid(new zzaik(zzailVar, zzc2)));
                        zzail zzailVar2 = this.zza;
                        i = zzailVar2.zzl;
                        zzailVar2.zzl = i + 1;
                    }
                }
            }
            sparseArray = this.zza.zzf;
            sparseArray.remove(0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaic
    public final void zzb(zzel zzelVar, zzzm zzzmVar, zzaip zzaipVar) {
    }
}
