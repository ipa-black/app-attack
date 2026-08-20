package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgdf;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
abstract class zzgdw extends zzgdf.zzi {
    private static final zzgds zzaZ;
    private static final Logger zzba = Logger.getLogger(zzgdw.class.getName());
    private volatile int remaining;
    @CheckForNull
    private volatile Set<Throwable> seenExceptions = null;

    static {
        zzgds zzgdvVar;
        Throwable th;
        try {
            zzgdvVar = new zzgdt(AtomicReferenceFieldUpdater.newUpdater(zzgdw.class, Set.class, "seenExceptions"), AtomicIntegerFieldUpdater.newUpdater(zzgdw.class, "remaining"));
            th = null;
        } catch (Error | RuntimeException e2) {
            zzgdvVar = new zzgdv(null);
            th = e2;
        }
        zzaZ = zzgdvVar;
        if (th != null) {
            zzba.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgdw(int i) {
        this.remaining = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzB() {
        return zzaZ.zza(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set zzD() {
        Set<Throwable> set = this.seenExceptions;
        if (set == null) {
            Set newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            zzf(newSetFromMap);
            zzaZ.zzb(this, null, newSetFromMap);
            Set<Throwable> set2 = this.seenExceptions;
            set2.getClass();
            return set2;
        }
        return set;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzG() {
        this.seenExceptions = null;
    }

    abstract void zzf(Set set);
}
