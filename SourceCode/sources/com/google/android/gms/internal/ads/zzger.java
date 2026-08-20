package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzger extends zzget {
    public static zzgeq zza(Iterable iterable) {
        return new zzgeq(false, zzgau.zzl(iterable), null);
    }

    @SafeVarargs
    public static zzgeq zzb(zzgfb... zzgfbVarArr) {
        return new zzgeq(false, zzgau.zzn(zzgfbVarArr), null);
    }

    public static zzgeq zzc(Iterable iterable) {
        return new zzgeq(true, zzgau.zzl(iterable), null);
    }

    @SafeVarargs
    public static zzgeq zzd(zzgfb... zzgfbVarArr) {
        return new zzgeq(true, zzgau.zzn(zzgfbVarArr), null);
    }

    public static zzgfb zze(Iterable iterable) {
        return new zzgdz(zzgau.zzl(iterable), true);
    }

    public static zzgfb zzf(zzgfb zzgfbVar, Class cls, zzfxt zzfxtVar, Executor executor) {
        zzgdc zzgdcVar = new zzgdc(zzgfbVar, cls, zzfxtVar);
        zzgfbVar.zzc(zzgdcVar, zzgfi.zzc(executor, zzgdcVar));
        return zzgdcVar;
    }

    public static zzgfb zzg(zzgfb zzgfbVar, Class cls, zzgdy zzgdyVar, Executor executor) {
        zzgdb zzgdbVar = new zzgdb(zzgfbVar, cls, zzgdyVar);
        zzgfbVar.zzc(zzgdbVar, zzgfi.zzc(executor, zzgdbVar));
        return zzgdbVar;
    }

    public static zzgfb zzi(Object obj) {
        if (obj == null) {
            return zzgev.zza;
        }
        return new zzgev(obj);
    }

    public static zzgfb zzj() {
        return zzgev.zza;
    }

    public static zzgfb zzk(Callable callable, Executor executor) {
        zzgfr zzgfrVar = new zzgfr(callable);
        executor.execute(zzgfrVar);
        return zzgfrVar;
    }

    public static zzgfb zzl(zzgdx zzgdxVar, Executor executor) {
        zzgfr zzgfrVar = new zzgfr(zzgdxVar);
        executor.execute(zzgfrVar);
        return zzgfrVar;
    }

    public static zzgfb zzm(zzgfb zzgfbVar, zzfxt zzfxtVar, Executor executor) {
        int i = zzgdn.zzc;
        zzfxtVar.getClass();
        zzgdm zzgdmVar = new zzgdm(zzgfbVar, zzfxtVar);
        zzgfbVar.zzc(zzgdmVar, zzgfi.zzc(executor, zzgdmVar));
        return zzgdmVar;
    }

    public static zzgfb zzn(zzgfb zzgfbVar, zzgdy zzgdyVar, Executor executor) {
        int i = zzgdn.zzc;
        executor.getClass();
        zzgdl zzgdlVar = new zzgdl(zzgfbVar, zzgdyVar);
        zzgfbVar.zzc(zzgdlVar, zzgfi.zzc(executor, zzgdlVar));
        return zzgdlVar;
    }

    public static zzgfb zzo(zzgfb zzgfbVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return zzgfbVar.isDone() ? zzgfbVar : zzgfo.zzg(zzgfbVar, j, timeUnit, scheduledExecutorService);
    }

    public static Object zzp(Future future) throws ExecutionException {
        if (!future.isDone()) {
            throw new IllegalStateException(zzfyt.zzb("Future was expected to be done: %s", future));
        }
        return zzgft.zza(future);
    }

    public static Object zzq(Future future) {
        try {
            return zzgft.zza(future);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof Error) {
                throw new zzgeg((Error) cause);
            }
            throw new zzgfs(cause);
        }
    }

    public static zzgfb zzh(Throwable th) {
        th.getClass();
        return new zzgeu(th);
    }

    public static void zzr(zzgfb zzgfbVar, zzgen zzgenVar, Executor executor) {
        zzgenVar.getClass();
        zzgfbVar.zzc(new zzgeo(zzgfbVar, zzgenVar), executor);
    }
}
