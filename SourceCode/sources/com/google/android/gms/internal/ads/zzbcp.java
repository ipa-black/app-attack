package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.MobileAds;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbcp implements Application.ActivityLifecycleCallbacks {
    private Activity zza;
    private Context zzb;
    private Runnable zzh;
    private long zzj;
    private final Object zzc = new Object();
    private boolean zzd = true;
    private boolean zze = false;
    private final List zzf = new ArrayList();
    private final List zzg = new ArrayList();
    private boolean zzi = false;

    private final void zzk(Activity activity) {
        synchronized (this.zzc) {
            if (!activity.getClass().getName().startsWith(MobileAds.ERROR_DOMAIN)) {
                this.zza = activity;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.zzc) {
            Activity activity2 = this.zza;
            if (activity2 != null) {
                if (activity2.equals(activity)) {
                    this.zza = null;
                }
                Iterator it = this.zzg.iterator();
                while (it.hasNext()) {
                    try {
                        if (((zzbde) it.next()).zza()) {
                            it.remove();
                        }
                    } catch (Exception e2) {
                        com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                        zzcho.zzh("", e2);
                    }
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zzk(activity);
        synchronized (this.zzc) {
            for (zzbde zzbdeVar : this.zzg) {
                try {
                    zzbdeVar.zzb();
                } catch (Exception e2) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "AppActivityTracker.ActivityListener.onActivityPaused");
                    zzcho.zzh("", e2);
                }
            }
        }
        this.zze = true;
        if (this.zzh != null) {
            com.google.android.gms.ads.internal.util.zzs.zza.removeCallbacks(this.zzh);
        }
        zzfvb zzfvbVar = com.google.android.gms.ads.internal.util.zzs.zza;
        zzbco zzbcoVar = new zzbco(this);
        this.zzh = zzbcoVar;
        zzfvbVar.postDelayed(zzbcoVar, this.zzj);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zzk(activity);
        this.zze = false;
        boolean z = !this.zzd;
        this.zzd = true;
        if (this.zzh != null) {
            com.google.android.gms.ads.internal.util.zzs.zza.removeCallbacks(this.zzh);
        }
        synchronized (this.zzc) {
            for (zzbde zzbdeVar : this.zzg) {
                try {
                    zzbdeVar.zzc();
                } catch (Exception e2) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "AppActivityTracker.ActivityListener.onActivityResumed");
                    zzcho.zzh("", e2);
                }
            }
            if (z) {
                for (zzbcq zzbcqVar : this.zzf) {
                    try {
                        zzbcqVar.zza(true);
                    } catch (Exception e3) {
                        zzcho.zzh("", e3);
                    }
                }
            } else {
                com.google.android.gms.ads.internal.util.zze.zze("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zzk(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    public final Activity zza() {
        return this.zza;
    }

    public final Context zzb() {
        return this.zzb;
    }

    public final void zzf(zzbcq zzbcqVar) {
        synchronized (this.zzc) {
            this.zzf.add(zzbcqVar);
        }
    }

    public final void zzg(Application application, Context context) {
        if (this.zzi) {
            return;
        }
        application.registerActivityLifecycleCallbacks(this);
        if (context instanceof Activity) {
            zzk((Activity) context);
        }
        this.zzb = application;
        this.zzj = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzaM)).longValue();
        this.zzi = true;
    }

    public final void zzh(zzbcq zzbcqVar) {
        synchronized (this.zzc) {
            this.zzf.remove(zzbcqVar);
        }
    }
}
