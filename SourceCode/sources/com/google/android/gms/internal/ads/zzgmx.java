package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgmx extends zzgli {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgmx() {
        super(zzgou.class, new zzgmv(zzggz.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzm(zzgpa zzgpaVar) throws GeneralSecurityException {
        if (zzgpaVar.zza() < 10) {
            throw new GeneralSecurityException("tag size too short");
        }
        if (zzgpaVar.zza() > 16) {
            throw new GeneralSecurityException("tag size too long");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzn(int i) throws GeneralSecurityException {
        if (i != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzglh zza() {
        return new zzgmw(this, zzgox.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzgsv zzb() {
        return zzgsv.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* synthetic */ zzgzn zzc(zzgwv zzgwvVar) throws zzgyp {
        return zzgou.zze(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final String zzd() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* bridge */ /* synthetic */ void zze(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgou zzgouVar = (zzgou) zzgznVar;
        zzgvx.zzb(zzgouVar.zza(), 0);
        zzn(zzgouVar.zzg().zzd());
        zzm(zzgouVar.zzf());
    }
}
