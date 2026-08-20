package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@Deprecated
/* loaded from: classes4.dex */
public class zzcin {
    private final zzcig zza;
    private final AtomicInteger zzb;

    public zzcin() {
        zzcig zzcigVar = new zzcig();
        this.zza = zzcigVar;
        this.zzb = new AtomicInteger(0);
        zzger.zzr(zzcigVar, new zzcil(this), zzcib.zzf);
    }

    @Deprecated
    public final int zze() {
        return this.zzb.get();
    }

    @Deprecated
    public final void zzg() {
        this.zza.zze(new Exception());
    }

    @Deprecated
    public final void zzh(Object obj) {
        this.zza.zzd(obj);
    }

    @Deprecated
    public final void zzi(zzcik zzcikVar, zzcii zzciiVar) {
        zzger.zzr(this.zza, new zzcim(this, zzcikVar, zzciiVar), zzcib.zzf);
    }
}
