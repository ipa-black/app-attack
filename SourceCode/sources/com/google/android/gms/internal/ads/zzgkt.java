package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgkt implements zzgkj {
    private final zzgke zza;
    private final int zzb;

    private zzgkt(zzgke zzgkeVar, int i) {
        this.zza = zzgkeVar;
        this.zzb = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgkt zzc(int i) throws GeneralSecurityException {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 1) {
                return new zzgkt(new zzgke("HmacSha512"), 3);
            }
            return new zzgkt(new zzgke("HmacSha384"), 2);
        }
        return new zzgkt(new zzgke("HmacSha256"), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzgkj
    public final zzgkk zza(byte[] bArr) throws GeneralSecurityException {
        KeyPair zzc = zzgvc.zzc(zzgvc.zzk(this.zzb));
        byte[] zzg = zzgvc.zzg((ECPrivateKey) zzc.getPrivate(), zzgvc.zzj(zzgvc.zzk(this.zzb), 1, bArr));
        byte[] zzl = zzgvc.zzl(this.zzb, 1, ((ECPublicKey) zzc.getPublic()).getW());
        byte[] zzb = zzgut.zzb(zzl, bArr);
        byte[] zzd = zzgks.zzd(zzb());
        zzgke zzgkeVar = this.zza;
        return new zzgkk(zzgkeVar.zzb(null, zzg, "eae_prk", zzb, "shared_secret", zzd, zzgkeVar.zza()), zzl);
    }

    @Override // com.google.android.gms.internal.ads.zzgkj
    public final byte[] zzb() throws GeneralSecurityException {
        int i = this.zzb - 1;
        if (i != 0) {
            return i != 1 ? zzgks.zze : zzgks.zzd;
        }
        return zzgks.zzc;
    }
}
