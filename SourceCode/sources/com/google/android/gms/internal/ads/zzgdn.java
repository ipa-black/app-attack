package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import javax.annotation.CheckForNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgdn extends zzgeh implements Runnable {
    public static final /* synthetic */ int zzc = 0;
    @CheckForNull
    zzgfb zza;
    @CheckForNull
    Object zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgdn(zzgfb zzgfbVar, Object obj) {
        zzgfbVar.getClass();
        this.zza = zzgfbVar;
        obj.getClass();
        this.zzb = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgfb zzgfbVar = this.zza;
        Object obj = this.zzb;
        if ((isCancelled() | (zzgfbVar == null)) || (obj == null)) {
            return;
        }
        this.zza = null;
        if (zzgfbVar.isCancelled()) {
            zzt(zzgfbVar);
            return;
        }
        try {
            try {
                Object zzf = zzf(obj, zzger.zzp(zzgfbVar));
                this.zzb = null;
                zzg(zzf);
            } catch (Throwable th) {
                try {
                    zzgfj.zza(th);
                    zze(th);
                } finally {
                    this.zzb = null;
                }
            }
        } catch (Error e2) {
            zze(e2);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e3) {
            zze(e3);
        } catch (ExecutionException e4) {
            zze(e4.getCause());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgdf
    @CheckForNull
    public final String zza() {
        String str;
        zzgfb zzgfbVar = this.zza;
        Object obj = this.zzb;
        String zza = super.zza();
        if (zzgfbVar != null) {
            str = "inputFuture=[" + zzgfbVar.toString() + "], ";
        } else {
            str = "";
        }
        if (obj == null) {
            if (zza != null) {
                return str.concat(zza);
            }
            return null;
        }
        return str + "function=[" + obj.toString() + "]";
    }

    @Override // com.google.android.gms.internal.ads.zzgdf
    protected final void zzb() {
        zzs(this.zza);
        this.zza = null;
        this.zzb = null;
    }

    abstract Object zzf(Object obj, Object obj2) throws Exception;

    abstract void zzg(Object obj);
}
