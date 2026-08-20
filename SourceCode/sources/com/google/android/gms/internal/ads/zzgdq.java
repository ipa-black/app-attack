package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgdq extends zzgdw {
    private static final Logger zza = Logger.getLogger(zzgdq.class.getName());
    @CheckForNull
    private zzgap zzb;
    private final boolean zzc;
    private final boolean zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgdq(zzgap zzgapVar, boolean z, boolean z2) {
        super(zzgapVar.size());
        zzgapVar.getClass();
        this.zzb = zzgapVar;
        this.zzc = z;
        this.zze = z2;
    }

    private final void zzH(int i, Future future) {
        try {
            zzg(i, zzger.zzp(future));
        } catch (Error e2) {
            e = e2;
            zzJ(e);
        } catch (RuntimeException e3) {
            e = e3;
            zzJ(e);
        } catch (ExecutionException e4) {
            zzJ(e4.getCause());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzI */
    public final void zzy(@CheckForNull zzgap zzgapVar) {
        int zzB = zzB();
        int i = 0;
        zzfye.zzi(zzB >= 0, "Less than 0 remaining futures");
        if (zzB == 0) {
            if (zzgapVar != null) {
                zzgct it = zzgapVar.iterator();
                while (it.hasNext()) {
                    Future future = (Future) it.next();
                    if (!future.isCancelled()) {
                        zzH(i, future);
                    }
                    i++;
                }
            }
            zzG();
            zzv();
            zzz(2);
        }
    }

    private static void zzK(Throwable th) {
        zza.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", true != (th instanceof Error) ? "Got more than one input Future failure. Logging failures after the first" : "Input Future failed with Error", th);
    }

    private static boolean zzL(Set set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgdf
    @CheckForNull
    public final String zza() {
        zzgap zzgapVar = this.zzb;
        return zzgapVar != null ? "futures=".concat(zzgapVar.toString()) : super.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgdf
    protected final void zzb() {
        zzgap zzgapVar = this.zzb;
        zzz(1);
        if ((zzgapVar != null) && isCancelled()) {
            boolean zzu = zzu();
            zzgct it = zzgapVar.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).cancel(zzu);
            }
        }
    }

    abstract void zzg(int i, Object obj);

    abstract void zzv();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzw() {
        zzgap zzgapVar = this.zzb;
        zzgapVar.getClass();
        if (zzgapVar.isEmpty()) {
            zzv();
        } else if (this.zzc) {
            zzgct it = this.zzb.iterator();
            final int i = 0;
            while (it.hasNext()) {
                final zzgfb zzgfbVar = (zzgfb) it.next();
                zzgfbVar.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgdo
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzgdq.this.zzx(zzgfbVar, i);
                    }
                }, zzgef.INSTANCE);
                i++;
            }
        } else {
            final zzgap zzgapVar2 = this.zze ? this.zzb : null;
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzgdp
                @Override // java.lang.Runnable
                public final void run() {
                    zzgdq.this.zzy(zzgapVar2);
                }
            };
            zzgct it2 = this.zzb.iterator();
            while (it2.hasNext()) {
                ((zzgfb) it2.next()).zzc(runnable, zzgef.INSTANCE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzx(zzgfb zzgfbVar, int i) {
        try {
            if (zzgfbVar.isCancelled()) {
                this.zzb = null;
                cancel(false);
            } else {
                zzH(i, zzgfbVar);
            }
        } finally {
            zzy(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzz(int i) {
        this.zzb = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgdw
    final void zzf(Set set) {
        set.getClass();
        if (isCancelled()) {
            return;
        }
        Throwable zzm = zzm();
        zzm.getClass();
        zzL(set, zzm);
    }

    private final void zzJ(Throwable th) {
        th.getClass();
        if (!this.zzc || zze(th) || !zzL(zzD(), th)) {
            if (th instanceof Error) {
                zzK(th);
                return;
            }
            return;
        }
        zzK(th);
    }
}
