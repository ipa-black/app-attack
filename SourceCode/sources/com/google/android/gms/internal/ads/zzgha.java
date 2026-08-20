package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@Deprecated
/* loaded from: classes4.dex */
public final class zzgha {
    @Deprecated
    public static final zzggw zza(byte[] bArr) throws GeneralSecurityException {
        try {
            zzgtj zzg = zzgtj.zzg(bArr, zzgxp.zza());
            for (zzgti zzgtiVar : zzg.zzh()) {
                if (zzgtiVar.zzc().zzc() == zzgsv.UNKNOWN_KEYMATERIAL || zzgtiVar.zzc().zzc() == zzgsv.SYMMETRIC || zzgtiVar.zzc().zzc() == zzgsv.ASYMMETRIC_PRIVATE) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            return zzggw.zza(zzg);
        } catch (zzgyp unused) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
