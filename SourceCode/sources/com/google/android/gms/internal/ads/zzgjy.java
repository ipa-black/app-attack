package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgjy implements zzgge {
    final zzghi zza;
    private final zzgok zzb;

    public zzgjy(zzghi zzghiVar) {
        this.zza = zzghiVar;
        this.zzb = zzghiVar.zzf() ? zzglt.zza().zzb().zza(zzglq.zza(zzghiVar), "hybrid_encrypt", "encrypt") : zzglq.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgge
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        zzghi zzghiVar = this.zza;
        if (zzghiVar.zza() == null) {
            throw new GeneralSecurityException("keyset without primary key");
        }
        byte[] zzb = zzgut.zzb(zzghiVar.zza().zzf(), ((zzgge) this.zza.zza().zze()).zza(bArr, bArr2));
        this.zza.zza().zza();
        int length = bArr.length;
        return zzb;
    }
}
