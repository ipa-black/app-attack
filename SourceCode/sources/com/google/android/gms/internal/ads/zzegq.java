package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzegq extends zzegw {
    private zzcbj zzh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzegq(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.zze = context;
        this.zzf = com.google.android.gms.ads.internal.zzt.zzt().zzb();
        this.zzg = scheduledExecutorService;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final synchronized void onConnected(Bundle bundle) {
        if (this.zzc) {
            return;
        }
        this.zzc = true;
        try {
            this.zzd.zzp().zze(this.zzh, new zzegv(this));
        } catch (RemoteException unused) {
            this.zza.zze(new zzefg(1));
        }
    }

    public final synchronized zzgfb zza(zzcbj zzcbjVar, long j) {
        if (this.zzb) {
            return zzger.zzo(this.zza, j, TimeUnit.MILLISECONDS, this.zzg);
        }
        this.zzb = true;
        this.zzh = zzcbjVar;
        zzb();
        zzgfb zzo = zzger.zzo(this.zza, j, TimeUnit.MILLISECONDS, this.zzg);
        zzo.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzegp
            @Override // java.lang.Runnable
            public final void run() {
                zzegq.this.zzc();
            }
        }, zzcib.zzf);
        return zzo;
    }
}
