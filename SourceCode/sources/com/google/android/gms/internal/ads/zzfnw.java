package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfnw implements zzfnt {
    private final zzfnt zza;
    private final Queue zzb = new LinkedBlockingQueue();
    private final int zzc = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhN)).intValue();
    private final AtomicBoolean zzd = new AtomicBoolean(false);

    public zzfnw(zzfnt zzfntVar, ScheduledExecutorService scheduledExecutorService) {
        this.zza = zzfntVar;
        long intValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhM)).intValue();
        scheduledExecutorService.scheduleAtFixedRate(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfnv
            @Override // java.lang.Runnable
            public final void run() {
                zzfnw.zzc(zzfnw.this);
            }
        }, intValue, intValue, TimeUnit.MILLISECONDS);
    }

    public static /* synthetic */ void zzc(zzfnw zzfnwVar) {
        while (!zzfnwVar.zzb.isEmpty()) {
            zzfnwVar.zza.zzb((zzfns) zzfnwVar.zzb.remove());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfnt
    public final String zza(zzfns zzfnsVar) {
        return this.zza.zza(zzfnsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfnt
    public final void zzb(zzfns zzfnsVar) {
        if (this.zzb.size() >= this.zzc) {
            if (this.zzd.getAndSet(true)) {
                return;
            }
            Queue queue = this.zzb;
            zzfns zzb = zzfns.zzb("dropped_event");
            Map zzj = zzfnsVar.zzj();
            if (zzj.containsKey("action")) {
                zzb.zza("dropped_action", (String) zzj.get("action"));
            }
            queue.offer(zzb);
            return;
        }
        this.zzb.offer(zzfnsVar);
    }
}
