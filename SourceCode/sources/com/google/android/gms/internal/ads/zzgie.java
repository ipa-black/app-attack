package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgie extends zzgli {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgie() {
        super(zzgqb.class, new zzgic(zzgfw.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzglg zzg(int i, int i2) {
        zzgqd zzc = zzgqe.zzc();
        zzc.zza(i);
        return new zzglg((zzgqe) zzc.zzak(), i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzglh zza() {
        return new zzgid(this, zzgqe.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzgsv zzb() {
        return zzgsv.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* synthetic */ zzgzn zzc(zzgwv zzgwvVar) throws zzgyp {
        return zzgqb.zze(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final String zzd() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* bridge */ /* synthetic */ void zze(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgqb zzgqbVar = (zzgqb) zzgznVar;
        zzgvx.zzb(zzgqbVar.zza(), 0);
        zzgvx.zza(zzgqbVar.zzf().zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final int zzf() {
        return 2;
    }
}
