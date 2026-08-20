package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzghr implements zzgfw {
    private final zzghi zza;
    private final zzgok zzb;
    private final zzgok zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzghr(zzghi zzghiVar, zzghq zzghqVar) {
        zzgok zzgokVar;
        this.zza = zzghiVar;
        if (zzghiVar.zzf()) {
            zzgol zzb = zzglt.zza().zzb();
            zzgoq zza = zzglq.zza(zzghiVar);
            this.zzb = zzb.zza(zza, "aead", "encrypt");
            zzgokVar = zzb.zza(zza, "aead", "decrypt");
        } else {
            zzgokVar = zzglq.zza;
            this.zzb = zzgokVar;
        }
        this.zzc = zzgokVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgfw
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Logger logger;
        int length = bArr.length;
        if (length > 5) {
            byte[] copyOf = Arrays.copyOf(bArr, 5);
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 5, length);
            for (zzghe zzgheVar : this.zza.zze(copyOf)) {
                try {
                    byte[] zza = ((zzgfw) zzgheVar.zze()).zza(copyOfRange, bArr2);
                    zzgheVar.zza();
                    int length2 = copyOfRange.length;
                    return zza;
                } catch (GeneralSecurityException e2) {
                    logger = zzghs.zza;
                    logger.logp(Level.INFO, "com.google.crypto.tink.aead.AeadWrapper$WrappedAead", "decrypt", "ciphertext prefix matches a key, but cannot decrypt: ".concat(e2.toString()));
                }
            }
        }
        for (zzghe zzgheVar2 : this.zza.zze(zzggb.zza)) {
            try {
                byte[] zza2 = ((zzgfw) zzgheVar2.zze()).zza(bArr, bArr2);
                zzgheVar2.zza();
                int length3 = bArr.length;
                return zza2;
            } catch (GeneralSecurityException unused) {
            }
        }
        throw new GeneralSecurityException("decryption failed");
    }

    @Override // com.google.android.gms.internal.ads.zzgfw
    public final byte[] zzb(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] zzb = zzgut.zzb(this.zza.zza().zzf(), ((zzgfw) this.zza.zza().zze()).zzb(bArr, bArr2));
        this.zza.zza().zza();
        int length = bArr.length;
        return zzb;
    }
}
