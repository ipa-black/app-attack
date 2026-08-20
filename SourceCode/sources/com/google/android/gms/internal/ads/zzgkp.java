package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgkp extends zzgme {
    public zzgkp() {
        super(zzgso.class, zzgsr.class, new zzgkn(zzggd.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzglg zzg(int i, int i2, int i3, int i4) {
        zzgsk zza = zzgsl.zza();
        zza.zzc(i);
        zza.zzb(i2);
        zza.zza(i3);
        zzgsh zza2 = zzgsi.zza();
        zza2.zza((zzgsl) zza.zzak());
        return new zzglg((zzgsi) zza2.zzak(), i4);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzglh zza() {
        return new zzgko(this, zzgsi.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzgsv zzb() {
        return zzgsv.ASYMMETRIC_PRIVATE;
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* synthetic */ zzgzn zzc(zzgwv zzgwvVar) throws zzgyp {
        return zzgso.zze(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final String zzd() {
        return "type.googleapis.com/google.crypto.tink.HpkePrivateKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* bridge */ /* synthetic */ void zze(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgso zzgsoVar = (zzgso) zzgznVar;
        if (zzgsoVar.zzg().zzD()) {
            throw new GeneralSecurityException("Private key is empty.");
        }
        if (!zzgsoVar.zzk()) {
            throw new GeneralSecurityException("Missing public key.");
        }
        zzgvx.zzb(zzgsoVar.zza(), 0);
        zzgks.zza(zzgsoVar.zzf().zzc());
    }
}
