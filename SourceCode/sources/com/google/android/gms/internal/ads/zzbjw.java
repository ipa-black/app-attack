package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes4.dex */
public final class zzbjw {
    private final Map zza = new HashMap();
    private final zzbjy zzb;

    public zzbjw(zzbjy zzbjyVar) {
        this.zzb = zzbjyVar;
    }

    public final zzbjy zza() {
        return this.zzb;
    }

    public final void zzb(String str, zzbjv zzbjvVar) {
        this.zza.put(str, zzbjvVar);
    }

    public final void zzc(String str, String str2, long j) {
        zzbjy zzbjyVar = this.zzb;
        zzbjv zzbjvVar = (zzbjv) this.zza.get(str2);
        String[] strArr = {str};
        if (zzbjvVar != null) {
            zzbjyVar.zze(zzbjvVar, j, strArr);
        }
        this.zza.put(str, new zzbjv(j, null, null));
    }
}
