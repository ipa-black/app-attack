package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgkg {
    private static final byte[] zza = new byte[0];
    private final zzgkf zzb;
    private final BigInteger zzc;
    private final byte[] zzd;
    private final byte[] zze;
    private final byte[] zzf;
    private BigInteger zzg = BigInteger.ZERO;

    private zzgkg(byte[] bArr, byte[] bArr2, byte[] bArr3, BigInteger bigInteger, zzgkf zzgkfVar) {
        this.zzf = bArr;
        this.zzd = bArr2;
        this.zze = bArr3;
        this.zzc = bigInteger;
        this.zzb = zzgkfVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgkg zzc(byte[] bArr, byte[] bArr2, zzgkj zzgkjVar, zzgke zzgkeVar, zzgkf zzgkfVar, byte[] bArr3) throws GeneralSecurityException {
        byte[] zzb = zzgks.zzb(zzgkjVar.zzb(), zzgkeVar.zzc(), zzgkfVar.zzb());
        byte[] bArr4 = zzgks.zzl;
        byte[] bArr5 = zza;
        byte[] zzb2 = zzgut.zzb(zzgks.zza, zzgkeVar.zze(bArr4, bArr5, "psk_id_hash", zzb), zzgkeVar.zze(zzgks.zzl, bArr3, "info_hash", zzb));
        byte[] zze = zzgkeVar.zze(bArr2, bArr5, "secret", zzb);
        return new zzgkg(bArr, zzgkeVar.zzd(zze, zzb2, "key", zzb, zzgkfVar.zza()), zzgkeVar.zzd(zze, zzb2, "base_nonce", zzb, 12), BigInteger.ONE.shiftLeft(96).subtract(BigInteger.ONE), zzgkfVar);
    }

    private final synchronized byte[] zzd() throws GeneralSecurityException {
        byte[] zzc;
        byte[] bArr = this.zze;
        byte[] byteArray = this.zzg.toByteArray();
        int length = byteArray.length;
        if (length != 12) {
            if (length > 13) {
                throw new GeneralSecurityException("integer too large");
            }
            if (length == 13) {
                if (byteArray[0] == 0) {
                    byteArray = Arrays.copyOfRange(byteArray, 1, 13);
                } else {
                    throw new GeneralSecurityException("integer too large");
                }
            } else {
                byte[] bArr2 = new byte[12];
                System.arraycopy(byteArray, 0, bArr2, 12 - length, length);
                byteArray = bArr2;
            }
        }
        zzc = zzgut.zzc(bArr, byteArray);
        if (this.zzg.compareTo(this.zzc) >= 0) {
            throw new GeneralSecurityException("message limit reached");
        }
        this.zzg = this.zzg.add(BigInteger.ONE);
        return zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] zza() {
        return this.zzf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] zzb(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return this.zzb.zzc(this.zzd, zzd(), bArr, bArr2);
    }
}
