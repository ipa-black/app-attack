package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.metrics.LogSessionId;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzih {
    public static zzmz zza(Context context, zzis zzisVar, boolean z) {
        zzmv zzb = zzmv.zzb(context);
        if (zzb == null) {
            zzdw.zze("ExoPlayerImpl", "MediaMetricsService unavailable.");
            return new zzmz(LogSessionId.LOG_SESSION_ID_NONE);
        }
        if (z) {
            zzisVar.zzR(zzb);
        }
        return new zzmz(zzb.zza());
    }
}
