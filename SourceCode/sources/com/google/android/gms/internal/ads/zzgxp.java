package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgxp {
    static final zzgxp zza = new zzgxp(true);
    public static final /* synthetic */ int zzb = 0;
    private static volatile boolean zzc = false;
    private static volatile zzgxp zzd;
    private final Map zze;

    zzgxp() {
        this.zze = new HashMap();
    }

    public static zzgxp zza() {
        return zza;
    }

    public final zzgyb zzc(zzgzn zzgznVar, int i) {
        return (zzgyb) this.zze.get(new zzgxo(zzgznVar, i));
    }

    zzgxp(boolean z) {
        this.zze = Collections.emptyMap();
    }

    public static zzgxp zzb() {
        zzgxp zzgxpVar = zzd;
        if (zzgxpVar != null) {
            return zzgxpVar;
        }
        synchronized (zzgxp.class) {
            zzgxp zzgxpVar2 = zzd;
            if (zzgxpVar2 != null) {
                return zzgxpVar2;
            }
            zzgxp zzb2 = zzgxx.zzb(zzgxp.class);
            zzd = zzb2;
            return zzb2;
        }
    }
}
