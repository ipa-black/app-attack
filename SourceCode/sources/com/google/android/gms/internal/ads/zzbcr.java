package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzbcr {
    private final Object zza = new Object();
    private zzbcp zzb = null;
    private boolean zzc = false;

    public final Activity zza() {
        synchronized (this.zza) {
            zzbcp zzbcpVar = this.zzb;
            if (zzbcpVar != null) {
                return zzbcpVar.zza();
            }
            return null;
        }
    }

    public final Context zzb() {
        synchronized (this.zza) {
            zzbcp zzbcpVar = this.zzb;
            if (zzbcpVar != null) {
                return zzbcpVar.zzb();
            }
            return null;
        }
    }

    public final void zzc(zzbcq zzbcqVar) {
        synchronized (this.zza) {
            if (this.zzb == null) {
                this.zzb = new zzbcp();
            }
            this.zzb.zzf(zzbcqVar);
        }
    }

    public final void zzd(Context context) {
        synchronized (this.zza) {
            if (!this.zzc) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = context;
                }
                Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                if (application == null) {
                    com.google.android.gms.ads.internal.util.zze.zzj("Can not cast Context to Application");
                    return;
                }
                if (this.zzb == null) {
                    this.zzb = new zzbcp();
                }
                this.zzb.zzg(application, context);
                this.zzc = true;
            }
        }
    }

    public final void zze(zzbcq zzbcqVar) {
        synchronized (this.zza) {
            zzbcp zzbcpVar = this.zzb;
            if (zzbcpVar == null) {
                return;
            }
            zzbcpVar.zzh(zzbcqVar);
        }
    }
}
