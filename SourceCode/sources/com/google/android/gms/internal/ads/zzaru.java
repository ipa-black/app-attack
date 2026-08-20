package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.reflect.InvocationTargetException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaru extends zzarx {
    private final View zzi;

    public zzaru(zzaqj zzaqjVar, String str, String str2, zzaml zzamlVar, int i, int i2, View view) {
        super(zzaqjVar, "JgNevmfyr8lZxnvZfq3r729JgtxbLk039SjEVr1jMI7eztR3nd0tOgO6sMz+FJz+", "ylslQbtrjnaBQeIQLiG5TQpHgACRff6HBxNL0ysPa0Q=", zzamlVar, i, 57);
        this.zzi = view;
    }

    @Override // com.google.android.gms.internal.ads.zzarx
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        if (this.zzi != null) {
            Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcU);
            Boolean bool2 = (Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzjc);
            zzaqo zzaqoVar = new zzaqo((String) this.zzf.invoke(null, this.zzi, this.zzb.zzb().getResources().getDisplayMetrics(), bool, bool2));
            zzand zza = zzane.zza();
            zza.zzb(zzaqoVar.zza.longValue());
            zza.zzd(zzaqoVar.zzb.longValue());
            zza.zze(zzaqoVar.zzc.longValue());
            if (bool2.booleanValue()) {
                zza.zzc(zzaqoVar.zze.longValue());
            }
            if (bool.booleanValue()) {
                zza.zza(zzaqoVar.zzd.longValue());
            }
            this.zze.zzY((zzane) zza.zzak());
        }
    }
}
