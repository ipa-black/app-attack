package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzglq {
    public static final zzgok zza = new zzglp(null);

    public static zzgoq zza(zzghi zzghiVar) {
        zzggo zzggoVar;
        zzgom zzgomVar = new zzgom();
        zzgomVar.zzb(zzghiVar.zzb());
        for (List<zzghe> list : zzghiVar.zzd()) {
            for (zzghe zzgheVar : list) {
                int zzg = zzgheVar.zzg() - 2;
                if (zzg == 1) {
                    zzggoVar = zzggo.zza;
                } else if (zzg == 2) {
                    zzggoVar = zzggo.zzb;
                } else if (zzg != 3) {
                    throw new IllegalStateException("Unknown key status");
                } else {
                    zzggoVar = zzggo.zzc;
                }
                zzgomVar.zza(zzggoVar, zzgheVar.zza(), zzgheVar.zzc());
            }
        }
        if (zzghiVar.zza() != null) {
            zzgomVar.zzc(zzghiVar.zza().zza());
        }
        try {
            return zzgomVar.zzd();
        } catch (GeneralSecurityException e2) {
            throw new IllegalStateException(e2);
        }
    }
}
