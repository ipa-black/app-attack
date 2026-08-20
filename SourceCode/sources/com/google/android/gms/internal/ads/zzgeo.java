package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgeo implements Runnable {
    final Future zza;
    final zzgen zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgeo(Future future, zzgen zzgenVar) {
        this.zza = future;
        this.zzb = zzgenVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable zza;
        Future future = this.zza;
        if (!(future instanceof zzgfu) || (zza = zzgfv.zza((zzgfu) future)) == null) {
            try {
                this.zzb.zzb(zzger.zzp(this.zza));
                return;
            } catch (Error e2) {
                e = e2;
                this.zzb.zza(e);
                return;
            } catch (RuntimeException e3) {
                e = e3;
                this.zzb.zza(e);
                return;
            } catch (ExecutionException e4) {
                this.zzb.zza(e4.getCause());
                return;
            }
        }
        this.zzb.zza(zza);
    }

    public final String toString() {
        zzfxx zza = zzfxy.zza(this);
        zza.zza(this.zzb);
        return zza.toString();
    }
}
