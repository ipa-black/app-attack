package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgih extends zzgli {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgih() {
        super(zzgqh.class, new zzgif(zzgfw.class));
    }

    public static void zzg(boolean z) throws GeneralSecurityException {
        if (zzm()) {
            zzghm.zzn(new zzgih(), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzglg zzh(int i, int i2) {
        zzgqj zzc = zzgqk.zzc();
        zzc.zza(i);
        return new zzglg((zzgqk) zzc.zzak(), i2);
    }

    private static boolean zzm() {
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            return true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzglh zza() {
        return new zzgig(this, zzgqk.class);
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final zzgsv zzb() {
        return zzgsv.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* synthetic */ zzgzn zzc(zzgwv zzgwvVar) throws zzgyp {
        return zzgqh.zze(zzgwvVar, zzgxp.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final String zzd() {
        return "type.googleapis.com/google.crypto.tink.AesGcmSivKey";
    }

    @Override // com.google.android.gms.internal.ads.zzgli
    public final /* bridge */ /* synthetic */ void zze(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgqh zzgqhVar = (zzgqh) zzgznVar;
        zzgvx.zzb(zzgqhVar.zza(), 0);
        zzgvx.zza(zzgqhVar.zzf().zzd());
    }
}
