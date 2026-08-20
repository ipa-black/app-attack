package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgku implements zzgkl {
    private final zzgwa zza;
    private final zzgwa zzb;

    private zzgku(byte[] bArr, byte[] bArr2) {
        this.zza = zzgwa.zzb(bArr);
        this.zzb = zzgwa.zzb(bArr2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgku zza(byte[] bArr, byte[] bArr2, int i) throws GeneralSecurityException {
        zzgvc.zze(zzgvc.zzj(zzgvc.zzk(i), 1, bArr2), zzgvc.zzh(i, bArr));
        return new zzgku(bArr, bArr2);
    }
}
