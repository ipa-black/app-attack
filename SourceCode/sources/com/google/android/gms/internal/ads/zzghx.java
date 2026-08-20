package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzghx extends zzglh {
    final /* synthetic */ zzghy zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzghx(zzghy zzghyVar, Class cls) {
        super(cls);
        this.zza = zzghyVar;
    }

    public static final zzgpj zzf(zzgpm zzgpmVar) throws GeneralSecurityException {
        zzgpi zzc = zzgpj.zzc();
        zzc.zzb(zzgpmVar.zzg());
        zzc.zza(zzgwv.zzv(zzgvv.zza(zzgpmVar.zza())));
        zzc.zzc(0);
        return (zzgpj) zzc.zzak();
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* bridge */ /* synthetic */ zzgzn zza(zzgzn zzgznVar) throws GeneralSecurityException {
        return zzf((zzgpm) zzgznVar);
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    public final /* synthetic */ zzgzn zzb(zzgwv zzgwvVar) throws zzgyp {
        return zzgpm.zzf(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzglh
    /* renamed from: zze */
    public final void zzd(zzgpm zzgpmVar) throws GeneralSecurityException {
        zzgvx.zza(zzgpmVar.zza());
        zzghy zzghyVar = this.zza;
        zzghy.zzm(zzgpmVar.zzg());
    }
}
