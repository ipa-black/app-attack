package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgmo {
    private final Map zza;
    private final Map zzb;
    private final Map zzc;
    private final Map zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgmo(zzgmi zzgmiVar, zzgmn zzgmnVar) {
        this.zza = new HashMap(zzgmi.zzf(zzgmiVar));
        this.zzb = new HashMap(zzgmi.zze(zzgmiVar));
        this.zzc = new HashMap(zzgmi.zzh(zzgmiVar));
        this.zzd = new HashMap(zzgmi.zzg(zzgmiVar));
    }

    public final zzggf zza(zzgmh zzgmhVar, @Nullable zzghn zzghnVar) throws GeneralSecurityException {
        zzgmk zzgmkVar = new zzgmk(zzgmhVar.getClass(), zzgmhVar.zzd(), null);
        if (!this.zzb.containsKey(zzgmkVar)) {
            String obj = zzgmkVar.toString();
            throw new GeneralSecurityException("No Key Parser for requested key type " + obj + " available");
        }
        return ((zzglb) this.zzb.get(zzgmkVar)).zza(zzgmhVar, zzghnVar);
    }
}
