package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@Deprecated
/* loaded from: classes4.dex */
public final class zzdzh {
    private final zzdzm zza;
    private final Executor zzb;
    private final Map zzc;

    public zzdzh(zzdzm zzdzmVar, Executor executor) {
        this.zza = zzdzmVar;
        this.zzc = zzdzmVar.zza();
        this.zzb = executor;
    }

    public final zzdzg zza() {
        zzdzg zzdzgVar = new zzdzg(this);
        zzdzg.zza(zzdzgVar);
        return zzdzgVar;
    }
}
