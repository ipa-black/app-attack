package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzmz {
    public static final zzmz zza;
    private final zzmy zzb;

    static {
        zza = zzen.zza < 31 ? new zzmz() : new zzmz(zzmy.zza);
    }

    public zzmz() {
        this.zzb = null;
        zzdd.zzf(zzen.zza < 31);
    }

    private zzmz(zzmy zzmyVar) {
        this.zzb = zzmyVar;
    }

    public final LogSessionId zza() {
        zzmy zzmyVar = this.zzb;
        zzmyVar.getClass();
        return zzmyVar.zzb;
    }

    public zzmz(LogSessionId logSessionId) {
        this.zzb = new zzmy(logSessionId);
    }
}
