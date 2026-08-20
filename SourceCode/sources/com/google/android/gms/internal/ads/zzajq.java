package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzajq extends Thread {
    private static final boolean zza = zzakq.zzb;
    private final BlockingQueue zzb;
    private final BlockingQueue zzc;
    private final zzajo zzd;
    private volatile boolean zze = false;
    private final zzakr zzf;
    private final zzajv zzg;

    public zzajq(BlockingQueue blockingQueue, BlockingQueue blockingQueue2, zzajo zzajoVar, zzajv zzajvVar, byte[] bArr) {
        this.zzb = blockingQueue;
        this.zzc = blockingQueue2;
        this.zzd = zzajoVar;
        this.zzg = zzajvVar;
        this.zzf = new zzakr(this, blockingQueue2, zzajvVar, null);
    }

    private void zzc() throws InterruptedException {
        zzake zzakeVar = (zzake) this.zzb.take();
        zzakeVar.zzm("cache-queue-take");
        zzakeVar.zzt(1);
        try {
            zzakeVar.zzw();
            zzajn zza2 = this.zzd.zza(zzakeVar.zzj());
            if (zza2 == null) {
                zzakeVar.zzm("cache-miss");
                if (!this.zzf.zzc(zzakeVar)) {
                    this.zzc.put(zzakeVar);
                }
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (zza2.zza(currentTimeMillis)) {
                zzakeVar.zzm("cache-hit-expired");
                zzakeVar.zze(zza2);
                if (!this.zzf.zzc(zzakeVar)) {
                    this.zzc.put(zzakeVar);
                }
                return;
            }
            zzakeVar.zzm("cache-hit");
            zzakk zzh = zzakeVar.zzh(new zzaka(zza2.zza, zza2.zzg));
            zzakeVar.zzm("cache-hit-parsed");
            if (!zzh.zzc()) {
                zzakeVar.zzm("cache-parsing-failed");
                this.zzd.zzc(zzakeVar.zzj(), true);
                zzakeVar.zze(null);
                if (!this.zzf.zzc(zzakeVar)) {
                    this.zzc.put(zzakeVar);
                }
                return;
            }
            if (zza2.zzf < currentTimeMillis) {
                zzakeVar.zzm("cache-hit-refresh-needed");
                zzakeVar.zze(zza2);
                zzh.zzd = true;
                if (this.zzf.zzc(zzakeVar)) {
                    this.zzg.zzb(zzakeVar, zzh, null);
                } else {
                    this.zzg.zzb(zzakeVar, zzh, new zzajp(this, zzakeVar));
                }
            } else {
                this.zzg.zzb(zzakeVar, zzh, null);
            }
        } finally {
            zzakeVar.zzt(2);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (zza) {
            zzakq.zzd("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.zzd.zzb();
        while (true) {
            try {
                zzc();
            } catch (InterruptedException unused) {
                if (!this.zze) {
                    zzakq.zzb("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
                } else {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
        }
    }

    public final void zzb() {
        this.zze = true;
        interrupt();
    }
}
