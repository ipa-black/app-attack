package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgfo extends zzgeh {
    @CheckForNull
    private zzgfb zza;
    @CheckForNull
    private ScheduledFuture zzb;

    private zzgfo(zzgfb zzgfbVar) {
        zzgfbVar.getClass();
        this.zza = zzgfbVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgfb zzg(zzgfb zzgfbVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        zzgfo zzgfoVar = new zzgfo(zzgfbVar);
        zzgfl zzgflVar = new zzgfl(zzgfoVar);
        zzgfoVar.zzb = scheduledExecutorService.schedule(zzgflVar, j, timeUnit);
        zzgfbVar.zzc(zzgflVar, zzgef.INSTANCE);
        return zzgfoVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgdf
    @CheckForNull
    public final String zza() {
        zzgfb zzgfbVar = this.zza;
        ScheduledFuture scheduledFuture = this.zzb;
        if (zzgfbVar != null) {
            String str = "inputFuture=[" + zzgfbVar.toString() + "]";
            if (scheduledFuture != null) {
                long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
                if (delay > 0) {
                    return str + ", remaining delay=[" + delay + " ms]";
                }
                return str;
            }
            return str;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgdf
    protected final void zzb() {
        zzs(this.zza);
        ScheduledFuture scheduledFuture = this.zzb;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.zza = null;
        this.zzb = null;
    }
}
