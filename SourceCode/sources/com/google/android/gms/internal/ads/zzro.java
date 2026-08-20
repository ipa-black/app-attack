package com.google.android.gms.internal.ads;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzro implements zzsr, zzpj {
    final /* synthetic */ zzrq zza;
    private final Object zzb;
    private zzsq zzc;
    private zzpi zzd;

    public zzro(zzrq zzrqVar, Object obj) {
        this.zza = zzrqVar;
        this.zzc = zzrqVar.zze(null);
        this.zzd = zzrqVar.zzc(null);
        this.zzb = obj;
    }

    private final zzsd zzf(zzsd zzsdVar) {
        zzrq zzrqVar = this.zza;
        Object obj = this.zzb;
        long j = zzsdVar.zzc;
        zzrqVar.zzw(obj, j);
        zzrq zzrqVar2 = this.zza;
        Object obj2 = this.zzb;
        long j2 = zzsdVar.zzd;
        zzrqVar2.zzw(obj2, j2);
        return (j == zzsdVar.zzc && j2 == zzsdVar.zzd) ? zzsdVar : new zzsd(1, zzsdVar.zza, zzsdVar.zzb, 0, null, j, j2);
    }

    private final boolean zzg(int i, zzsh zzshVar) {
        zzsh zzshVar2;
        if (zzshVar != null) {
            zzshVar2 = this.zza.zzx(this.zzb, zzshVar);
            if (zzshVar2 == null) {
                return false;
            }
        } else {
            zzshVar2 = null;
        }
        this.zza.zzv(this.zzb, i);
        zzsq zzsqVar = this.zzc;
        if (zzsqVar.zza != i || !zzen.zzT(zzsqVar.zzb, zzshVar2)) {
            this.zzc = this.zza.zzf(i, zzshVar2, 0L);
        }
        zzpi zzpiVar = this.zzd;
        if (zzpiVar.zza == i && zzen.zzT(zzpiVar.zzb, zzshVar2)) {
            return true;
        }
        this.zzd = this.zza.zzd(i, zzshVar2);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzaf(int i, zzsh zzshVar, zzsd zzsdVar) {
        if (zzg(i, zzshVar)) {
            this.zzc.zzc(zzf(zzsdVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzag(int i, zzsh zzshVar, zzry zzryVar, zzsd zzsdVar) {
        if (zzg(i, zzshVar)) {
            this.zzc.zze(zzryVar, zzf(zzsdVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzah(int i, zzsh zzshVar, zzry zzryVar, zzsd zzsdVar) {
        if (zzg(i, zzshVar)) {
            this.zzc.zzg(zzryVar, zzf(zzsdVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzai(int i, zzsh zzshVar, zzry zzryVar, zzsd zzsdVar, IOException iOException, boolean z) {
        if (zzg(i, zzshVar)) {
            this.zzc.zzi(zzryVar, zzf(zzsdVar), iOException, z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzaj(int i, zzsh zzshVar, zzry zzryVar, zzsd zzsdVar) {
        if (zzg(i, zzshVar)) {
            this.zzc.zzk(zzryVar, zzf(zzsdVar));
        }
    }
}
