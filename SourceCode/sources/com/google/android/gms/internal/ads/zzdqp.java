package com.google.android.gms.internal.ads;

import androidx.collection.SimpleArrayMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdqp {
    zzbnm zza;
    zzbnj zzb;
    zzbnz zzc;
    zzbnw zzd;
    zzbsu zze;
    final SimpleArrayMap zzf = new SimpleArrayMap();
    final SimpleArrayMap zzg = new SimpleArrayMap();

    public final zzdqp zza(zzbnj zzbnjVar) {
        this.zzb = zzbnjVar;
        return this;
    }

    public final zzdqp zzb(zzbnm zzbnmVar) {
        this.zza = zzbnmVar;
        return this;
    }

    public final zzdqp zzc(String str, zzbns zzbnsVar, zzbnp zzbnpVar) {
        this.zzf.put(str, zzbnsVar);
        if (zzbnpVar != null) {
            this.zzg.put(str, zzbnpVar);
        }
        return this;
    }

    public final zzdqp zzd(zzbsu zzbsuVar) {
        this.zze = zzbsuVar;
        return this;
    }

    public final zzdqp zze(zzbnw zzbnwVar) {
        this.zzd = zzbnwVar;
        return this;
    }

    public final zzdqp zzf(zzbnz zzbnzVar) {
        this.zzc = zzbnzVar;
        return this;
    }

    public final zzdqr zzg() {
        return new zzdqr(this);
    }
}
