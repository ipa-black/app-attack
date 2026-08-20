package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzggw {
    private final zzgtj zza;
    private final zzgoj zzb;

    private zzggw(zzgtj zzgtjVar) {
        this.zza = zzgtjVar;
        this.zzb = zzgoj.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final zzggw zza(zzgtj zzgtjVar) throws GeneralSecurityException {
        if (zzgtjVar == null || zzgtjVar.zza() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new zzggw(zzgtjVar);
    }

    public static final zzggw zzb(zzggp zzggpVar) throws GeneralSecurityException {
        zzgln zzglnVar = new zzgln(zzgmg.zza(zzggpVar.zza()));
        zzggu zzgguVar = new zzggu();
        zzggs zzggsVar = new zzggs(zzglnVar, null);
        zzggsVar.zzd();
        zzggsVar.zze();
        zzgguVar.zza(zzggsVar);
        return zzgguVar.zzb();
    }

    public final String toString() {
        return zzgho.zza(this.zza).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzgtj zzc() {
        return this.zza;
    }

    public final Object zzd(Class cls) throws GeneralSecurityException {
        Class zze = zzghm.zze(cls);
        if (zze == null) {
            throw new GeneralSecurityException("No wrapper found for ".concat(String.valueOf(cls.getName())));
        }
        zzgho.zzb(this.zza);
        zzghd zzghdVar = new zzghd(zze, null);
        zzghdVar.zzc(this.zzb);
        for (zzgti zzgtiVar : this.zza.zzh()) {
            if (zzgtiVar.zzk() == 3) {
                Object zzf = zzghm.zzf(zzgtiVar.zzc(), zze);
                if (zzgtiVar.zza() == this.zza.zzc()) {
                    zzghdVar.zza(zzf, zzgtiVar);
                } else {
                    zzghdVar.zzb(zzf, zzgtiVar);
                }
            }
        }
        return zzghm.zzj(zzghdVar.zzd(), cls);
    }
}
