package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbvm {
    private static zzbvm zza;
    private final AtomicBoolean zzb = new AtomicBoolean(false);

    zzbvm() {
    }

    public static zzbvm zza() {
        if (zza == null) {
            zza = new zzbvm();
        }
        return zza;
    }

    public final Thread zzb(final Context context, final String str) {
        if (this.zzb.compareAndSet(false, true)) {
            Thread thread = new Thread(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbvl
                @Override // java.lang.Runnable
                public final void run() {
                    Context context2 = context;
                    String str2 = str;
                    zzbjj.zzc(context2);
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("measurementEnabled", ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzaf)).booleanValue());
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzam)).booleanValue()) {
                        bundle.putString("ad_storage", "denied");
                        bundle.putString("analytics_storage", "denied");
                    }
                    try {
                        ((zzcpi) zzchs.zzb(context2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", new zzchq() { // from class: com.google.android.gms.internal.ads.zzbvk
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // com.google.android.gms.internal.ads.zzchq
                            public final Object zza(Object obj) {
                                return zzcph.zzb(obj);
                            }
                        })).zze(ObjectWrapper.wrap(context2), new zzbvj(AppMeasurementSdk.getInstance(context2, "FA-Ads", "am", str2, bundle)));
                    } catch (RemoteException | zzchr | NullPointerException e2) {
                        zzcho.zzl("#007 Could not call remote method.", e2);
                    }
                }
            });
            thread.start();
            return thread;
        }
        return null;
    }
}
