package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzjn implements zzsr, zzpj {
    final /* synthetic */ zzjr zza;
    private final zzjp zzb;
    private zzsq zzc;
    private zzpi zzd;

    public zzjn(zzjr zzjrVar, zzjp zzjpVar) {
        zzsq zzsqVar;
        zzpi zzpiVar;
        this.zza = zzjrVar;
        zzsqVar = zzjrVar.zzf;
        this.zzc = zzsqVar;
        zzpiVar = zzjrVar.zzg;
        this.zzd = zzpiVar;
        this.zzb = zzjpVar;
    }

    private final boolean zzf(int i, zzsh zzshVar) {
        zzsq zzsqVar;
        zzpi zzpiVar;
        zzsh zzshVar2 = null;
        if (zzshVar != null) {
            zzjp zzjpVar = this.zzb;
            int i2 = 0;
            while (true) {
                if (i2 >= zzjpVar.zzc.size()) {
                    break;
                } else if (((zzsh) zzjpVar.zzc.get(i2)).zzd == zzshVar.zzd) {
                    zzshVar2 = zzshVar.zzc(Pair.create(zzjpVar.zzb, zzshVar.zza));
                    break;
                } else {
                    i2++;
                }
            }
            if (zzshVar2 == null) {
                return false;
            }
        }
        int i3 = i + this.zzb.zzd;
        zzsq zzsqVar2 = this.zzc;
        if (zzsqVar2.zza != i3 || !zzen.zzT(zzsqVar2.zzb, zzshVar2)) {
            zzsqVar = this.zza.zzf;
            this.zzc = zzsqVar.zza(i3, zzshVar2, 0L);
        }
        zzpi zzpiVar2 = this.zzd;
        if (zzpiVar2.zza == i3 && zzen.zzT(zzpiVar2.zzb, zzshVar2)) {
            return true;
        }
        zzpiVar = this.zza.zzg;
        this.zzd = zzpiVar.zza(i3, zzshVar2);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzaf(int i, zzsh zzshVar, zzsd zzsdVar) {
        if (zzf(i, zzshVar)) {
            this.zzc.zzc(zzsdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzag(int i, zzsh zzshVar, zzry zzryVar, zzsd zzsdVar) {
        if (zzf(i, zzshVar)) {
            this.zzc.zze(zzryVar, zzsdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzah(int i, zzsh zzshVar, zzry zzryVar, zzsd zzsdVar) {
        if (zzf(i, zzshVar)) {
            this.zzc.zzg(zzryVar, zzsdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzai(int i, zzsh zzshVar, zzry zzryVar, zzsd zzsdVar, IOException iOException, boolean z) {
        if (zzf(i, zzshVar)) {
            this.zzc.zzi(zzryVar, zzsdVar, iOException, z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzaj(int i, zzsh zzshVar, zzry zzryVar, zzsd zzsdVar) {
        if (zzf(i, zzshVar)) {
            this.zzc.zzk(zzryVar, zzsdVar);
        }
    }
}
