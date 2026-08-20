package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaht implements zzaic {
    private zzaf zza;
    private zzel zzb;
    private zzaaq zzc;

    public zzaht(String str) {
        zzad zzadVar = new zzad();
        zzadVar.zzS(str);
        this.zza = zzadVar.zzY();
    }

    @Override // com.google.android.gms.internal.ads.zzaic
    public final void zza(zzef zzefVar) {
        zzdd.zzb(this.zzb);
        int i = zzen.zza;
        long zzd = this.zzb.zzd();
        long zze = this.zzb.zze();
        if (zzd == C.TIME_UNSET || zze == C.TIME_UNSET) {
            return;
        }
        zzaf zzafVar = this.zza;
        if (zze != zzafVar.zzq) {
            zzad zzb = zzafVar.zzb();
            zzb.zzW(zze);
            zzaf zzY = zzb.zzY();
            this.zza = zzY;
            this.zzc.zzk(zzY);
        }
        int zza = zzefVar.zza();
        this.zzc.zzq(zzefVar, zza);
        this.zzc.zzs(zzd, 1, zza, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaic
    public final void zzb(zzel zzelVar, zzzm zzzmVar, zzaip zzaipVar) {
        this.zzb = zzelVar;
        zzaipVar.zzc();
        zzaaq zzv = zzzmVar.zzv(zzaipVar.zza(), 5);
        this.zzc = zzv;
        zzv.zzk(this.zza);
    }
}
