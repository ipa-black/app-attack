package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzajy extends Thread {
    private final BlockingQueue zza;
    private final zzajx zzb;
    private final zzajo zzc;
    private volatile boolean zzd = false;
    private final zzajv zze;

    public zzajy(BlockingQueue blockingQueue, zzajx zzajxVar, zzajo zzajoVar, zzajv zzajvVar, byte[] bArr) {
        this.zza = blockingQueue;
        this.zzb = zzajxVar;
        this.zzc = zzajoVar;
        this.zze = zzajvVar;
    }

    private void zzb() throws InterruptedException {
        zzake zzakeVar = (zzake) this.zza.take();
        SystemClock.elapsedRealtime();
        zzakeVar.zzt(3);
        try {
            zzakeVar.zzm("network-queue-take");
            zzakeVar.zzw();
            TrafficStats.setThreadStatsTag(zzakeVar.zzc());
            zzaka zza = this.zzb.zza(zzakeVar);
            zzakeVar.zzm("network-http-complete");
            if (zza.zze && zzakeVar.zzv()) {
                zzakeVar.zzp("not-modified");
                zzakeVar.zzr();
                return;
            }
            zzakk zzh = zzakeVar.zzh(zza);
            zzakeVar.zzm("network-parse-complete");
            if (zzh.zzb != null) {
                this.zzc.zzd(zzakeVar.zzj(), zzh.zzb);
                zzakeVar.zzm("network-cache-written");
            }
            zzakeVar.zzq();
            this.zze.zzb(zzakeVar, zzh, null);
            zzakeVar.zzs(zzh);
        } catch (zzakn e2) {
            SystemClock.elapsedRealtime();
            this.zze.zza(zzakeVar, e2);
            zzakeVar.zzr();
        } catch (Exception e3) {
            zzakq.zzc(e3, "Unhandled exception %s", e3.toString());
            zzakn zzaknVar = new zzakn(e3);
            SystemClock.elapsedRealtime();
            this.zze.zza(zzakeVar, zzaknVar);
            zzakeVar.zzr();
        } finally {
            zzakeVar.zzt(4);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                zzb();
            } catch (InterruptedException unused) {
                if (!this.zzd) {
                    zzakq.zzb("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
                } else {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
        }
    }

    public final void zza() {
        this.zzd = true;
        interrupt();
    }
}
