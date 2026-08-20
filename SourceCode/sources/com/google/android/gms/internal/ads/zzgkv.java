package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgkv implements zzgkj {
    private final zzgke zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgkv(zzgke zzgkeVar) {
        this.zza = zzgkeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgkj
    public final zzgkk zza(byte[] bArr) throws GeneralSecurityException {
        byte[] zzb = zzgvy.zzb();
        byte[] zza = zzgvy.zza(zzb, bArr);
        byte[] zzc = zzgvy.zzc(zzb);
        byte[] zzb2 = zzgut.zzb(zzc, bArr);
        byte[] zzd = zzgks.zzd(zzgks.zzb);
        zzgke zzgkeVar = this.zza;
        return new zzgkk(zzgkeVar.zzb(null, zza, "eae_prk", zzb2, "shared_secret", zzd, zzgkeVar.zza()), zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzgkj
    public final byte[] zzb() throws GeneralSecurityException {
        if (Arrays.equals(this.zza.zzc(), zzgks.zzf)) {
            return zzgks.zzb;
        }
        throw new GeneralSecurityException("Could not determine HPKE KEM ID");
    }
}
