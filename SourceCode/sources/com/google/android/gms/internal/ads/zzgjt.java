package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgjt extends zzgli {
    public zzgjt() {
        super(zzgrn.class, new zzgjs(zzgge.class));
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzgsv zzb() {
        return zzgsv.ASYMMETRIC_PUBLIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* synthetic */ zzgzn zzc(zzgwv zzgwvVar) throws zzgyp {
        return zzgrn.zzg(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final String zzd() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* bridge */ /* synthetic */ void zze(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgrn zzgrnVar = (zzgrn) zzgznVar;
        zzgvx.zzb(zzgrnVar.zza(), 0);
        zzgka.zza(zzgrnVar.zzc());
    }
}
