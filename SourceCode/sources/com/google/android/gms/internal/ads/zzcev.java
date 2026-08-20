package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcev {
    private final Clock zza;
    private final zzcet zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcev(Clock clock, zzcet zzcetVar) {
        this.zza = clock;
        this.zzb = zzcetVar;
    }

    public static zzcev zza(Context context) {
        return zzcfu.zzd(context).zzb();
    }

    public final void zzb(int i, long j) {
        this.zzb.zzb(i, j);
    }

    public final void zzc() {
        this.zzb.zza();
    }

    public final void zzd(com.google.android.gms.ads.internal.client.zzff zzffVar) {
        this.zzb.zzb(-1, this.zza.currentTimeMillis());
    }

    public final void zze() {
        this.zzb.zzb(-1, this.zza.currentTimeMillis());
    }
}
