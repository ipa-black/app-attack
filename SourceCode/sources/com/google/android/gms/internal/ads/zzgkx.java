package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgkx {
    private final zzgfw zza;
    private final zzggc zzb;

    public zzgkx(zzgfw zzgfwVar) {
        this.zza = zzgfwVar;
        this.zzb = null;
    }

    public zzgkx(zzggc zzggcVar) {
        this.zza = null;
        this.zzb = zzggcVar;
    }

    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        zzgfw zzgfwVar = this.zza;
        return zzgfwVar != null ? zzgfwVar.zzb(bArr, bArr2) : this.zzb.zza(bArr, bArr2);
    }
}
