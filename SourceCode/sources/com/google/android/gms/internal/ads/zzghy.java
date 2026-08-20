package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzghy extends zzgli {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzghy() {
        super(zzgpj.class, new zzghw(zzgvp.class));
    }

    public static final void zzh(zzgpj zzgpjVar) throws GeneralSecurityException {
        zzgvx.zzb(zzgpjVar.zza(), 0);
        zzgvx.zza(zzgpjVar.zzh().zzd());
        zzm(zzgpjVar.zzg());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void zzm(zzgpp zzgppVar) throws GeneralSecurityException {
        if (zzgppVar.zza() < 12 || zzgppVar.zza() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzglh zza() {
        return new zzghx(this, zzgpm.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzgsv zzb() {
        return zzgsv.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* synthetic */ zzgzn zzc(zzgwv zzgwvVar) throws zzgyp {
        return zzgpj.zzf(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final String zzd() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* bridge */ /* synthetic */ void zze(zzgzn zzgznVar) throws GeneralSecurityException {
        zzh((zzgpj) zzgznVar);
    }
}
