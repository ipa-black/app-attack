package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzehm extends zzcbm {
    private final Context zza;
    private final Executor zzb;
    private final zzgfc zzc;
    private final zzeie zzd;
    private final zzcvb zze;
    private final ArrayDeque zzf;
    private final zzfoy zzg;
    private final zzccn zzh;
    private final zzeib zzi;

    public zzehm(Context context, Executor executor, zzgfc zzgfcVar, zzccn zzccnVar, zzcvb zzcvbVar, zzeie zzeieVar, ArrayDeque arrayDeque, zzeib zzeibVar, zzfoy zzfoyVar, byte[] bArr) {
        zzbjj.zzc(context);
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzgfcVar;
        this.zzh = zzccnVar;
        this.zzd = zzeieVar;
        this.zze = zzcvbVar;
        this.zzf = arrayDeque;
        this.zzi = zzeibVar;
        this.zzg = zzfoyVar;
    }

    private final synchronized zzehj zzk(String str) {
        Iterator it = this.zzf.iterator();
        while (it.hasNext()) {
            zzehj zzehjVar = (zzehj) it.next();
            if (zzehjVar.zzc.equals(str)) {
                it.remove();
                return zzehjVar;
            }
        }
        return null;
    }

    private static zzgfb zzl(zzgfb zzgfbVar, zzfnj zzfnjVar, zzbut zzbutVar, zzfow zzfowVar, zzfol zzfolVar) {
        zzbuj zza = zzbutVar.zza("AFMA_getAdDictionary", zzbuq.zza, new zzbul() { // from class: com.google.android.gms.internal.ads.zzehd
            @Override // com.google.android.gms.internal.ads.zzbul
            public final Object zza(JSONObject jSONObject) {
                return new zzcce(jSONObject);
            }
        });
        zzfov.zzd(zzgfbVar, zzfolVar);
        zzfmo zza2 = zzfnjVar.zzb(zzfnd.BUILD_URL, zzgfbVar).zzf(zza).zza();
        zzfov.zzc(zza2, zzfowVar, zzfolVar);
        return zza2;
    }

    private static zzgfb zzm(zzccb zzccbVar, zzfnj zzfnjVar, final zzfae zzfaeVar) {
        zzgdy zzgdyVar = new zzgdy() { // from class: com.google.android.gms.internal.ads.zzegx
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzfae.this.zzb().zza(com.google.android.gms.ads.internal.client.zzay.zzb().zzi((Bundle) obj));
            }
        };
        return zzfnjVar.zzb(zzfnd.GMS_SIGNALS, zzger.zzi(zzccbVar.zza)).zzf(zzgdyVar).zze(new zzfmm() { // from class: com.google.android.gms.internal.ads.zzegy
            @Override // com.google.android.gms.internal.ads.zzfmm
            public final Object zza(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                com.google.android.gms.ads.internal.util.zze.zza("Ad request signals:");
                com.google.android.gms.ads.internal.util.zze.zza(jSONObject.toString(2));
                return jSONObject;
            }
        }).zza();
    }

    private final synchronized void zzn(zzehj zzehjVar) {
        zzo();
        this.zzf.addLast(zzehjVar);
    }

    private final synchronized void zzo() {
        int intValue = ((Long) zzblf.zzd.zze()).intValue();
        while (this.zzf.size() >= intValue) {
            this.zzf.removeFirst();
        }
    }

    private final void zzp(zzgfb zzgfbVar, zzcbx zzcbxVar) {
        zzger.zzr(zzger.zzn(zzgfbVar, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzehg
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzger.zzi(zzfkf.zza((InputStream) obj));
            }
        }, zzcib.zza), new zzehi(this, zzcbxVar), zzcib.zzf);
    }

    public final zzgfb zzb(final zzccb zzccbVar, int i) {
        if (!((Boolean) zzblf.zza.zze()).booleanValue()) {
            return zzger.zzh(new Exception("Split request is disabled."));
        }
        zzfkz zzfkzVar = zzccbVar.zzi;
        if (zzfkzVar == null) {
            return zzger.zzh(new Exception("Pool configuration missing from request."));
        }
        if (zzfkzVar.zzc == 0 || zzfkzVar.zzd == 0) {
            return zzger.zzh(new Exception("Caching is disabled."));
        }
        zzbut zzb = com.google.android.gms.ads.internal.zzt.zzf().zzb(this.zza, zzchu.zza(), this.zzg);
        zzfae zzq = this.zze.zzq(zzccbVar, i);
        zzfnj zzc = zzq.zzc();
        final zzgfb zzm = zzm(zzccbVar, zzc, zzq);
        zzfow zzd = zzq.zzd();
        final zzfol zza = zzfok.zza(this.zza, 9);
        final zzgfb zzl = zzl(zzm, zzc, zzb, zzd, zza);
        return zzc.zza(zzfnd.GET_URL_AND_CACHE_KEY, zzm, zzl).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzehc
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzehm.this.zzj(zzl, zzm, zzccbVar, zza);
            }
        }).zza();
    }

    public final zzgfb zzc(zzccb zzccbVar, int i) {
        zzehj zzk;
        zzfol zzfolVar;
        zzfmo zza;
        zzbut zzb = com.google.android.gms.ads.internal.zzt.zzf().zzb(this.zza, zzchu.zza(), this.zzg);
        zzfae zzq = this.zze.zzq(zzccbVar, i);
        zzbuj zza2 = zzb.zza("google.afma.response.normalize", zzehl.zza, zzbuq.zzb);
        if (!((Boolean) zzblf.zza.zze()).booleanValue()) {
            String str = zzccbVar.zzj;
            zzk = null;
            if (str != null && !str.isEmpty()) {
                com.google.android.gms.ads.internal.util.zze.zza("Request contained a PoolKey but split request is disabled.");
            }
        } else {
            zzk = zzk(zzccbVar.zzh);
            if (zzk == null) {
                com.google.android.gms.ads.internal.util.zze.zza("Request contained a PoolKey but no matching parameters were found.");
            }
        }
        zzehj zzehjVar = zzk;
        if (zzehjVar == null) {
            zzfolVar = zzfok.zza(this.zza, 9);
        } else {
            zzfolVar = zzehjVar.zze;
        }
        zzfol zzfolVar2 = zzfolVar;
        zzfow zzd = zzq.zzd();
        zzd.zzd(zzccbVar.zza.getStringArrayList("ad_types"));
        zzeid zzeidVar = new zzeid(zzccbVar.zzg, zzd, zzfolVar2);
        zzeia zzeiaVar = new zzeia(this.zza, zzccbVar.zzb.zza, this.zzh, i, null);
        zzfnj zzc = zzq.zzc();
        zzfol zza3 = zzfok.zza(this.zza, 11);
        if (zzehjVar == null) {
            final zzgfb zzm = zzm(zzccbVar, zzc, zzq);
            final zzgfb zzl = zzl(zzm, zzc, zzb, zzd, zzfolVar2);
            zzfol zza4 = zzfok.zza(this.zza, 10);
            final zzfmo zza5 = zzc.zza(zzfnd.HTTP, zzl, zzm).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeha
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzeic((JSONObject) zzgfb.this.get(), (zzcce) zzl.get());
                }
            }).zze(zzeidVar).zze(new zzfor(zza4)).zze(zzeiaVar).zza();
            zzfov.zza(zza5, zzd, zza4);
            zzfov.zzd(zza5, zza3);
            zza = zzc.zza(zzfnd.PRE_PROCESS, zzm, zzl, zza5).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzehb
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzehl((zzehz) zzgfb.this.get(), (JSONObject) zzm.get(), (zzcce) zzl.get());
                }
            }).zzf(zza2).zza();
        } else {
            zzeic zzeicVar = new zzeic(zzehjVar.zzb, zzehjVar.zza);
            zzfol zza6 = zzfok.zza(this.zza, 10);
            final zzfmo zza7 = zzc.zzb(zzfnd.HTTP, zzger.zzi(zzeicVar)).zze(zzeidVar).zze(new zzfor(zza6)).zze(zzeiaVar).zza();
            zzfov.zza(zza7, zzd, zza6);
            final zzgfb zzi = zzger.zzi(zzehjVar);
            zzfov.zzd(zza7, zza3);
            zza = zzc.zza(zzfnd.PRE_PROCESS, zza7, zzi).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzehf
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzgfb zzgfbVar = zzgfb.this;
                    zzgfb zzgfbVar2 = zzi;
                    return new zzehl((zzehz) zzgfbVar.get(), ((zzehj) zzgfbVar2.get()).zzb, ((zzehj) zzgfbVar2.get()).zza);
                }
            }).zzf(zza2).zza();
        }
        zzfov.zza(zza, zzd, zza3);
        return zza;
    }

    public final zzgfb zzd(zzccb zzccbVar, int i) {
        zzbut zzb = com.google.android.gms.ads.internal.zzt.zzf().zzb(this.zza, zzchu.zza(), this.zzg);
        if (!((Boolean) zzblk.zza.zze()).booleanValue()) {
            return zzger.zzh(new Exception("Signal collection disabled."));
        }
        zzfae zzq = this.zze.zzq(zzccbVar, i);
        final zzezp zza = zzq.zza();
        zzbuj zza2 = zzb.zza("google.afma.request.getSignals", zzbuq.zza, zzbuq.zzb);
        zzfol zza3 = zzfok.zza(this.zza, 22);
        zzfmo zza4 = zzq.zzc().zzb(zzfnd.GET_SIGNALS, zzger.zzi(zzccbVar.zza)).zze(new zzfor(zza3)).zzf(new zzgdy() { // from class: com.google.android.gms.internal.ads.zzehe
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzezp.this.zza(com.google.android.gms.ads.internal.client.zzay.zzb().zzi((Bundle) obj));
            }
        }).zzb(zzfnd.JS_SIGNALS).zzf(zza2).zza();
        zzfow zzd = zzq.zzd();
        zzd.zzd(zzccbVar.zza.getStringArrayList("ad_types"));
        zzfov.zzb(zza4, zzd, zza3);
        if (((Boolean) zzbkz.zze.zze()).booleanValue()) {
            if (((Boolean) zzbkx.zzj.zze()).booleanValue()) {
                zzeie zzeieVar = this.zzd;
                zzeieVar.getClass();
                zza4.zzc(new zzegz(zzeieVar), this.zzc);
            } else {
                zzeie zzeieVar2 = this.zzd;
                zzeieVar2.getClass();
                zza4.zzc(new zzegz(zzeieVar2), this.zzb);
            }
        }
        return zza4;
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zze(zzccb zzccbVar, zzcbx zzcbxVar) {
        zzp(zzb(zzccbVar, Binder.getCallingUid()), zzcbxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzf(zzccb zzccbVar, zzcbx zzcbxVar) {
        zzp(zzd(zzccbVar, Binder.getCallingUid()), zzcbxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzg(zzccb zzccbVar, zzcbx zzcbxVar) {
        zzgfb zzc = zzc(zzccbVar, Binder.getCallingUid());
        zzp(zzc, zzcbxVar);
        if (((Boolean) zzbkz.zzc.zze()).booleanValue()) {
            if (((Boolean) zzbkx.zzj.zze()).booleanValue()) {
                zzeie zzeieVar = this.zzd;
                zzeieVar.getClass();
                zzc.zzc(new zzegz(zzeieVar), this.zzc);
                return;
            }
            zzeie zzeieVar2 = this.zzd;
            zzeieVar2.getClass();
            zzc.zzc(new zzegz(zzeieVar2), this.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzh(String str, zzcbx zzcbxVar) {
        zzp(zzi(str), zzcbxVar);
    }

    public final zzgfb zzi(String str) {
        if (!((Boolean) zzblf.zza.zze()).booleanValue()) {
            return zzger.zzh(new Exception("Split request is disabled."));
        }
        zzehh zzehhVar = new zzehh(this);
        if (zzk(str) == null) {
            return zzger.zzh(new Exception("URL to be removed not found for cache key: ".concat(String.valueOf(str))));
        }
        return zzger.zzi(zzehhVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ InputStream zzj(zzgfb zzgfbVar, zzgfb zzgfbVar2, zzccb zzccbVar, zzfol zzfolVar) throws Exception {
        String zzc = ((zzcce) zzgfbVar.get()).zzc();
        String str = zzccbVar.zzh;
        zzn(new zzehj((zzcce) zzgfbVar.get(), (JSONObject) zzgfbVar2.get(), str, zzc, zzfolVar));
        return new ByteArrayInputStream(zzc.getBytes(zzfxr.zzc));
    }
}
