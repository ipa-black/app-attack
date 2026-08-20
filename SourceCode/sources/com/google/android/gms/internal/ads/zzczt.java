package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzczt extends zzcyl {
    private final zzboc zzc;
    private final Runnable zzd;
    private final Executor zze;

    public zzczt(zzdam zzdamVar, zzboc zzbocVar, Runnable runnable, Executor executor) {
        super(zzdamVar);
        this.zzc = zzbocVar;
        this.zzd = runnable;
        this.zze = executor;
    }

    public static /* synthetic */ void zzi(AtomicReference atomicReference) {
        Runnable runnable = (Runnable) atomicReference.getAndSet(null);
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    public final void zzab() {
        final zzczr zzczrVar = new zzczr(new AtomicReference(this.zzd));
        this.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzczs
            @Override // java.lang.Runnable
            public final void run() {
                zzczt.this.zzk(zzczrVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final View zzc() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final com.google.android.gms.ads.internal.client.zzdq zzd() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final zzfim zze() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final zzfim zzf() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zzg() {
    }

    @Override // com.google.android.gms.internal.ads.zzcyl
    public final void zzh(ViewGroup viewGroup, com.google.android.gms.ads.internal.client.zzq zzqVar) {
    }

    public final /* synthetic */ void zzk(Runnable runnable) {
        try {
            if (this.zzc.zzb(ObjectWrapper.wrap(runnable))) {
                return;
            }
            zzi(((zzczr) runnable).zza);
        } catch (RemoteException unused) {
            zzi(((zzczr) runnable).zza);
        }
    }
}
