package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgnm extends zzgmd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgnm(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzgmd
    public final /* bridge */ /* synthetic */ Object zza(zzgzn zzgznVar) throws GeneralSecurityException {
        zzgrx zzgrxVar = (zzgrx) zzgznVar;
        int zzg = zzgrxVar.zzg().zzg();
        SecretKeySpec secretKeySpec = new SecretKeySpec(zzgrxVar.zzh().zzE(), "HMAC");
        int zza = zzgrxVar.zzg().zza();
        int i = zzg - 2;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            return new zzgvt(new zzgvs("HMACSHA224", secretKeySpec), zza);
                        }
                        throw new GeneralSecurityException("unknown hash");
                    }
                    return new zzgvt(new zzgvs("HMACSHA512", secretKeySpec), zza);
                }
                return new zzgvt(new zzgvs("HMACSHA256", secretKeySpec), zza);
            }
            return new zzgvt(new zzgvs("HMACSHA384", secretKeySpec), zza);
        }
        return new zzgvt(new zzgvs("HMACSHA1", secretKeySpec), zza);
    }
}
