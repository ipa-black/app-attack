package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.AdFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfow implements Runnable {
    private final zzfoy zzb;
    private String zzc;
    private String zzd;
    private zzfiw zze;
    private com.google.android.gms.ads.internal.client.zze zzf;
    private Future zzg;
    private final List zza = new ArrayList();
    private int zzh = 2;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfow(zzfoy zzfoyVar) {
        this.zzb = zzfoyVar;
    }

    @Override // java.lang.Runnable
    public final synchronized void run() {
        zzg();
    }

    public final synchronized zzfow zza(zzfol zzfolVar) {
        if (((Boolean) zzbks.zzc.zze()).booleanValue()) {
            List list = this.zza;
            zzfolVar.zzi();
            list.add(zzfolVar);
            Future future = this.zzg;
            if (future != null) {
                future.cancel(false);
            }
            this.zzg = zzcib.zzd.schedule(this, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhR)).intValue(), TimeUnit.MILLISECONDS);
        }
        return this;
    }

    public final synchronized zzfow zzb(String str) {
        if (((Boolean) zzbks.zzc.zze()).booleanValue() && zzfov.zze(str)) {
            this.zzc = str;
        }
        return this;
    }

    public final synchronized zzfow zzc(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) zzbks.zzc.zze()).booleanValue()) {
            this.zzf = zzeVar;
        }
        return this;
    }

    public final synchronized zzfow zzd(ArrayList arrayList) {
        if (((Boolean) zzbks.zzc.zze()).booleanValue()) {
            if (!arrayList.contains("banner") && !arrayList.contains(AdFormat.BANNER.name())) {
                if (!arrayList.contains("interstitial") && !arrayList.contains(AdFormat.INTERSTITIAL.name())) {
                    if (!arrayList.contains("native") && !arrayList.contains(AdFormat.NATIVE.name())) {
                        if (!arrayList.contains("rewarded") && !arrayList.contains(AdFormat.REWARDED.name())) {
                            if (arrayList.contains("app_open_ad")) {
                                this.zzh = 7;
                            } else if (arrayList.contains("rewarded_interstitial") || arrayList.contains(AdFormat.REWARDED_INTERSTITIAL.name())) {
                                this.zzh = 6;
                            }
                        }
                        this.zzh = 5;
                    }
                    this.zzh = 8;
                }
                this.zzh = 4;
            }
            this.zzh = 3;
        }
        return this;
    }

    public final synchronized zzfow zze(String str) {
        if (((Boolean) zzbks.zzc.zze()).booleanValue()) {
            this.zzd = str;
        }
        return this;
    }

    public final synchronized zzfow zzf(zzfiw zzfiwVar) {
        if (((Boolean) zzbks.zzc.zze()).booleanValue()) {
            this.zze = zzfiwVar;
        }
        return this;
    }

    public final synchronized void zzg() {
        if (((Boolean) zzbks.zzc.zze()).booleanValue()) {
            Future future = this.zzg;
            if (future != null) {
                future.cancel(false);
            }
            for (zzfol zzfolVar : this.zza) {
                int i = this.zzh;
                if (i != 2) {
                    zzfolVar.zzm(i);
                }
                if (!TextUtils.isEmpty(this.zzc)) {
                    zzfolVar.zze(this.zzc);
                }
                if (!TextUtils.isEmpty(this.zzd) && !zzfolVar.zzk()) {
                    zzfolVar.zzd(this.zzd);
                }
                zzfiw zzfiwVar = this.zze;
                if (zzfiwVar != null) {
                    zzfolVar.zzb(zzfiwVar);
                } else {
                    com.google.android.gms.ads.internal.client.zze zzeVar = this.zzf;
                    if (zzeVar != null) {
                        zzfolVar.zza(zzeVar);
                    }
                }
                this.zzb.zzb(zzfolVar.zzl());
            }
            this.zza.clear();
        }
    }

    public final synchronized zzfow zzh(int i) {
        if (((Boolean) zzbks.zzc.zze()).booleanValue()) {
            this.zzh = i;
        }
        return this;
    }
}
