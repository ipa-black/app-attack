package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgjl extends zzgli {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgjl() {
        super(zzgqn.class, new zzgjj(zzggc.class));
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzglh zza() {
        return new zzgjk(this, zzgqq.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzgsv zzb() {
        return zzgsv.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* synthetic */ zzgzn zzc(zzgwv zzgwvVar) throws zzgyp {
        return zzgqn.zze(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final String zzd() {
        return "type.googleapis.com/google.crypto.tink.AesSivKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* bridge */ /* synthetic */ void zze(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgqn zzgqnVar = (zzgqn) zzgznVar;
        zzgvx.zzb(zzgqnVar.zza(), 0);
        if (zzgqnVar.zzf().zzd() == 64) {
            return;
        }
        int zzd = zzgqnVar.zzf().zzd();
        throw new InvalidKeyException("invalid key size: " + zzd + ". Valid keys must have 64 bytes.");
    }
}
