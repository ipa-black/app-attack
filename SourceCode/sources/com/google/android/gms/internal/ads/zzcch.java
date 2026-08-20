package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcch implements Callable {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzccj zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcch(zzccj zzccjVar, Context context) {
        this.zzb = zzccjVar;
        this.zza = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        WeakHashMap weakHashMap;
        zzccg zza;
        WeakHashMap weakHashMap2;
        weakHashMap = this.zzb.zza;
        zzcci zzcciVar = (zzcci) weakHashMap.get(this.zza);
        if (zzcciVar == null || zzcciVar.zza + ((Long) zzbkp.zza.zze()).longValue() < com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()) {
            zza = new zzccf(this.zza).zza();
        } else {
            zza = new zzccf(this.zza, zzcciVar.zzb).zza();
        }
        zzccj zzccjVar = this.zzb;
        weakHashMap2 = zzccjVar.zza;
        weakHashMap2.put(this.zza, new zzcci(zzccjVar, zza));
        return zza;
    }
}
