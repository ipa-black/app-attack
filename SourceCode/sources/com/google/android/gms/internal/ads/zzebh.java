package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzebh implements zzgen {
    final /* synthetic */ zzebj zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzebh(zzebj zzebjVar) {
        this.zza = zzebjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        long j;
        zzcig zzcigVar;
        synchronized (this) {
            this.zza.zzc = true;
            zzebj zzebjVar = this.zza;
            long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
            j = this.zza.zzd;
            zzebjVar.zzv("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (elapsedRealtime - j));
            zzcigVar = this.zza.zze;
            zzcigVar.zze(new Exception());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(@Nullable Object obj) {
        long j;
        Executor executor;
        final String str = (String) obj;
        synchronized (this) {
            this.zza.zzc = true;
            zzebj zzebjVar = this.zza;
            long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
            j = this.zza.zzd;
            zzebjVar.zzv("com.google.android.gms.ads.MobileAds", true, "", (int) (elapsedRealtime - j));
            executor = this.zza.zzi;
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebg
                @Override // java.lang.Runnable
                public final void run() {
                    zzebh zzebhVar = zzebh.this;
                    zzebj.zzj(zzebhVar.zza, str);
                }
            });
        }
    }
}
