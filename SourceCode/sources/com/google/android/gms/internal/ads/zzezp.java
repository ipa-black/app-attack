package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzezp {
    private final Context zza;
    private final Set zzb;
    private final Executor zzc;
    private final zzfow zzd;
    private final zzdzh zze;

    public zzezp(Context context, Executor executor, Set set, zzfow zzfowVar, zzdzh zzdzhVar) {
        this.zza = context;
        this.zzc = executor;
        this.zzb = set;
        this.zzd = zzfowVar;
        this.zze = zzdzhVar;
    }

    public final zzgfb zza(final Object obj) {
        zzfol zza = zzfok.zza(this.zza, 8);
        zza.zzh();
        final ArrayList arrayList = new ArrayList(this.zzb.size());
        for (final zzezm zzezmVar : this.zzb) {
            zzgfb zzb = zzezmVar.zzb();
            final long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
            zzb.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezn
                @Override // java.lang.Runnable
                public final void run() {
                    zzezp.this.zzb(elapsedRealtime, zzezmVar);
                }
            }, zzcib.zzf);
            arrayList.add(zzb);
        }
        zzgfb zza2 = zzger.zzc(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzezo
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<zzgfb> list = arrayList;
                Object obj2 = obj;
                for (zzgfb zzgfbVar : list) {
                    zzezl zzezlVar = (zzezl) zzgfbVar.get();
                    if (zzezlVar != null) {
                        zzezlVar.zzf(obj2);
                    }
                }
                return obj2;
            }
        }, this.zzc);
        if (zzfoy.zza()) {
            zzfov.zza(zza2, this.zzd, zza);
        }
        return zza2;
    }

    public final void zzb(long j, zzezm zzezmVar) {
        long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - j;
        if (((Boolean) zzblc.zza.zze()).booleanValue()) {
            String zzc = zzfyt.zzc(zzezmVar.getClass().getCanonicalName());
            com.google.android.gms.ads.internal.util.zze.zza("Signal runtime (ms) : " + zzc + " = " + elapsedRealtime);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbQ)).booleanValue()) {
            zzdzg zza = this.zze.zza();
            zza.zzb("action", "lat_ms");
            zza.zzb("lat_grp", "sig_lat_grp");
            zza.zzb("lat_id", String.valueOf(zzezmVar.zza()));
            zza.zzb("clat_ms", String.valueOf(elapsedRealtime));
            zza.zzh();
        }
    }
}
