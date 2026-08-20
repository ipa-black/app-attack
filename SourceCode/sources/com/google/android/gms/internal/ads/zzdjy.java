package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdjy {
    private final Set zza = new HashSet();
    private final Set zzb = new HashSet();
    private final Set zzc = new HashSet();
    private final Set zzd = new HashSet();
    private final Set zze = new HashSet();
    private final Set zzf = new HashSet();
    private final Set zzg = new HashSet();
    private final Set zzh = new HashSet();
    private final Set zzi = new HashSet();
    private final Set zzj = new HashSet();
    private final Set zzk = new HashSet();
    private final Set zzl = new HashSet();
    private final Set zzm = new HashSet();
    private final Set zzn = new HashSet();
    private zzffx zzo;

    public final zzdjy zza(com.google.android.gms.ads.internal.client.zza zzaVar, Executor executor) {
        this.zzc.add(new zzdlu(zzaVar, executor));
        return this;
    }

    public final zzdjy zzb(zzdeq zzdeqVar, Executor executor) {
        this.zzi.add(new zzdlu(zzdeqVar, executor));
        return this;
    }

    public final zzdjy zzc(zzdfd zzdfdVar, Executor executor) {
        this.zzl.add(new zzdlu(zzdfdVar, executor));
        return this;
    }

    public final zzdjy zzd(zzdfh zzdfhVar, Executor executor) {
        this.zzf.add(new zzdlu(zzdfhVar, executor));
        return this;
    }

    public final zzdjy zze(zzden zzdenVar, Executor executor) {
        this.zze.add(new zzdlu(zzdenVar, executor));
        return this;
    }

    public final zzdjy zzf(zzdgb zzdgbVar, Executor executor) {
        this.zzh.add(new zzdlu(zzdgbVar, executor));
        return this;
    }

    public final zzdjy zzg(zzdgm zzdgmVar, Executor executor) {
        this.zzg.add(new zzdlu(zzdgmVar, executor));
        return this;
    }

    public final zzdjy zzh(com.google.android.gms.ads.internal.overlay.zzo zzoVar, Executor executor) {
        this.zzn.add(new zzdlu(zzoVar, executor));
        return this;
    }

    public final zzdjy zzi(zzdgy zzdgyVar, Executor executor) {
        this.zzm.add(new zzdlu(zzdgyVar, executor));
        return this;
    }

    public final zzdjy zzj(zzdhi zzdhiVar, Executor executor) {
        this.zzb.add(new zzdlu(zzdhiVar, executor));
        return this;
    }

    public final zzdjy zzk(zzasm zzasmVar, Executor executor) {
        this.zzk.add(new zzdlu(zzasmVar, executor));
        return this;
    }

    public final zzdjy zzl(zzdmc zzdmcVar, Executor executor) {
        this.zzd.add(new zzdlu(zzdmcVar, executor));
        return this;
    }

    public final zzdjy zzm(zzffx zzffxVar) {
        this.zzo = zzffxVar;
        return this;
    }

    public final zzdka zzn() {
        return new zzdka(this, null);
    }
}
