package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbee {
    private ScheduledFuture zza = null;
    private final Runnable zzb = new zzbea(this);
    private final Object zzc = new Object();
    private zzbeh zzd;
    private Context zze;
    private zzbek zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzh(zzbee zzbeeVar) {
        synchronized (zzbeeVar.zzc) {
            zzbeh zzbehVar = zzbeeVar.zzd;
            if (zzbehVar == null) {
                return;
            }
            if (zzbehVar.isConnected() || zzbeeVar.zzd.isConnecting()) {
                zzbeeVar.zzd.disconnect();
            }
            zzbeeVar.zzd = null;
            zzbeeVar.zzf = null;
            Binder.flushPendingCommands();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzl() {
        synchronized (this.zzc) {
            if (this.zze != null && this.zzd == null) {
                zzbeh zzd = zzd(new zzbec(this), new zzbed(this));
                this.zzd = zzd;
                zzd.checkAvailabilityAndConnect();
            }
        }
    }

    public final long zza(zzbei zzbeiVar) {
        synchronized (this.zzc) {
            if (this.zzf == null) {
                return -2L;
            }
            if (this.zzd.zzp()) {
                try {
                    return this.zzf.zze(zzbeiVar);
                } catch (RemoteException e2) {
                    com.google.android.gms.ads.internal.util.zze.zzh("Unable to call into cache service.", e2);
                }
            }
            return -2L;
        }
    }

    public final zzbef zzb(zzbei zzbeiVar) {
        synchronized (this.zzc) {
            if (this.zzf == null) {
                return new zzbef();
            }
            try {
                if (this.zzd.zzp()) {
                    return this.zzf.zzg(zzbeiVar);
                }
                return this.zzf.zzf(zzbeiVar);
            } catch (RemoteException e2) {
                com.google.android.gms.ads.internal.util.zze.zzh("Unable to call into cache service.", e2);
                return new zzbef();
            }
        }
    }

    protected final synchronized zzbeh zzd(BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        return new zzbeh(this.zze, com.google.android.gms.ads.internal.zzt.zzt().zzb(), baseConnectionCallbacks, baseOnConnectionFailedListener);
    }

    public final void zzi(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.zzc) {
            if (this.zze != null) {
                return;
            }
            this.zze = context.getApplicationContext();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdI)).booleanValue()) {
                zzl();
            } else {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdH)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzt.zzb().zzc(new zzbeb(this));
                }
            }
        }
    }

    public final void zzj() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdJ)).booleanValue()) {
            synchronized (this.zzc) {
                zzl();
                ScheduledFuture scheduledFuture = this.zza;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                this.zza = zzcib.zzd.schedule(this.zzb, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdK)).longValue(), TimeUnit.MILLISECONDS);
            }
        }
    }
}
