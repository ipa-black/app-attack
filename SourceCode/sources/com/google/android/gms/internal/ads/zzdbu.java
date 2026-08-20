package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdbu {
    private final zzeem zza;
    private final zzfjg zzb;
    private final zzfnj zzc;
    private final zzcvc zzd;
    private final zzeoo zze;
    private final zzdjs zzf;
    private zzfix zzg;
    private final zzefr zzh;
    private final zzddt zzi;
    private final Executor zzj;
    private final zzefd zzk;
    private final zzekv zzl;
    private final zzegh zzm;
    private final zzegn zzn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdbu(zzeem zzeemVar, zzfjg zzfjgVar, zzfnj zzfnjVar, zzcvc zzcvcVar, zzeoo zzeooVar, zzdjs zzdjsVar, zzfix zzfixVar, zzefr zzefrVar, zzddt zzddtVar, Executor executor, zzefd zzefdVar, zzekv zzekvVar, zzegh zzeghVar, zzegn zzegnVar) {
        this.zza = zzeemVar;
        this.zzb = zzfjgVar;
        this.zzc = zzfnjVar;
        this.zzd = zzcvcVar;
        this.zze = zzeooVar;
        this.zzf = zzdjsVar;
        this.zzg = zzfixVar;
        this.zzh = zzefrVar;
        this.zzi = zzddtVar;
        this.zzj = executor;
        this.zzk = zzefdVar;
        this.zzl = zzekvVar;
        this.zzm = zzeghVar;
        this.zzn = zzegnVar;
    }

    public final com.google.android.gms.ads.internal.client.zze zza(Throwable th) {
        return zzfkg.zzb(th, this.zzl);
    }

    public final zzdjs zzc() {
        return this.zzf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzfix zzd(zzfix zzfixVar) throws Exception {
        this.zzd.zza(zzfixVar);
        return zzfixVar;
    }

    public final zzgfb zze(final zzfkz zzfkzVar) {
        zzfmo zza = this.zzc.zzb(zzfnd.GET_CACHE_KEY, this.zzi.zzc()).zzf(new zzgdy() { // from class: com.google.android.gms.internal.ads.zzdbr
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzdbu.this.zzf(zzfkzVar, (zzccb) obj);
            }
        }).zza();
        zzger.zzr(zza, new zzdbs(this), this.zzj);
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzf(zzfkz zzfkzVar, zzccb zzccbVar) throws Exception {
        zzccbVar.zzi = zzfkzVar;
        return this.zzh.zza(zzccbVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzg(zzgfb zzgfbVar, zzgfb zzgfbVar2, zzgfb zzgfbVar3) throws Exception {
        return this.zzn.zzb((zzccb) zzgfbVar.get(), (JSONObject) zzgfbVar2.get(), (zzcce) zzgfbVar3.get());
    }

    public final zzgfb zzh(zzccb zzccbVar) {
        zzfmo zza = this.zzc.zzb(zzfnd.NOTIFY_CACHE_HIT, this.zzh.zzg(zzccbVar)).zza();
        zzger.zzr(zza, new zzdbt(this), this.zzj);
        return zza;
    }

    public final zzgfb zzi(zzgfb zzgfbVar) {
        zzfna zzf = this.zzc.zzb(zzfnd.RENDERER, zzgfbVar).zze(new zzfmm() { // from class: com.google.android.gms.internal.ads.zzdbq
            @Override // com.google.android.gms.internal.ads.zzfmm
            public final Object zza(Object obj) {
                zzfix zzfixVar = (zzfix) obj;
                zzdbu.this.zzd(zzfixVar);
                return zzfixVar;
            }
        }).zzf(this.zze);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzeV)).booleanValue()) {
            zzf = zzf.zzi(((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzeW)).intValue(), TimeUnit.SECONDS);
        }
        return zzf.zza();
    }

    public final zzgfb zzj() {
        com.google.android.gms.ads.internal.client.zzl zzlVar = this.zzb.zzd;
        if (zzlVar.zzx != null || zzlVar.zzs != null) {
            zzfnj zzfnjVar = this.zzc;
            return zzfmt.zzc(this.zza.zza(), zzfnd.PRELOADED_LOADER, zzfnjVar).zza();
        }
        return zzk(this.zzi.zzc());
    }

    public final zzgfb zzk(final zzgfb zzgfbVar) {
        if (this.zzg != null) {
            return zzfmt.zzc(zzger.zzi(this.zzg), zzfnd.SERVER_TRANSACTION, this.zzc).zza();
        }
        com.google.android.gms.ads.internal.zzt.zzc().zzj();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzjx)).booleanValue() || ((Boolean) zzble.zzb.zze()).booleanValue()) {
            zzfna zzb = this.zzc.zzb(zzfnd.SERVER_TRANSACTION, zzgfbVar);
            final zzefd zzefdVar = this.zzk;
            return zzb.zzf(new zzgdy() { // from class: com.google.android.gms.internal.ads.zzdbp
                @Override // com.google.android.gms.internal.ads.zzgdy
                public final zzgfb zza(Object obj) {
                    return zzefd.this.zzb((zzccb) obj);
                }
            }).zza();
        }
        final zzegh zzeghVar = this.zzm;
        final zzgfb zzn = zzger.zzn(zzgfbVar, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzdbl
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzegh.this.zza((zzccb) obj);
            }
        }, this.zzj);
        zzfna zzb2 = this.zzc.zzb(zzfnd.BUILD_URL, zzn);
        final zzefr zzefrVar = this.zzh;
        final zzfmo zza = zzb2.zzf(new zzgdy() { // from class: com.google.android.gms.internal.ads.zzdbm
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzefr.this.zzb((JSONObject) obj);
            }
        }).zza();
        return this.zzc.zza(zzfnd.SERVER_TRANSACTION, zzgfbVar, zzn, zza).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdbn
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzdbu.this.zzg(zzgfbVar, zzn, zza);
            }
        }).zzf(new zzgdy() { // from class: com.google.android.gms.internal.ads.zzdbo
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return (zzgfb) obj;
            }
        }).zza();
    }

    public final void zzl(zzfix zzfixVar) {
        this.zzg = zzfixVar;
    }
}
