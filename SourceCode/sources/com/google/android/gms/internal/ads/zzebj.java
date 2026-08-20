package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.appnext.core.AppnextError;
import com.appodeal.ads.modules.common.internal.Constants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzebj {
    private final Context zzf;
    private final WeakReference zzg;
    private final zzdxc zzh;
    private final Executor zzi;
    private final Executor zzj;
    private final ScheduledExecutorService zzk;
    private final zzdzq zzl;
    private final zzchu zzm;
    private final zzdlf zzo;
    private final zzfoy zzp;
    private boolean zza = false;
    private boolean zzb = false;
    private boolean zzc = false;
    private final zzcig zze = new zzcig();
    private final Map zzn = new ConcurrentHashMap();
    private boolean zzq = true;
    private final long zzd = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();

    public zzebj(Executor executor, Context context, WeakReference weakReference, Executor executor2, zzdxc zzdxcVar, ScheduledExecutorService scheduledExecutorService, zzdzq zzdzqVar, zzchu zzchuVar, zzdlf zzdlfVar, zzfoy zzfoyVar) {
        this.zzh = zzdxcVar;
        this.zzf = context;
        this.zzg = weakReference;
        this.zzi = executor2;
        this.zzk = scheduledExecutorService;
        this.zzj = executor;
        this.zzl = zzdzqVar;
        this.zzm = zzchuVar;
        this.zzo = zzdlfVar;
        this.zzp = zzfoyVar;
        zzv("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzj(final zzebj zzebjVar, String str) {
        int i = 5;
        final zzfol zza = zzfok.zza(zzebjVar.zzf, 5);
        zza.zzh();
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject(Constants.CONFIG);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                final String next = keys.next();
                final zzfol zza2 = zzfok.zza(zzebjVar.zzf, i);
                zza2.zzh();
                zza2.zzd(next);
                final Object obj = new Object();
                final zzcig zzcigVar = new zzcig();
                zzgfb zzo = zzger.zzo(zzcigVar, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbD)).longValue(), TimeUnit.SECONDS, zzebjVar.zzk);
                zzebjVar.zzl.zzc(next);
                zzebjVar.zzo.zzc(next);
                final long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                zzo.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeba
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzebj.this.zzq(obj, zzcigVar, next, elapsedRealtime, zza2);
                    }
                }, zzebjVar.zzi);
                arrayList.add(zzo);
                final zzebi zzebiVar = new zzebi(zzebjVar, obj, next, elapsedRealtime, zza2, zzcigVar);
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                final ArrayList arrayList2 = new ArrayList();
                if (optJSONObject != null) {
                    try {
                        JSONArray jSONArray = optJSONObject.getJSONArray("data");
                        int i2 = 0;
                        while (i2 < jSONArray.length()) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                            String optString = jSONObject2.optString("format", "");
                            JSONObject optJSONObject2 = jSONObject2.optJSONObject("data");
                            Bundle bundle = new Bundle();
                            if (optJSONObject2 != null) {
                                Iterator<String> keys2 = optJSONObject2.keys();
                                while (keys2.hasNext()) {
                                    String next2 = keys2.next();
                                    bundle.putString(next2, optJSONObject2.optString(next2, ""));
                                    jSONArray = jSONArray;
                                }
                            }
                            JSONArray jSONArray2 = jSONArray;
                            arrayList2.add(new zzbsj(optString, bundle));
                            i2++;
                            jSONArray = jSONArray2;
                        }
                    } catch (JSONException unused) {
                    }
                }
                zzebjVar.zzv(next, false, "", 0);
                try {
                    try {
                        final zzfkb zzc = zzebjVar.zzh.zzc(next, new JSONObject());
                        zzebjVar.zzj.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebe
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzebj.this.zzn(zzc, zzebiVar, arrayList2, next);
                            }
                        });
                    } catch (RemoteException e2) {
                        zzcho.zzh("", e2);
                    }
                } catch (zzfjl unused2) {
                    zzebiVar.zze("Failed to create Adapter.");
                }
                i = 5;
            }
            zzger.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzebb
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzebj.this.zzf(zza);
                    return null;
                }
            }, zzebjVar.zzi);
        } catch (JSONException e3) {
            com.google.android.gms.ads.internal.util.zze.zzb("Malformed CLD response", e3);
            zzebjVar.zzo.zza("MalformedJson");
            zzebjVar.zzl.zza("MalformedJson");
            zzebjVar.zze.zze(e3);
            com.google.android.gms.ads.internal.zzt.zzo().zzu(e3, "AdapterInitializer.updateAdapterStatus");
            zzfoy zzfoyVar = zzebjVar.zzp;
            zza.zzg(e3);
            zza.zzf(false);
            zzfoyVar.zzb(zza.zzl());
        }
    }

    private final synchronized zzgfb zzu() {
        String zzc = com.google.android.gms.ads.internal.zzt.zzo().zzh().zzh().zzc();
        if (TextUtils.isEmpty(zzc)) {
            final zzcig zzcigVar = new zzcig();
            com.google.android.gms.ads.internal.zzt.zzo().zzh().zzq(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebf
                @Override // java.lang.Runnable
                public final void run() {
                    zzebj.this.zzo(zzcigVar);
                }
            });
            return zzcigVar;
        }
        return zzger.zzi(zzc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzv(String str, boolean z, String str2, int i) {
        this.zzn.put(str, new zzbrz(str, z, i, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object zzf(zzfol zzfolVar) throws Exception {
        this.zze.zzd(true);
        zzfoy zzfoyVar = this.zzp;
        zzfolVar.zzf(true);
        zzfoyVar.zzb(zzfolVar.zzl());
        return null;
    }

    public final List zzg() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.zzn.keySet()) {
            zzbrz zzbrzVar = (zzbrz) this.zzn.get(str);
            arrayList.add(new zzbrz(str, zzbrzVar.zzb, zzbrzVar.zzc, zzbrzVar.zzd));
        }
        return arrayList;
    }

    public final void zzl() {
        this.zzq = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzm() {
        synchronized (this) {
            if (this.zzc) {
                return;
            }
            zzv("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zzd));
            this.zzl.zzb("com.google.android.gms.ads.MobileAds", "timeout");
            this.zzo.zzb("com.google.android.gms.ads.MobileAds", "timeout");
            this.zze.zze(new Exception());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzn(zzfkb zzfkbVar, zzbsd zzbsdVar, List list, String str) {
        try {
            try {
                Context context = (Context) this.zzg.get();
                if (context == null) {
                    context = this.zzf;
                }
                zzfkbVar.zzi(context, zzbsdVar, list);
            } catch (zzfjl unused) {
                zzbsdVar.zze("Failed to initialize adapter. " + str + " does not implement the initialize() method.");
            }
        } catch (RemoteException e2) {
            zzcho.zzh("", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzo(final zzcig zzcigVar) {
        this.zzi.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeay
            @Override // java.lang.Runnable
            public final void run() {
                zzcig zzcigVar2 = zzcigVar;
                String zzc = com.google.android.gms.ads.internal.zzt.zzo().zzh().zzh().zzc();
                if (!TextUtils.isEmpty(zzc)) {
                    zzcigVar2.zzd(zzc);
                } else {
                    zzcigVar2.zze(new Exception());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzp() {
        this.zzl.zze();
        this.zzo.zze();
        this.zzb = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzq(Object obj, zzcig zzcigVar, String str, long j, zzfol zzfolVar) {
        synchronized (obj) {
            if (!zzcigVar.isDone()) {
                zzv(str, false, "Timeout.", (int) (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - j));
                this.zzl.zzb(str, "timeout");
                this.zzo.zzb(str, "timeout");
                zzfoy zzfoyVar = this.zzp;
                zzfolVar.zzc(AppnextError.TIMEOUT);
                zzfolVar.zzf(false);
                zzfoyVar.zzb(zzfolVar.zzl());
                zzcigVar.zzd(false);
            }
        }
    }

    public final void zzr() {
        if (!((Boolean) zzble.zza.zze()).booleanValue()) {
            if (this.zzm.zzc >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbC)).intValue() && this.zzq) {
                if (this.zza) {
                    return;
                }
                synchronized (this) {
                    if (this.zza) {
                        return;
                    }
                    this.zzl.zzf();
                    this.zzo.zzf();
                    this.zze.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeaz
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzebj.this.zzp();
                        }
                    }, this.zzi);
                    this.zza = true;
                    zzgfb zzu = zzu();
                    this.zzk.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebc
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzebj.this.zzm();
                        }
                    }, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbE)).longValue(), TimeUnit.SECONDS);
                    zzger.zzr(zzu, new zzebh(this), this.zzi);
                    return;
                }
            }
        }
        if (this.zza) {
            return;
        }
        zzv("com.google.android.gms.ads.MobileAds", true, "", 0);
        this.zze.zzd(false);
        this.zza = true;
        this.zzb = true;
    }

    public final void zzs(final zzbsg zzbsgVar) {
        this.zze.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebd
            @Override // java.lang.Runnable
            public final void run() {
                zzebj zzebjVar = zzebj.this;
                try {
                    zzbsgVar.zzb(zzebjVar.zzg());
                } catch (RemoteException e2) {
                    zzcho.zzh("", e2);
                }
            }
        }, this.zzj);
    }

    public final boolean zzt() {
        return this.zzb;
    }
}
