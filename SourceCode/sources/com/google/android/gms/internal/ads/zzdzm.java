package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@Deprecated
/* loaded from: classes4.dex */
public final class zzdzm extends zzdzo {
    private final zzfob zzf;

    public zzdzm(Executor executor, zzcht zzchtVar, zzfob zzfobVar, zzfod zzfodVar) {
        super(executor, zzchtVar, zzfodVar);
        this.zzf = zzfobVar;
        zzfobVar.zza(this.zzb);
    }

    public final Map zza() {
        return new HashMap(this.zzb);
    }
}
