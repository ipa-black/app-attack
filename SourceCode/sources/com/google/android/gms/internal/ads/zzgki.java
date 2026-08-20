package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgki implements zzgge {
    private static final byte[] zza = new byte[0];
    private final zzgsr zzb;
    private final zzgkj zzc;
    private final zzgkf zzd;
    private final zzgke zze;

    private zzgki(zzgsr zzgsrVar, zzgkj zzgkjVar, zzgke zzgkeVar, zzgkf zzgkfVar, byte[] bArr) {
        this.zzb = zzgsrVar;
        this.zzc = zzgkjVar;
        this.zze = zzgkeVar;
        this.zzd = zzgkfVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgki zzb(zzgsr zzgsrVar) throws GeneralSecurityException {
        if (zzgsrVar.zzh().zzD()) {
            throw new IllegalArgumentException("HpkePublicKey.public_key is empty.");
        }
        zzgsl zzc = zzgsrVar.zzc();
        return new zzgki(zzgsrVar, zzgkm.zzb(zzc), zzgkm.zzc(zzc), zzgkm.zza(zzc), null);
    }

    @Override // com.google.android.gms.internal.ads.zzgge
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        byte[] bArr3 = bArr2;
        zzgsr zzgsrVar = this.zzb;
        zzgkj zzgkjVar = this.zzc;
        zzgke zzgkeVar = this.zze;
        zzgkf zzgkfVar = this.zzd;
        zzgkk zza2 = zzgkjVar.zza(zzgsrVar.zzh().zzE());
        zzgkg zzc = zzgkg.zzc(zza2.zza(), zza2.zzb(), zzgkjVar, zzgkeVar, zzgkfVar, bArr3);
        return zzgut.zzb(zzc.zza(), zzc.zzb(bArr, zza));
    }
}
