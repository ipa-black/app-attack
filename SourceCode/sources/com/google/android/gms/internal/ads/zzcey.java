package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcey {
    private Context zza;
    private Clock zzb;
    private com.google.android.gms.ads.internal.util.zzg zzc;
    private zzcft zzd;

    private zzcey() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcey(zzcex zzcexVar) {
    }

    public final zzcey zza(com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.zzc = zzgVar;
        return this;
    }

    public final zzcey zzb(Context context) {
        context.getClass();
        this.zza = context;
        return this;
    }

    public final zzcey zzc(Clock clock) {
        clock.getClass();
        this.zzb = clock;
        return this;
    }

    public final zzcey zzd(zzcft zzcftVar) {
        this.zzd = zzcftVar;
        return this;
    }

    public final zzcfu zze() {
        zzhex.zzc(this.zza, Context.class);
        zzhex.zzc(this.zzb, Clock.class);
        zzhex.zzc(this.zzc, com.google.android.gms.ads.internal.util.zzg.class);
        zzhex.zzc(this.zzd, zzcft.class);
        return new zzcfa(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}
