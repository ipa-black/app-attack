package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbco implements Runnable {
    final /* synthetic */ zzbcp zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbco(zzbcp zzbcpVar) {
        this.zza = zzbcpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List<zzbcq> list;
        obj = this.zza.zzc;
        synchronized (obj) {
            zzbcp zzbcpVar = this.zza;
            z = zzbcpVar.zzd;
            if (z) {
                z2 = zzbcpVar.zze;
                if (z2) {
                    zzbcpVar.zzd = false;
                    com.google.android.gms.ads.internal.util.zze.zze("App went background");
                    list = this.zza.zzf;
                    for (zzbcq zzbcqVar : list) {
                        try {
                            zzbcqVar.zza(false);
                        } catch (Exception e2) {
                            zzcho.zzh("", e2);
                        }
                    }
                }
            }
            com.google.android.gms.ads.internal.util.zze.zze("App is still foreground");
        }
    }
}
