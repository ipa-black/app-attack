package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgoe implements zzggz {
    private final zzghi zza;
    private final zzgok zzb;
    private final zzgok zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgoe(zzghi zzghiVar, zzgod zzgodVar) {
        zzgok zzgokVar;
        this.zza = zzghiVar;
        if (zzghiVar.zzf()) {
            zzgol zzb = zzglt.zza().zzb();
            zzgoq zza = zzglq.zza(zzghiVar);
            this.zzb = zzb.zza(zza, "mac", "compute");
            zzgokVar = zzb.zza(zza, "mac", "verify");
        } else {
            zzgokVar = zzglq.zza;
            this.zzb = zzgokVar;
        }
        this.zzc = zzgokVar;
    }

    @Override // com.google.android.gms.internal.ads.zzggz
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3;
        Logger logger;
        byte[] bArr4;
        int length = bArr.length;
        if (length <= 5) {
            throw new GeneralSecurityException("tag too short");
        }
        byte[] copyOf = Arrays.copyOf(bArr, 5);
        byte[] copyOfRange = Arrays.copyOfRange(bArr, 5, length);
        for (zzghe zzgheVar : this.zza.zze(copyOf)) {
            if (zzgheVar.zzd().equals(zzguc.LEGACY)) {
                bArr4 = zzgof.zzb;
                bArr3 = zzgut.zzb(bArr2, bArr4);
            } else {
                bArr3 = bArr2;
            }
            try {
                ((zzggz) zzgheVar.zze()).zza(copyOfRange, bArr3);
                zzgheVar.zza();
                return;
            } catch (GeneralSecurityException e2) {
                logger = zzgof.zza;
                logger.logp(Level.INFO, "com.google.crypto.tink.mac.MacWrapper$WrappedMac", "verifyMac", "tag prefix matches a key, but cannot verify: ".concat(e2.toString()));
            }
        }
        for (zzghe zzgheVar2 : this.zza.zze(zzggb.zza)) {
            try {
                ((zzggz) zzgheVar2.zze()).zza(bArr, bArr2);
                zzgheVar2.zza();
                return;
            } catch (GeneralSecurityException unused) {
            }
        }
        throw new GeneralSecurityException("invalid MAC");
    }

    @Override // com.google.android.gms.internal.ads.zzggz
    public final byte[] zzb(byte[] bArr) throws GeneralSecurityException {
        byte[] bArr2;
        if (this.zza.zza().zzd().equals(zzguc.LEGACY)) {
            bArr2 = zzgof.zzb;
            bArr = zzgut.zzb(bArr, bArr2);
        }
        byte[] zzb = zzgut.zzb(this.zza.zza().zzf(), ((zzggz) this.zza.zza().zze()).zzb(bArr));
        this.zza.zza().zza();
        return zzb;
    }
}
