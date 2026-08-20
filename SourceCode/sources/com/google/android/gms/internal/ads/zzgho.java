package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgho {
    public static final Charset zza = Charset.forName(C.UTF8_NAME);

    public static zzgto zza(zzgtj zzgtjVar) {
        zzgtl zza2 = zzgto.zza();
        zza2.zzb(zzgtjVar.zzc());
        for (zzgti zzgtiVar : zzgtjVar.zzh()) {
            zzgtm zza3 = zzgtn.zza();
            zza3.zzc(zzgtiVar.zzc().zzg());
            zza3.zzd(zzgtiVar.zzk());
            zza3.zzb(zzgtiVar.zzf());
            zza3.zza(zzgtiVar.zza());
            zza2.zza((zzgtn) zza3.zzak());
        }
        return (zzgto) zza2.zzak();
    }

    public static void zzb(zzgtj zzgtjVar) throws GeneralSecurityException {
        int zzc = zzgtjVar.zzc();
        int i = 0;
        boolean z = false;
        boolean z2 = true;
        for (zzgti zzgtiVar : zzgtjVar.zzh()) {
            if (zzgtiVar.zzk() == 3) {
                if (zzgtiVar.zzj()) {
                    if (zzgtiVar.zzf() != zzguc.UNKNOWN_PREFIX) {
                        if (zzgtiVar.zzk() != 2) {
                            if (zzgtiVar.zza() == zzc) {
                                if (z) {
                                    throw new GeneralSecurityException("keyset contains multiple primary keys");
                                }
                                z = true;
                            }
                            z2 &= zzgtiVar.zzc().zzc() == zzgsv.ASYMMETRIC_PUBLIC;
                            i++;
                        } else {
                            throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzgtiVar.zza())));
                        }
                    } else {
                        throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzgtiVar.zza())));
                    }
                } else {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzgtiVar.zza())));
                }
            }
        }
        if (i == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        if (!z && !z2) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
    }
}
