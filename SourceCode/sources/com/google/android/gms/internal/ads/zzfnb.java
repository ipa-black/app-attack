package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzfnb {
    private static final zzgfb zza = zzger.zzi(null);
    private final zzgfc zzb;
    private final ScheduledExecutorService zzc;
    private final zzfnc zzd;

    public zzfnb(zzgfc zzgfcVar, ScheduledExecutorService scheduledExecutorService, zzfnc zzfncVar) {
        this.zzb = zzgfcVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzfncVar;
    }

    public final zzfmr zza(Object obj, zzgfb... zzgfbVarArr) {
        return new zzfmr(this, obj, Arrays.asList(zzgfbVarArr), null);
    }

    public final zzfna zzb(Object obj, zzgfb zzgfbVar) {
        return new zzfna(this, obj, zzgfbVar, Collections.singletonList(zzgfbVar), zzgfbVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String zzf(Object obj);
}
