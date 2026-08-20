package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgkh implements zzggd {
    private final zzgkl zza;
    private final zzgkj zzb;
    private final zzgkf zzc;
    private final zzgke zzd;

    private zzgkh(zzgkl zzgklVar, zzgkj zzgkjVar, zzgke zzgkeVar, zzgkf zzgkfVar, int i, byte[] bArr) {
        this.zza = zzgklVar;
        this.zzb = zzgkjVar;
        this.zzd = zzgkeVar;
        this.zzc = zzgkfVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgkh zza(zzgso zzgsoVar) throws GeneralSecurityException {
        int i;
        zzgkl zza;
        if (!zzgsoVar.zzk()) {
            throw new IllegalArgumentException("HpkePrivateKey is missing public_key field.");
        }
        if (!zzgsoVar.zzf().zzl()) {
            throw new IllegalArgumentException("HpkePrivateKey.public_key is missing params field.");
        }
        if (zzgsoVar.zzg().zzD()) {
            throw new IllegalArgumentException("HpkePrivateKey.private_key is empty.");
        }
        zzgsl zzc = zzgsoVar.zzf().zzc();
        zzgkj zzb = zzgkm.zzb(zzc);
        zzgke zzc2 = zzgkm.zzc(zzc);
        zzgkf zza2 = zzgkm.zza(zzc);
        int zzg = zzc.zzg();
        int i2 = zzg - 2;
        if (i2 == 1) {
            i = 32;
        } else if (i2 == 2) {
            i = 65;
        } else if (i2 == 3) {
            i = 97;
        } else if (i2 != 4) {
            throw new IllegalArgumentException("Unable to determine KEM-encoding length for ".concat(zzgsf.zza(zzg)));
        } else {
            i = 133;
        }
        int zzg2 = zzgsoVar.zzf().zzc().zzg() - 2;
        if (zzg2 == 1) {
            zza = zzgkw.zza(zzgsoVar.zzg().zzE());
        } else if (zzg2 == 2 || zzg2 == 3 || zzg2 == 4) {
            zza = zzgku.zza(zzgsoVar.zzg().zzE(), zzgsoVar.zzf().zzh().zzE(), zzgks.zzg(zzgsoVar.zzf().zzc().zzg()));
        } else {
            throw new GeneralSecurityException("Unrecognized HPKE KEM identifier");
        }
        return new zzgkh(zza, zzb, zzc2, zza2, i, null);
    }
}
