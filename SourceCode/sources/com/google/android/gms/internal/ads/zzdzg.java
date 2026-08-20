package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdzg {
    final /* synthetic */ zzdzh zza;
    private final Map zzb = new ConcurrentHashMap();

    public zzdzg(zzdzh zzdzhVar) {
        this.zza = zzdzhVar;
    }

    public static /* bridge */ /* synthetic */ zzdzg zza(zzdzg zzdzgVar) {
        Map map;
        Map map2 = zzdzgVar.zzb;
        map = zzdzgVar.zza.zzc;
        map2.putAll(map);
        return zzdzgVar;
    }

    public final zzdzg zzb(String str, String str2) {
        this.zzb.put(str, str2);
        return this;
    }

    public final zzdzg zzc(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            this.zzb.put(str, str2);
        }
        return this;
    }

    public final zzdzg zzd(zzfil zzfilVar) {
        this.zzb.put("aai", zzfilVar.zzx);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgv)).booleanValue()) {
            zzc("rid", zzfilVar.zzap);
        }
        return this;
    }

    public final zzdzg zze(zzfio zzfioVar) {
        this.zzb.put("gqi", zzfioVar.zzb);
        return this;
    }

    public final String zzf() {
        zzdzm zzdzmVar;
        zzdzmVar = this.zza.zza;
        return zzdzmVar.zzb(this.zzb);
    }

    public final void zzg() {
        Executor executor;
        executor = this.zza.zzb;
        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdzf
            @Override // java.lang.Runnable
            public final void run() {
                zzdzg.this.zzi();
            }
        });
    }

    public final void zzh() {
        Executor executor;
        executor = this.zza.zzb;
        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdze
            @Override // java.lang.Runnable
            public final void run() {
                zzdzg.this.zzj();
            }
        });
    }

    public final /* synthetic */ void zzi() {
        zzdzm zzdzmVar;
        zzdzmVar = this.zza.zza;
        zzdzmVar.zze(this.zzb);
    }

    public final /* synthetic */ void zzj() {
        zzdzm zzdzmVar;
        zzdzmVar = this.zza.zza;
        zzdzmVar.zzd(this.zzb);
    }
}
