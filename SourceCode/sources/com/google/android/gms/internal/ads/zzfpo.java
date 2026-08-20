package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfpo {
    private final Context zza;
    private final Executor zzb;
    private final zzcht zzc;
    private final zzfoy zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfpo(Context context, Executor executor, zzcht zzchtVar, zzfoy zzfoyVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzchtVar;
        this.zzd = zzfoyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(String str) {
        this.zzc.zza(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(String str, zzfow zzfowVar) {
        zzfol zza = zzfok.zza(this.zza, 14);
        zza.zzh();
        zza.zzf(this.zzc.zza(str));
        if (zzfowVar == null) {
            this.zzd.zzb(zza.zzl());
            return;
        }
        zzfowVar.zza(zza);
        zzfowVar.zzg();
    }

    public final void zzc(final String str, final zzfow zzfowVar) {
        if (!zzfoy.zza() || !((Boolean) zzbks.zzd.zze()).booleanValue()) {
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfpm
                @Override // java.lang.Runnable
                public final void run() {
                    zzfpo.this.zza(str);
                }
            });
        } else {
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfpn
                @Override // java.lang.Runnable
                public final void run() {
                    zzfpo.this.zzb(str, zzfowVar);
                }
            });
        }
    }

    public final void zzd(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzc((String) it.next(), null);
        }
    }
}
