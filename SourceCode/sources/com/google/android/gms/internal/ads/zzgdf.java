package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import sun.misc.Unsafe;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgdf<V> extends zzgfu implements zzgfb<V> {
    private static final Logger zzaX;
    private static final zza zzaY;
    private static final Object zzbb;
    static final boolean zzd;
    @CheckForNull
    private volatile zzd listeners;
    @CheckForNull
    private volatile Object value;
    @CheckForNull
    private volatile zzk waiters;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
    /* loaded from: classes4.dex */
    public abstract class zza {
        /* synthetic */ zza(zzgde zzgdeVar) {
        }

        abstract zzd zza(zzgdf zzgdfVar, zzd zzdVar);

        abstract zzk zzb(zzgdf zzgdfVar, zzk zzkVar);

        abstract void zzc(zzk zzkVar, @CheckForNull zzk zzkVar2);

        abstract void zzd(zzk zzkVar, Thread thread);

        abstract boolean zze(zzgdf zzgdfVar, @CheckForNull zzd zzdVar, zzd zzdVar2);

        abstract boolean zzf(zzgdf zzgdfVar, @CheckForNull Object obj, Object obj2);

        abstract boolean zzg(zzgdf zzgdfVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
    /* loaded from: classes4.dex */
    public final class zzb {
        @CheckForNull
        static final zzb zza;
        @CheckForNull
        static final zzb zzb;
        final boolean zzc;
        @CheckForNull
        final Throwable zzd;

        static {
            if (zzgdf.zzd) {
                zzb = null;
                zza = null;
                return;
            }
            zzb = new zzb(false, null);
            zza = new zzb(true, null);
        }

        zzb(boolean z, @CheckForNull Throwable th) {
            this.zzc = z;
            this.zzd = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
    /* loaded from: classes4.dex */
    public final class zzc {
        static final zzc zza = new zzc(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.ads.zzgdf.zzc.1
            {
                super("Failure occurred while trying to finish a future.");
            }

            @Override // java.lang.Throwable
            public final synchronized Throwable fillInStackTrace() {
                return this;
            }
        });
        final Throwable zzb;

        zzc(Throwable th) {
            th.getClass();
            this.zzb = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
    /* loaded from: classes4.dex */
    public final class zzd {
        static final zzd zza = new zzd();
        @CheckForNull
        zzd next;
        @CheckForNull
        final Runnable zzb;
        @CheckForNull
        final Executor zzc;

        zzd() {
            this.zzb = null;
            this.zzc = null;
        }

        zzd(Runnable runnable, Executor executor) {
            this.zzb = runnable;
            this.zzc = executor;
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
    /* loaded from: classes4.dex */
    final class zze extends zza {
        final AtomicReferenceFieldUpdater<zzk, Thread> zza;
        final AtomicReferenceFieldUpdater<zzk, zzk> zzb;
        final AtomicReferenceFieldUpdater<zzgdf, zzk> zzc;
        final AtomicReferenceFieldUpdater<zzgdf, zzd> zzd;
        final AtomicReferenceFieldUpdater<zzgdf, Object> zze;

        zze(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            super(null);
            this.zza = atomicReferenceFieldUpdater;
            this.zzb = atomicReferenceFieldUpdater2;
            this.zzc = atomicReferenceFieldUpdater3;
            this.zzd = atomicReferenceFieldUpdater4;
            this.zze = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final zzd zza(zzgdf zzgdfVar, zzd zzdVar) {
            return this.zzd.getAndSet(zzgdfVar, zzdVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final zzk zzb(zzgdf zzgdfVar, zzk zzkVar) {
            return this.zzc.getAndSet(zzgdfVar, zzkVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final void zzc(zzk zzkVar, @CheckForNull zzk zzkVar2) {
            this.zzb.lazySet(zzkVar, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final void zzd(zzk zzkVar, Thread thread) {
            this.zza.lazySet(zzkVar, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final boolean zze(zzgdf zzgdfVar, @CheckForNull zzd zzdVar, zzd zzdVar2) {
            return zzgdg.zza(this.zzd, zzgdfVar, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final boolean zzf(zzgdf zzgdfVar, @CheckForNull Object obj, Object obj2) {
            return zzgdg.zza(this.zze, zzgdfVar, obj, obj2);
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final boolean zzg(zzgdf zzgdfVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2) {
            return zzgdg.zza(this.zzc, zzgdfVar, zzkVar, zzkVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
    /* loaded from: classes4.dex */
    public final class zzf<V> implements Runnable {
        final zzgdf<V> zza;
        final zzgfb<? extends V> zzb;

        zzf(zzgdf zzgdfVar, zzgfb zzgfbVar) {
            this.zza = zzgdfVar;
            this.zzb = zzgfbVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((zzgdf) this.zza).value != this) {
                return;
            }
            if (zzgdf.zzaY.zzf(this.zza, this, zzgdf.zzf(this.zzb))) {
                zzgdf.zzy(this.zza, false);
            }
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
    /* loaded from: classes4.dex */
    final class zzg extends zza {
        private zzg() {
            super(null);
        }

        /* synthetic */ zzg(zzgdh zzgdhVar) {
            super(null);
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final zzd zza(zzgdf zzgdfVar, zzd zzdVar) {
            zzd zzdVar2;
            synchronized (zzgdfVar) {
                zzdVar2 = zzgdfVar.listeners;
                if (zzdVar2 != zzdVar) {
                    zzgdfVar.listeners = zzdVar;
                }
            }
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final zzk zzb(zzgdf zzgdfVar, zzk zzkVar) {
            zzk zzkVar2;
            synchronized (zzgdfVar) {
                zzkVar2 = zzgdfVar.waiters;
                if (zzkVar2 != zzkVar) {
                    zzgdfVar.waiters = zzkVar;
                }
            }
            return zzkVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final void zzc(zzk zzkVar, @CheckForNull zzk zzkVar2) {
            zzkVar.next = zzkVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final void zzd(zzk zzkVar, Thread thread) {
            zzkVar.thread = thread;
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final boolean zze(zzgdf zzgdfVar, @CheckForNull zzd zzdVar, zzd zzdVar2) {
            synchronized (zzgdfVar) {
                if (zzgdfVar.listeners == zzdVar) {
                    zzgdfVar.listeners = zzdVar2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final boolean zzf(zzgdf zzgdfVar, @CheckForNull Object obj, Object obj2) {
            synchronized (zzgdfVar) {
                if (zzgdfVar.value == obj) {
                    zzgdfVar.value = obj2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final boolean zzg(zzgdf zzgdfVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2) {
            synchronized (zzgdfVar) {
                if (zzgdfVar.waiters == zzkVar) {
                    zzgdfVar.waiters = zzkVar2;
                    return true;
                }
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
    /* loaded from: classes4.dex */
    public interface zzh<V> extends zzgfb<V> {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
    /* loaded from: classes4.dex */
    public abstract class zzi<V> extends zzgdf<V> implements zzh<V> {
    }

    /* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
    /* loaded from: classes4.dex */
    final class zzj extends zza {
        static final Unsafe zza;
        static final long zzb;
        static final long zzc;
        static final long zzd;
        static final long zze;
        static final long zzf;

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.android.gms.internal.ads.zzgdf.zzj.1
                    public static final Unsafe zza() throws Exception {
                        Field[] declaredFields;
                        for (Field field : Unsafe.class.getDeclaredFields()) {
                            field.setAccessible(true);
                            Object obj = field.get(null);
                            if (Unsafe.class.isInstance(obj)) {
                                return (Unsafe) Unsafe.class.cast(obj);
                            }
                        }
                        throw new NoSuchFieldError("the Unsafe");
                    }

                    @Override // java.security.PrivilegedExceptionAction
                    public final /* bridge */ /* synthetic */ Unsafe run() throws Exception {
                        return zza();
                    }
                });
            }
            try {
                zzc = unsafe.objectFieldOffset(zzgdf.class.getDeclaredField("waiters"));
                zzb = unsafe.objectFieldOffset(zzgdf.class.getDeclaredField("listeners"));
                zzd = unsafe.objectFieldOffset(zzgdf.class.getDeclaredField("value"));
                zze = unsafe.objectFieldOffset(zzk.class.getDeclaredField("thread"));
                zzf = unsafe.objectFieldOffset(zzk.class.getDeclaredField("next"));
                zza = unsafe;
            } catch (NoSuchFieldException e3) {
                throw new RuntimeException(e3);
            } catch (RuntimeException e4) {
                throw e4;
            }
        }

        private zzj() {
            super(null);
        }

        /* synthetic */ zzj(zzgdj zzgdjVar) {
            super(null);
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final zzd zza(zzgdf zzgdfVar, zzd zzdVar) {
            zzd zzdVar2;
            do {
                zzdVar2 = zzgdfVar.listeners;
                if (zzdVar == zzdVar2) {
                    return zzdVar2;
                }
            } while (!zze(zzgdfVar, zzdVar2, zzdVar));
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final zzk zzb(zzgdf zzgdfVar, zzk zzkVar) {
            zzk zzkVar2;
            do {
                zzkVar2 = zzgdfVar.waiters;
                if (zzkVar == zzkVar2) {
                    return zzkVar2;
                }
            } while (!zzg(zzgdfVar, zzkVar2, zzkVar));
            return zzkVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final void zzc(zzk zzkVar, @CheckForNull zzk zzkVar2) {
            zza.putObject(zzkVar, zzf, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final void zzd(zzk zzkVar, Thread thread) {
            zza.putObject(zzkVar, zze, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final boolean zze(zzgdf zzgdfVar, @CheckForNull zzd zzdVar, zzd zzdVar2) {
            return zzgdi.zza(zza, zzgdfVar, zzb, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final boolean zzf(zzgdf zzgdfVar, @CheckForNull Object obj, Object obj2) {
            return zzgdi.zza(zza, zzgdfVar, zzd, obj, obj2);
        }

        @Override // com.google.android.gms.internal.ads.zzgdf.zza
        final boolean zzg(zzgdf zzgdfVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2) {
            return zzgdi.zza(zza, zzgdfVar, zzc, zzkVar, zzkVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
    /* loaded from: classes4.dex */
    public final class zzk {
        static final zzk zza = new zzk(false);
        @CheckForNull
        volatile zzk next;
        @CheckForNull
        volatile Thread thread;

        zzk() {
            zzgdf.zzaY.zzd(this, Thread.currentThread());
        }

        zzk(boolean z) {
        }
    }

    static {
        boolean z;
        Throwable th;
        Throwable th2;
        zza zzgVar;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        zzd = z;
        zzaX = Logger.getLogger(zzgdf.class.getName());
        try {
            zzgVar = new zzj(null);
            th2 = null;
            th = null;
        } catch (Error | RuntimeException e2) {
            try {
                th2 = e2;
                zzgVar = new zze(AtomicReferenceFieldUpdater.newUpdater(zzk.class, Thread.class, "thread"), AtomicReferenceFieldUpdater.newUpdater(zzk.class, zzk.class, "next"), AtomicReferenceFieldUpdater.newUpdater(zzgdf.class, zzk.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(zzgdf.class, zzd.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(zzgdf.class, Object.class, "value"));
                th = null;
            } catch (Error | RuntimeException e3) {
                th = e3;
                th2 = e2;
                zzgVar = new zzg(null);
            }
        }
        zzaY = zzgVar;
        if (th != null) {
            Logger logger = zzaX;
            logger.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            logger.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        zzbb = new Object();
    }

    private final void zzA(zzk zzkVar) {
        zzkVar.thread = null;
        while (true) {
            zzk zzkVar2 = this.waiters;
            if (zzkVar2 != zzk.zza) {
                zzk zzkVar3 = null;
                while (zzkVar2 != null) {
                    zzk zzkVar4 = zzkVar2.next;
                    if (zzkVar2.thread != null) {
                        zzkVar3 = zzkVar2;
                    } else if (zzkVar3 != null) {
                        zzkVar3.next = zzkVar4;
                        if (zzkVar3.thread == null) {
                            break;
                        }
                    } else if (!zzaY.zzg(this, zzkVar2, zzkVar4)) {
                        break;
                    }
                    zzkVar2 = zzkVar4;
                }
                return;
            }
            return;
        }
    }

    private static final Object zzB(Object obj) throws ExecutionException {
        if (obj instanceof zzb) {
            Throwable th = ((zzb) obj).zzd;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (obj instanceof zzc) {
            throw new ExecutionException(((zzc) obj).zzb);
        } else {
            if (obj == zzbb) {
                return null;
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object zzf(zzgfb zzgfbVar) {
        Throwable zzm;
        if (zzgfbVar instanceof zzh) {
            Object obj = ((zzgdf) zzgfbVar).value;
            if (obj instanceof zzb) {
                zzb zzbVar = (zzb) obj;
                if (zzbVar.zzc) {
                    Throwable th = zzbVar.zzd;
                    obj = th != null ? new zzb(false, th) : zzb.zzb;
                }
            }
            obj.getClass();
            return obj;
        } else if (!(zzgfbVar instanceof zzgfu) || (zzm = ((zzgfu) zzgfbVar).zzm()) == null) {
            boolean isCancelled = zzgfbVar.isCancelled();
            if ((!zzd) & isCancelled) {
                zzb zzbVar2 = zzb.zzb;
                zzbVar2.getClass();
                return zzbVar2;
            }
            try {
                Object zzg2 = zzg(zzgfbVar);
                if (!isCancelled) {
                    return zzg2 == null ? zzbb : zzg2;
                }
                String valueOf = String.valueOf(zzgfbVar);
                return new zzb(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + valueOf));
            } catch (Error e2) {
                e = e2;
                return new zzc(e);
            } catch (CancellationException e3) {
                if (!isCancelled) {
                    return new zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(String.valueOf(zzgfbVar))), e3));
                }
                return new zzb(false, e3);
            } catch (RuntimeException e4) {
                e = e4;
                return new zzc(e);
            } catch (ExecutionException e5) {
                if (isCancelled) {
                    return new zzb(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(String.valueOf(zzgfbVar))), e5));
                }
                return new zzc(e5.getCause());
            }
        } else {
            return new zzc(zzm);
        }
    }

    private static Object zzg(Future future) throws ExecutionException {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    private final void zzv(StringBuilder sb) {
        try {
            Object zzg2 = zzg(this);
            sb.append("SUCCESS, result=[");
            if (zzg2 == null) {
                sb.append("null");
            } else if (zzg2 == this) {
                sb.append("this future");
            } else {
                sb.append(zzg2.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(zzg2)));
            }
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    private final void zzw(StringBuilder sb) {
        String concat;
        int length = sb.length();
        sb.append("PENDING");
        Object obj = this.value;
        if (obj instanceof zzf) {
            sb.append(", setFuture=[");
            zzx(sb, ((zzf) obj).zzb);
            sb.append("]");
        } else {
            try {
                concat = zzfyt.zza(zza());
            } catch (RuntimeException | StackOverflowError e2) {
                concat = "Exception thrown from implementation: ".concat(String.valueOf(String.valueOf(e2.getClass())));
            }
            if (concat != null) {
                sb.append(", info=[");
                sb.append(concat);
                sb.append("]");
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            zzv(sb);
        }
    }

    private final void zzx(StringBuilder sb, @CheckForNull Object obj) {
        try {
            if (obj == this) {
                sb.append("this future");
            } else {
                sb.append(obj);
            }
        } catch (RuntimeException | StackOverflowError e2) {
            sb.append("Exception thrown from implementation: ");
            sb.append(e2.getClass());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzy(zzgdf zzgdfVar, boolean z) {
        zzd zzdVar = null;
        while (true) {
            for (zzk zzb2 = zzaY.zzb(zzgdfVar, zzk.zza); zzb2 != null; zzb2 = zzb2.next) {
                Thread thread = zzb2.thread;
                if (thread != null) {
                    zzb2.thread = null;
                    LockSupport.unpark(thread);
                }
            }
            if (z) {
                zzgdfVar.zzr();
            }
            zzgdfVar.zzb();
            zzd zzdVar2 = zzdVar;
            zzd zza2 = zzaY.zza(zzgdfVar, zzd.zza);
            zzd zzdVar3 = zzdVar2;
            while (zza2 != null) {
                zzd zzdVar4 = zza2.next;
                zza2.next = zzdVar3;
                zzdVar3 = zza2;
                zza2 = zzdVar4;
            }
            while (zzdVar3 != null) {
                zzdVar = zzdVar3.next;
                Runnable runnable = zzdVar3.zzb;
                runnable.getClass();
                if (runnable instanceof zzf) {
                    zzf zzfVar = (zzf) runnable;
                    zzgdfVar = zzfVar.zza;
                    if (zzgdfVar.value == zzfVar) {
                        if (zzaY.zzf(zzgdfVar, zzfVar, zzf(zzfVar.zzb))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = zzdVar3.zzc;
                    executor.getClass();
                    zzz(runnable, executor);
                }
                zzdVar3 = zzdVar;
            }
            return;
            z = false;
        }
    }

    private static void zzz(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            Logger logger = zzaX;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", "RuntimeException while executing runnable " + valueOf + " with executor " + valueOf2, (Throwable) e2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:?, code lost:
        return true;
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean cancel(boolean r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.value
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L8
            r3 = r2
            goto L9
        L8:
            r3 = r1
        L9:
            boolean r4 = r0 instanceof com.google.android.gms.internal.ads.zzgdf.zzf
            r3 = r3 | r4
            if (r3 == 0) goto L5f
            boolean r3 = com.google.android.gms.internal.ads.zzgdf.zzd
            if (r3 == 0) goto L1f
            com.google.android.gms.internal.ads.zzgdf$zzb r3 = new com.google.android.gms.internal.ads.zzgdf$zzb
            java.util.concurrent.CancellationException r4 = new java.util.concurrent.CancellationException
            java.lang.String r5 = "Future.cancel() was called."
            r4.<init>(r5)
            r3.<init>(r8, r4)
            goto L29
        L1f:
            if (r8 == 0) goto L24
            com.google.android.gms.internal.ads.zzgdf$zzb r3 = com.google.android.gms.internal.ads.zzgdf.zzb.zza
            goto L26
        L24:
            com.google.android.gms.internal.ads.zzgdf$zzb r3 = com.google.android.gms.internal.ads.zzgdf.zzb.zzb
        L26:
            r3.getClass()
        L29:
            r4 = r7
            r5 = r1
        L2b:
            com.google.android.gms.internal.ads.zzgdf$zza r6 = com.google.android.gms.internal.ads.zzgdf.zzaY
            boolean r6 = r6.zzf(r4, r0, r3)
            if (r6 == 0) goto L58
            zzy(r4, r8)
            boolean r4 = r0 instanceof com.google.android.gms.internal.ads.zzgdf.zzf
            if (r4 == 0) goto L56
            com.google.android.gms.internal.ads.zzgdf$zzf r0 = (com.google.android.gms.internal.ads.zzgdf.zzf) r0
            com.google.android.gms.internal.ads.zzgfb<? extends V> r0 = r0.zzb
            boolean r4 = r0 instanceof com.google.android.gms.internal.ads.zzgdf.zzh
            if (r4 == 0) goto L53
            r4 = r0
            com.google.android.gms.internal.ads.zzgdf r4 = (com.google.android.gms.internal.ads.zzgdf) r4
            java.lang.Object r0 = r4.value
            if (r0 != 0) goto L4b
            r5 = r2
            goto L4c
        L4b:
            r5 = r1
        L4c:
            boolean r6 = r0 instanceof com.google.android.gms.internal.ads.zzgdf.zzf
            r5 = r5 | r6
            if (r5 == 0) goto L56
            r5 = r2
            goto L2b
        L53:
            r0.cancel(r8)
        L56:
            r1 = r2
            goto L5f
        L58:
            java.lang.Object r0 = r4.value
            boolean r6 = r0 instanceof com.google.android.gms.internal.ads.zzgdf.zzf
            if (r6 != 0) goto L2b
            r1 = r5
        L5f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgdf.cancel(boolean):boolean");
    }

    @Override // java.util.concurrent.Future
    public Object get() throws InterruptedException, ExecutionException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.value;
            if ((obj2 != null) && (!(obj2 instanceof zzf))) {
                return zzB(obj2);
            }
            zzk zzkVar = this.waiters;
            if (zzkVar != zzk.zza) {
                zzk zzkVar2 = new zzk();
                do {
                    zza zzaVar = zzaY;
                    zzaVar.zzc(zzkVar2, zzkVar);
                    if (zzaVar.zzg(this, zzkVar, zzkVar2)) {
                        do {
                            LockSupport.park(this);
                            if (Thread.interrupted()) {
                                zzA(zzkVar2);
                                throw new InterruptedException();
                            }
                            obj = this.value;
                        } while (!((obj != null) & (!(obj instanceof zzf))));
                        return zzB(obj);
                    }
                    zzkVar = this.waiters;
                } while (zzkVar != zzk.zza);
                Object obj3 = this.value;
                obj3.getClass();
                return zzB(obj3);
            }
            Object obj32 = this.value;
            obj32.getClass();
            return zzB(obj32);
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.value instanceof zzb;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object obj = this.value;
        return (!(obj instanceof zzf)) & (obj != null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            zzv(sb);
        } else {
            zzw(sb);
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CheckForNull
    public String zza() {
        if (this instanceof ScheduledFuture) {
            long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
            return "remaining delay=[" + delay + " ms]";
        }
        return null;
    }

    protected void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzgfb
    public void zzc(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzfye.zzc(runnable, "Runnable was null.");
        zzfye.zzc(executor, "Executor was null.");
        if (isDone() || (zzdVar = this.listeners) == zzd.zza) {
            zzz(runnable, executor);
        }
        zzd zzdVar2 = new zzd(runnable, executor);
        do {
            zzdVar2.next = zzdVar;
            if (zzaY.zze(this, zzdVar, zzdVar2)) {
                return;
            }
            zzdVar = this.listeners;
        } while (zzdVar != zzd.zza);
        zzz(runnable, executor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zzd(Object obj) {
        if (obj == null) {
            obj = zzbb;
        }
        if (zzaY.zzf(this, null, obj)) {
            zzy(this, false);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zze(Throwable th) {
        th.getClass();
        if (zzaY.zzf(this, null, new zzc(th))) {
            zzy(this, false);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgfu
    @CheckForNull
    public final Throwable zzm() {
        if (this instanceof zzh) {
            Object obj = this.value;
            if (obj instanceof zzc) {
                return ((zzc) obj).zzb;
            }
            return null;
        }
        return null;
    }

    protected void zzr() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzs(@CheckForNull Future future) {
        if ((future != null) && isCancelled()) {
            future.cancel(zzu());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzu() {
        Object obj = this.value;
        return (obj instanceof zzb) && ((zzb) obj).zzc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzt(zzgfb zzgfbVar) {
        zzc zzcVar;
        zzgfbVar.getClass();
        Object obj = this.value;
        if (obj == null) {
            if (zzgfbVar.isDone()) {
                if (zzaY.zzf(this, null, zzf(zzgfbVar))) {
                    zzy(this, false);
                    return true;
                }
                return false;
            }
            zzf zzfVar = new zzf(this, zzgfbVar);
            if (zzaY.zzf(this, null, zzfVar)) {
                try {
                    zzgfbVar.zzc(zzfVar, zzgef.INSTANCE);
                } catch (Error | RuntimeException e2) {
                    try {
                        zzcVar = new zzc(e2);
                    } catch (Error | RuntimeException unused) {
                        zzcVar = zzc.zza;
                    }
                    zzaY.zzf(this, zzfVar, zzcVar);
                }
                return true;
            }
            obj = this.value;
        }
        if (obj instanceof zzb) {
            zzgfbVar.cancel(((zzb) obj).zzc);
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public Object get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        long nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.value;
            boolean z = true;
            if ((obj != null) & (!(obj instanceof zzf))) {
                return zzB(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                zzk zzkVar = this.waiters;
                if (zzkVar != zzk.zza) {
                    zzk zzkVar2 = new zzk();
                    do {
                        zza zzaVar = zzaY;
                        zzaVar.zzc(zzkVar2, zzkVar);
                        if (zzaVar.zzg(this, zzkVar, zzkVar2)) {
                            do {
                                LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                                if (Thread.interrupted()) {
                                    zzA(zzkVar2);
                                    throw new InterruptedException();
                                }
                                Object obj2 = this.value;
                                if (!((obj2 != null) & (!(obj2 instanceof zzf)))) {
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    return zzB(obj2);
                                }
                            } while (nanos >= 1000);
                            zzA(zzkVar2);
                        } else {
                            zzkVar = this.waiters;
                        }
                    } while (zzkVar != zzk.zza);
                    Object obj3 = this.value;
                    obj3.getClass();
                    return zzB(obj3);
                }
                Object obj32 = this.value;
                obj32.getClass();
                return zzB(obj32);
            }
            while (nanos > 0) {
                Object obj4 = this.value;
                if (!((obj4 != null) & (!(obj4 instanceof zzf)))) {
                    if (!Thread.interrupted()) {
                        nanos = nanoTime - System.nanoTime();
                    } else {
                        throw new InterruptedException();
                    }
                } else {
                    return zzB(obj4);
                }
            }
            String zzgdfVar = toString();
            String lowerCase = timeUnit.toString().toLowerCase(Locale.ROOT);
            String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(Locale.ROOT);
            if (nanos + 1000 < 0) {
                String concat = str.concat(" (plus ");
                long j2 = -nanos;
                long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
                long nanos2 = j2 - timeUnit.toNanos(convert);
                int i = (convert > 0L ? 1 : (convert == 0L ? 0 : -1));
                if (i != 0 && nanos2 <= 1000) {
                    z = false;
                }
                if (i > 0) {
                    String str2 = concat + convert + " " + lowerCase;
                    if (z) {
                        str2 = str2.concat(",");
                    }
                    concat = str2.concat(" ");
                }
                if (z) {
                    concat = concat + nanos2 + " nanoseconds ";
                }
                str = concat.concat("delay)");
            }
            if (isDone()) {
                throw new TimeoutException(str.concat(" but future completed as timeout expired"));
            }
            throw new TimeoutException(str + " for " + zzgdfVar);
        }
        throw new InterruptedException();
    }
}
