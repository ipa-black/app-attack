package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.ExecutorService;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbfc {
    zzasl zza;
    boolean zzb;
    private final ExecutorService zzc;

    public zzbfc() {
        this.zzc = zzchd.zzb;
    }

    public static /* bridge */ /* synthetic */ ExecutorService zza(zzbfc zzbfcVar) {
        return zzbfcVar.zzc;
    }

    /* renamed from: zzc */
    public final void zzb(Context context) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzes)).booleanValue()) {
            try {
                this.zza = (zzasl) zzchs.zzb(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", new zzchq() { // from class: com.google.android.gms.internal.ads.zzbey
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // com.google.android.gms.internal.ads.zzchq
                    public final Object zza(Object obj) {
                        return zzask.zzb(obj);
                    }
                });
                this.zza.zze(ObjectWrapper.wrap(context), "GMA_SDK");
                this.zzb = true;
            } catch (RemoteException | zzchr | NullPointerException unused) {
                zzcho.zze("Cannot dynamite load clearcut");
            }
        }
    }

    public zzbfc(final Context context) {
        ExecutorService executorService = zzchd.zzb;
        this.zzc = executorService;
        zzbjj.zzc(context);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzjh)).booleanValue()) {
            executorService.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbex
                @Override // java.lang.Runnable
                public final void run() {
                    zzbfc.this.zzb(context);
                }
            });
        } else {
            zzb(context);
        }
    }
}
