package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgkm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgkf zza(zzgsl zzgslVar) throws GeneralSecurityException {
        if (zzgslVar.zze() == 3) {
            return new zzgkc(16);
        }
        if (zzgslVar.zze() == 4) {
            return new zzgkc(32);
        }
        if (zzgslVar.zze() == 5) {
            return new zzgkd();
        }
        throw new IllegalArgumentException("Unrecognized HPKE AEAD identifier");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgkj zzb(zzgsl zzgslVar) throws GeneralSecurityException {
        if (zzgslVar.zzg() == 3) {
            return new zzgkv(new zzgke("HmacSha256"));
        }
        if (zzgslVar.zzg() == 4) {
            return zzgkt.zzc(1);
        }
        if (zzgslVar.zzg() == 5) {
            return zzgkt.zzc(2);
        }
        if (zzgslVar.zzg() == 6) {
            return zzgkt.zzc(3);
        }
        throw new IllegalArgumentException("Unrecognized HPKE KEM identifier");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgke zzc(zzgsl zzgslVar) {
        if (zzgslVar.zzf() == 3) {
            return new zzgke("HmacSha256");
        }
        if (zzgslVar.zzf() == 4) {
            return new zzgke("HmacSha384");
        }
        if (zzgslVar.zzf() == 5) {
            return new zzgke("HmacSha512");
        }
        throw new IllegalArgumentException("Unrecognized HPKE KDF identifier");
    }
}
