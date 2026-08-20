package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfsk {
    private final Context zza;
    private final Looper zzb;

    public zzfsk(Context context, Looper looper) {
        this.zza = context;
        this.zzb = looper;
    }

    public final void zza(String str) {
        zzfsy zza = zzfta.zza();
        zza.zza(this.zza.getPackageName());
        zza.zzc(2);
        zzfsv zza2 = zzfsw.zza();
        zza2.zza(str);
        zza2.zzb(2);
        zza.zzb(zza2);
        new zzfsl(this.zza, this.zzb, (zzfta) zza.zzak()).zza();
    }
}
