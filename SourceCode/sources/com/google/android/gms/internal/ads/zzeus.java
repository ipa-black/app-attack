package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeus implements zzezm {
    final zzcgx zza;
    AppSetIdClient zzb;
    private final ScheduledExecutorService zzc;
    private final zzgfc zzd;
    private final Context zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeus(Context context, zzcgx zzcgxVar, ScheduledExecutorService scheduledExecutorService, zzgfc zzgfcVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzct)).booleanValue()) {
            this.zzb = AppSet.getClient(context);
        }
        this.zze = context;
        this.zza = zzcgxVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzgfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 11;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        Task<AppSetIdInfo> appSetIdInfo;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcp)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcu)).booleanValue()) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcq)).booleanValue()) {
                    return zzger.zzm(zzfvj.zza(this.zzb.getAppSetIdInfo()), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzeup
                        @Override // com.google.android.gms.internal.ads.zzfxt
                        public final Object apply(Object obj) {
                            AppSetIdInfo appSetIdInfo2 = (AppSetIdInfo) obj;
                            return new zzeut(appSetIdInfo2.getId(), appSetIdInfo2.getScope());
                        }
                    }, zzcib.zzf);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzct)).booleanValue()) {
                    appSetIdInfo = zzfkj.zza(this.zze);
                } else {
                    appSetIdInfo = this.zzb.getAppSetIdInfo();
                }
                if (appSetIdInfo == null) {
                    return zzger.zzi(new zzeut(null, -1));
                }
                zzgfb zzn = zzger.zzn(zzfvj.zza(appSetIdInfo), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzeuq
                    @Override // com.google.android.gms.internal.ads.zzgdy
                    public final zzgfb zza(Object obj) {
                        AppSetIdInfo appSetIdInfo2 = (AppSetIdInfo) obj;
                        if (appSetIdInfo2 == null) {
                            return zzger.zzi(new zzeut(null, -1));
                        }
                        return zzger.zzi(new zzeut(appSetIdInfo2.getId(), appSetIdInfo2.getScope()));
                    }
                }, zzcib.zzf);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcr)).booleanValue()) {
                    zzn = zzger.zzo(zzn, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcs)).longValue(), TimeUnit.MILLISECONDS, this.zzc);
                }
                return zzger.zzf(zzn, Exception.class, new zzfxt() { // from class: com.google.android.gms.internal.ads.zzeur
                    @Override // com.google.android.gms.internal.ads.zzfxt
                    public final Object apply(Object obj) {
                        zzeus.this.zza.zzu((Exception) obj, "AppSetIdInfoSignal");
                        return new zzeut(null, -1);
                    }
                }, this.zzd);
            }
        }
        return zzger.zzi(new zzeut(null, -1));
    }
}
