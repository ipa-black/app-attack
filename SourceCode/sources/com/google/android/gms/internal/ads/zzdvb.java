package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdvb implements Callable {
    private final com.google.android.gms.ads.internal.zza zza;
    private final zzcoa zzb;
    private final Context zzc;
    private final zzdzh zzd;
    private final zzfnt zze;
    private final zzekc zzf;
    private final Executor zzg;
    private final zzapj zzh;
    private final zzchu zzi;
    private final zzfpo zzj;

    public zzdvb(Context context, Executor executor, zzapj zzapjVar, zzchu zzchuVar, com.google.android.gms.ads.internal.zza zzaVar, zzcoa zzcoaVar, zzekc zzekcVar, zzfpo zzfpoVar, zzdzh zzdzhVar, zzfnt zzfntVar) {
        this.zzc = context;
        this.zzg = executor;
        this.zzh = zzapjVar;
        this.zzi = zzchuVar;
        this.zza = zzaVar;
        this.zzb = zzcoaVar;
        this.zzf = zzekcVar;
        this.zzj = zzfpoVar;
        this.zzd = zzdzhVar;
        this.zze = zzfntVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Context zza(zzdvb zzdvbVar) {
        return zzdvbVar.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzapj zzb(zzdvb zzdvbVar) {
        return zzdvbVar.zzh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.zza zzc(zzdvb zzdvbVar) {
        return zzdvbVar.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzchu zzd(zzdvb zzdvbVar) {
        return zzdvbVar.zzi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzcoa zze(zzdvb zzdvbVar) {
        return zzdvbVar.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzdzh zzf(zzdvb zzdvbVar) {
        return zzdvbVar.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzekc zzg(zzdvb zzdvbVar) {
        return zzdvbVar.zzf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzfnt zzh(zzdvb zzdvbVar) {
        return zzdvbVar.zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzfpo zzi(zzdvb zzdvbVar) {
        return zzdvbVar.zzj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Executor zzj(zzdvb zzdvbVar) {
        return zzdvbVar.zzg;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzdve zzdveVar = new zzdve(this);
        zzdveVar.zzh();
        return zzdveVar;
    }
}
