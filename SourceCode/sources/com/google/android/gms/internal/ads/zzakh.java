package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzakh {
    private final AtomicInteger zza;
    private final Set zzb;
    private final PriorityBlockingQueue zzc;
    private final PriorityBlockingQueue zzd;
    private final zzajo zze;
    private final zzajx zzf;
    private final zzajy[] zzg;
    private zzajq zzh;
    private final List zzi;
    private final List zzj;
    private final zzajv zzk;

    public zzakh(zzajo zzajoVar, zzajx zzajxVar, int i) {
        zzajv zzajvVar = new zzajv(new Handler(Looper.getMainLooper()));
        this.zza = new AtomicInteger();
        this.zzb = new HashSet();
        this.zzc = new PriorityBlockingQueue();
        this.zzd = new PriorityBlockingQueue();
        this.zzi = new ArrayList();
        this.zzj = new ArrayList();
        this.zze = zzajoVar;
        this.zzf = zzajxVar;
        this.zzg = new zzajy[4];
        this.zzk = zzajvVar;
    }

    public final zzake zza(zzake zzakeVar) {
        zzakeVar.zzf(this);
        synchronized (this.zzb) {
            this.zzb.add(zzakeVar);
        }
        zzakeVar.zzg(this.zza.incrementAndGet());
        zzakeVar.zzm("add-to-queue");
        zzc(zzakeVar, 0);
        this.zzc.add(zzakeVar);
        return zzakeVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(zzake zzakeVar) {
        synchronized (this.zzb) {
            this.zzb.remove(zzakeVar);
        }
        synchronized (this.zzi) {
            for (zzakg zzakgVar : this.zzi) {
                zzakgVar.zza();
            }
        }
        zzc(zzakeVar, 5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzc(zzake zzakeVar, int i) {
        synchronized (this.zzj) {
            for (zzakf zzakfVar : this.zzj) {
                zzakfVar.zza();
            }
        }
    }

    public final void zzd() {
        zzajq zzajqVar = this.zzh;
        if (zzajqVar != null) {
            zzajqVar.zzb();
        }
        zzajy[] zzajyVarArr = this.zzg;
        for (int i = 0; i < 4; i++) {
            zzajy zzajyVar = zzajyVarArr[i];
            if (zzajyVar != null) {
                zzajyVar.zza();
            }
        }
        zzajq zzajqVar2 = new zzajq(this.zzc, this.zzd, this.zze, this.zzk, null);
        this.zzh = zzajqVar2;
        zzajqVar2.start();
        for (int i2 = 0; i2 < 4; i2++) {
            zzajy zzajyVar2 = new zzajy(this.zzd, this.zzf, this.zze, this.zzk, null);
            this.zzg[i2] = zzajyVar2;
            zzajyVar2.start();
        }
    }
}
