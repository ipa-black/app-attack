package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbah {
    private final ExecutorService zza = zzbay.zzl("Loader:ExtractorMediaPeriod");
    private zzbae zzb;
    private IOException zzc;

    public zzbah(String str) {
    }

    public final long zza(zzbaf zzbafVar, zzbad zzbadVar, int i) {
        Looper myLooper = Looper.myLooper();
        zzbaj.zze(myLooper != null);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new zzbae(this, myLooper, zzbafVar, zzbadVar, i, elapsedRealtime).zzc(0L);
        return elapsedRealtime;
    }

    public final void zzf() {
        this.zzb.zza(false);
    }

    public final void zzg(int i) throws IOException {
        IOException iOException = this.zzc;
        if (iOException != null) {
            throw iOException;
        }
        zzbae zzbaeVar = this.zzb;
        if (zzbaeVar != null) {
            zzbaeVar.zzb(zzbaeVar.zza);
        }
    }

    public final void zzh(Runnable runnable) {
        zzbae zzbaeVar = this.zzb;
        if (zzbaeVar != null) {
            zzbaeVar.zza(true);
        }
        this.zza.execute(runnable);
        this.zza.shutdown();
    }

    public final boolean zzi() {
        return this.zzb != null;
    }
}
