package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeym implements zzezm {
    final String zza;
    private final zzgfc zzb;
    private final ScheduledExecutorService zzc;
    private final zzeqx zzd;
    private final Context zze;
    private final zzfjg zzf;
    private final zzeqt zzg;
    private final zzdxc zzh;
    private final zzebl zzi;

    public zzeym(zzgfc zzgfcVar, ScheduledExecutorService scheduledExecutorService, String str, zzeqx zzeqxVar, Context context, zzfjg zzfjgVar, zzeqt zzeqtVar, zzdxc zzdxcVar, zzebl zzeblVar) {
        this.zzb = zzgfcVar;
        this.zzc = scheduledExecutorService;
        this.zza = str;
        this.zzd = zzeqxVar;
        this.zze = context;
        this.zzf = zzfjgVar;
        this.zzg = zzeqtVar;
        this.zzh = zzdxcVar;
        this.zzi = zzeblVar;
    }

    public static /* synthetic */ zzgfb zzc(zzeym zzeymVar) {
        String str;
        final Bundle bundle;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziZ)).booleanValue()) {
            str = zzeymVar.zzf.zzf.toLowerCase(Locale.ROOT);
        } else {
            str = zzeymVar.zzf.zzf;
        }
        Map zza = zzeymVar.zzd.zza(zzeymVar.zza, str);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbw)).booleanValue()) {
            bundle = zzeymVar.zzi.zzg();
        } else {
            bundle = new Bundle();
        }
        final ArrayList arrayList = new ArrayList();
        Iterator it = ((zzgax) zza).entrySet().iterator();
        while (true) {
            Bundle bundle2 = null;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            String str2 = (String) entry.getKey();
            List list = (List) entry.getValue();
            Bundle bundle3 = zzeymVar.zzf.zzd.zzm;
            if (bundle3 != null) {
                bundle2 = bundle3.getBundle(str2);
            }
            arrayList.add(zzeymVar.zze(str2, list, bundle2, true, true));
        }
        for (Map.Entry entry2 : ((zzgax) zzeymVar.zzd.zzb()).entrySet()) {
            zzerb zzerbVar = (zzerb) entry2.getValue();
            String str3 = zzerbVar.zza;
            Bundle bundle4 = zzeymVar.zzf.zzd.zzm;
            arrayList.add(zzeymVar.zze(str3, Collections.singletonList(zzerbVar.zzd), bundle4 != null ? bundle4.getBundle(str3) : null, zzerbVar.zzb, zzerbVar.zzc));
        }
        return zzger.zzc(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeyj
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<zzgfb> list2 = arrayList;
                Bundle bundle5 = bundle;
                JSONArray jSONArray = new JSONArray();
                for (zzgfb zzgfbVar : list2) {
                    if (((JSONObject) zzgfbVar.get()) != null) {
                        jSONArray.put(zzgfbVar.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new zzeyn(jSONArray.toString(), bundle5);
            }
        }, zzeymVar.zzb);
    }

    private final zzgei zze(final String str, final List list, final Bundle bundle, final boolean z, final boolean z2) {
        zzgei zzv = zzgei.zzv(zzger.zzl(new zzgdx() { // from class: com.google.android.gms.internal.ads.zzeyk
            @Override // com.google.android.gms.internal.ads.zzgdx
            public final zzgfb zza() {
                return zzeym.this.zzd(str, list, bundle, z, z2);
            }
        }, this.zzb));
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbs)).booleanValue()) {
            zzv = (zzgei) zzger.zzo(zzv, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbl)).longValue(), TimeUnit.MILLISECONDS, this.zzc);
        }
        return (zzgei) zzger.zzf(zzv, Throwable.class, new zzfxt() { // from class: com.google.android.gms.internal.ads.zzeyl
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                com.google.android.gms.ads.internal.util.zze.zzg("Error calling adapter: ".concat(String.valueOf(str)));
                return null;
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 32;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return zzger.zzl(new zzgdx() { // from class: com.google.android.gms.internal.ads.zzeyh
            @Override // com.google.android.gms.internal.ads.zzgdx
            public final zzgfb zza() {
                return zzeym.zzc(zzeym.this);
            }
        }, this.zzb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzd(String str, List list, Bundle bundle, boolean z, boolean z2) throws Exception {
        zzbxq zzbxqVar;
        zzbxq zzb;
        zzcig zzcigVar = new zzcig();
        if (z2) {
            this.zzg.zzb(str);
            zzb = this.zzg.zza(str);
        } else {
            try {
                zzb = this.zzh.zzb(str);
            } catch (RemoteException e2) {
                com.google.android.gms.ads.internal.util.zze.zzh("Couldn't create RTB adapter : ", e2);
                zzbxqVar = null;
            }
        }
        zzbxqVar = zzb;
        if (zzbxqVar == null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbn)).booleanValue()) {
                zzera.zzb(str, zzcigVar);
            } else {
                throw null;
            }
        } else {
            final zzera zzeraVar = new zzera(str, zzbxqVar, zzcigVar, com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime());
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbs)).booleanValue()) {
                this.zzc.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeyi
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzera.this.zzc();
                    }
                }, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbl)).longValue(), TimeUnit.MILLISECONDS);
            }
            if (z) {
                zzbxqVar.zzh(ObjectWrapper.wrap(this.zze), this.zza, bundle, (Bundle) list.get(0), this.zzf.zze, zzeraVar);
            } else {
                zzeraVar.zzd();
            }
        }
        return zzcigVar;
    }
}
