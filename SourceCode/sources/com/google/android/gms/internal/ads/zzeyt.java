package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeyt implements zzezm {
    private final String zza;
    private final zzgfc zzb;
    private final ScheduledExecutorService zzc;
    private final Context zzd;
    private final zzfjg zze;
    private final zzcpj zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeyt(zzgfc zzgfcVar, ScheduledExecutorService scheduledExecutorService, String str, Context context, zzfjg zzfjgVar, zzcpj zzcpjVar) {
        this.zzb = zzgfcVar;
        this.zzc = scheduledExecutorService;
        this.zza = str;
        this.zzd = context;
        this.zze = zzfjgVar;
        this.zzf = zzcpjVar;
    }

    public static /* synthetic */ zzgfb zzc(zzeyt zzeytVar) {
        String str = zzeytVar.zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgB)).booleanValue()) {
            str = AdFormat.UNKNOWN.name();
        }
        com.google.android.gms.ads.nonagon.signalgeneration.zzg zzo = zzeytVar.zzf.zzo();
        zzddx zzddxVar = new zzddx();
        zzddxVar.zzc(zzeytVar.zzd);
        zzfje zzfjeVar = new zzfje();
        zzfjeVar.zzs("adUnitId");
        zzfjeVar.zzE(zzeytVar.zze.zzd);
        zzfjeVar.zzr(new com.google.android.gms.ads.internal.client.zzq());
        zzddxVar.zzf(zzfjeVar.zzG());
        zzo.zza(zzddxVar.zzg());
        com.google.android.gms.ads.nonagon.signalgeneration.zzae zzaeVar = new com.google.android.gms.ads.nonagon.signalgeneration.zzae();
        zzaeVar.zza(str);
        zzo.zzb(zzaeVar.zzb());
        new zzdjy();
        return zzger.zzf(zzger.zzm((zzgei) zzger.zzo(zzgei.zzv(zzo.zzc().zzc()), ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgC)).longValue(), TimeUnit.MILLISECONDS, zzeytVar.zzc), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzeyr
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                com.google.android.gms.ads.nonagon.signalgeneration.zzao zzaoVar = (com.google.android.gms.ads.nonagon.signalgeneration.zzao) obj;
                return zzaoVar != null ? new zzeyu(zzaoVar.zza) : new zzeyu(null);
            }
        }, zzeytVar.zzb), Exception.class, new zzfxt() { // from class: com.google.android.gms.internal.ads.zzeys
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                zzcho.zzh("", (Exception) obj);
                return new zzeyu(null);
            }
        }, zzeytVar.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 33;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgA)).booleanValue() || "adUnitId".equals(this.zze.zzf)) {
            return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeyp
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzeyu(null);
                }
            });
        }
        return zzger.zzl(new zzgdx() { // from class: com.google.android.gms.internal.ads.zzeyq
            @Override // com.google.android.gms.internal.ads.zzgdx
            public final zzgfb zza() {
                return zzeyt.zzc(zzeyt.this);
            }
        }, this.zzb);
    }
}
