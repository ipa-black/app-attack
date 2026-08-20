package com.google.android.gms.internal.ads;

import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfbc implements zzezm {
    private final zzcgx zza;
    private final String zzb;
    private final ScheduledExecutorService zzc;
    private final zzgfc zzd;
    private final zzbdz zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfbc(String str, zzbdz zzbdzVar, zzcgx zzcgxVar, ScheduledExecutorService scheduledExecutorService, zzgfc zzgfcVar, byte[] bArr) {
        this.zzb = str;
        this.zze = zzbdzVar;
        this.zza = zzcgxVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzgfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 43;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcp)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcu)).booleanValue()) {
                zzgfb zzn = zzger.zzn(zzfvj.zza(Tasks.forResult(null)), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzfba
                    @Override // com.google.android.gms.internal.ads.zzgdy
                    public final zzgfb zza(Object obj) {
                        AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
                        if (appSetIdInfo == null) {
                            return zzger.zzi(new zzfbd(null, -1));
                        }
                        return zzger.zzi(new zzfbd(appSetIdInfo.getId(), appSetIdInfo.getScope()));
                    }
                }, this.zzd);
                if (((Boolean) zzbko.zza.zze()).booleanValue()) {
                    zzn = zzger.zzo(zzn, ((Long) zzbko.zzb.zze()).longValue(), TimeUnit.MILLISECONDS, this.zzc);
                }
                return zzger.zzf(zzn, Exception.class, new zzfxt() { // from class: com.google.android.gms.internal.ads.zzfbb
                    @Override // com.google.android.gms.internal.ads.zzfxt
                    public final Object apply(Object obj) {
                        return zzfbc.this.zzc((Exception) obj);
                    }
                }, this.zzd);
            }
        }
        return zzger.zzi(new zzfbd(null, -1));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzfbd zzc(Exception exc) {
        this.zza.zzu(exc, "AppSetIdInfoGmscoreSignal");
        return new zzfbd(null, -1);
    }
}
