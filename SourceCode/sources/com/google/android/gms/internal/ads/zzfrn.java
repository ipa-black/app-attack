package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfrn {
    private final BlockingQueue zza;
    private final ThreadPoolExecutor zzb;
    private final ArrayDeque zzc = new ArrayDeque();
    private zzfrm zzd = null;

    public zzfrn() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.zza = linkedBlockingQueue;
        this.zzb = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private final void zzc() {
        zzfrm zzfrmVar = (zzfrm) this.zzc.poll();
        this.zzd = zzfrmVar;
        if (zzfrmVar != null) {
            zzfrmVar.executeOnExecutor(this.zzb, new Object[0]);
        }
    }

    public final void zza(zzfrm zzfrmVar) {
        this.zzd = null;
        zzc();
    }

    public final void zzb(zzfrm zzfrmVar) {
        zzfrmVar.zzb(this);
        this.zzc.add(zzfrmVar);
        if (this.zzd == null) {
            zzc();
        }
    }
}
