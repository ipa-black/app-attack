package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzegt extends zzegw {
    private zzcbf zzh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzegt(Context context, ScheduledExecutorService scheduledExecutorService) {
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
            this.zzd.zzp().zzf(this.zzh, new zzegv(this));
        } catch (RemoteException unused) {
            this.zza.zze(new zzefg(1));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzegw, com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        String format = String.format(Locale.US, "Remote ad service connection suspended, cause: %d.", Integer.valueOf(i));
        com.google.android.gms.ads.internal.util.zze.zze(format);
        this.zza.zze(new zzefg(1, format));
    }

    public final synchronized zzgfb zza(zzcbf zzcbfVar, long j) {
        if (this.zzb) {
            return zzger.zzo(this.zza, j, TimeUnit.MILLISECONDS, this.zzg);
        }
        this.zzb = true;
        this.zzh = zzcbfVar;
        zzb();
        zzgfb zzo = zzger.zzo(this.zza, j, TimeUnit.MILLISECONDS, this.zzg);
        zzo.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzegs
            @Override // java.lang.Runnable
            public final void run() {
                zzegt.this.zzc();
            }
        }, zzcib.zzf);
        return zzo;
    }
}
