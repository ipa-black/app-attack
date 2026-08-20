package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgkr extends zzgli {
    public zzgkr() {
        super(zzgsr.class, new zzgkq(zzgge.class));
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzgsv zzb() {
        return zzgsv.ASYMMETRIC_PUBLIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* synthetic */ zzgzn zzc(zzgwv zzgwvVar) throws zzgyp {
        return zzgsr.zzg(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final String zzd() {
        return "type.googleapis.com/google.crypto.tink.HpkePublicKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* bridge */ /* synthetic */ void zze(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgsr zzgsrVar = (zzgsr) zzgznVar;
        zzgvx.zzb(zzgsrVar.zza(), 0);
        if (!zzgsrVar.zzl()) {
            throw new GeneralSecurityException("Missing HPKE key params.");
        }
        zzgks.zza(zzgsrVar.zzc());
    }
}
