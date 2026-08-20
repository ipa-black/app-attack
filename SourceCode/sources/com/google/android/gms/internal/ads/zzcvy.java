package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcvy implements zzdfi {
    private final zzfkb zza;

    public zzcvy(zzfkb zzfkbVar) {
        this.zza = zzfkbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final void zzbr(Context context) {
        try {
            this.zza.zzg();
        } catch (zzfjl e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Cannot invoke onDestroy for the mediation adapter.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final void zzbt(Context context) {
        try {
            this.zza.zzt();
        } catch (zzfjl e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Cannot invoke onPause for the mediation adapter.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final void zzbu(Context context) {
        try {
            this.zza.zzu();
            if (context != null) {
                this.zza.zzs(context);
            }
        } catch (zzfjl e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Cannot invoke onResume for the mediation adapter.", e2);
        }
    }
}
