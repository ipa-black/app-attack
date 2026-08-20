package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzww {
    public static final zzwq zza = new zzwq(0, C.TIME_UNSET, null);
    public static final zzwq zzb = new zzwq(1, C.TIME_UNSET, null);
    public static final zzwq zzc = new zzwq(2, C.TIME_UNSET, null);
    public static final zzwq zzd = new zzwq(3, C.TIME_UNSET, null);
    private final ExecutorService zze = zzen.zzQ("ExoPlayer:Loader:ProgressiveMediaPeriod");
    private zzwr zzf;
    private IOException zzg;

    public zzww(String str) {
    }

    public static zzwq zzb(boolean z, long j) {
        return new zzwq(z ? 1 : 0, j, null);
    }

    public final long zza(zzws zzwsVar, zzwo zzwoVar, int i) {
        Looper myLooper = Looper.myLooper();
        zzdd.zzb(myLooper);
        this.zzg = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new zzwr(this, myLooper, zzwsVar, zzwoVar, i, elapsedRealtime).zzc(0L);
        return elapsedRealtime;
    }

    public final void zzg() {
        zzwr zzwrVar = this.zzf;
        zzdd.zzb(zzwrVar);
        zzwrVar.zza(false);
    }

    public final void zzh() {
        this.zzg = null;
    }

    public final void zzi(int i) throws IOException {
        IOException iOException = this.zzg;
        if (iOException != null) {
            throw iOException;
        }
        zzwr zzwrVar = this.zzf;
        if (zzwrVar != null) {
            zzwrVar.zzb(i);
        }
    }

    public final void zzj(zzwt zzwtVar) {
        zzwr zzwrVar = this.zzf;
        if (zzwrVar != null) {
            zzwrVar.zza(true);
        }
        this.zze.execute(new zzwu(zzwtVar));
        this.zze.shutdown();
    }

    public final boolean zzk() {
        return this.zzg != null;
    }

    public final boolean zzl() {
        return this.zzf != null;
    }
}
