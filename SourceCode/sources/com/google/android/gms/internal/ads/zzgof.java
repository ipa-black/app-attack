package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.List;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgof implements zzghj {
    private static final Logger zza = Logger.getLogger(zzgof.class.getName());
    private static final byte[] zzb = {0};

    @Override // com.google.android.gms.internal.ads.zzghj
    public final Class zza() {
        return zzggz.class;
    }

    @Override // com.google.android.gms.internal.ads.zzghj
    public final Class zzb() {
        return zzggz.class;
    }

    @Override // com.google.android.gms.internal.ads.zzghj
    public final /* bridge */ /* synthetic */ Object zzc(zzghi zzghiVar) throws GeneralSecurityException {
        for (List<zzghe> list : zzghiVar.zzd()) {
            for (zzghe zzgheVar : list) {
                if (zzgheVar.zzb() instanceof zzgob) {
                    zzgob zzgobVar = (zzgob) zzgheVar.zzb();
                    zzgwa zzb2 = zzgwa.zzb(zzgheVar.zzf());
                    if (!zzb2.equals(zzgobVar.zzc())) {
                        String valueOf = String.valueOf(zzgobVar.zzb());
                        String obj = zzgobVar.zzc().toString();
                        String obj2 = zzb2.toString();
                        throw new GeneralSecurityException("Mac Key with parameters " + valueOf + " has wrong output prefix (" + obj + ") instead of (" + obj2 + ")");
                    }
                }
            }
        }
        return new zzgoe(zzghiVar, null);
    }
}
