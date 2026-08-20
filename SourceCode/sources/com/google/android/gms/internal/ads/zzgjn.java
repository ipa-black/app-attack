package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgjn implements zzggc {
    private final zzghi zza;
    private final zzgok zzb;
    private final zzgok zzc;

    public zzgjn(zzghi zzghiVar) {
        zzgok zzgokVar;
        this.zza = zzghiVar;
        if (zzghiVar.zzf()) {
            zzgol zzb = zzglt.zza().zzb();
            zzgoq zza = zzglq.zza(zzghiVar);
            this.zzb = zzb.zza(zza, "daead", "encrypt");
            zzgokVar = zzb.zza(zza, "daead", "decrypt");
        } else {
            zzgokVar = zzglq.zza;
            this.zzb = zzgokVar;
        }
        this.zzc = zzgokVar;
    }

    @Override // com.google.android.gms.internal.ads.zzggc
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] zzb = zzgut.zzb(this.zza.zza().zzf(), ((zzggc) this.zza.zza().zze()).zza(bArr, bArr2));
        this.zza.zza().zza();
        int length = bArr.length;
        return zzb;
    }
}
