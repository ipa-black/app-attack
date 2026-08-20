package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfxf {
    private static final Map zza = new HashMap();
    private final Context zzb;
    private final zzfwu zzc;
    private boolean zzh;
    private final Intent zzi;
    private ServiceConnection zzm;
    private IInterface zzn;
    private final zzfwc zzo;
    private final List zze = new ArrayList();
    private final Set zzf = new HashSet();
    private final Object zzg = new Object();
    private final IBinder.DeathRecipient zzk = new IBinder.DeathRecipient() { // from class: com.google.android.gms.internal.ads.zzfwx
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            zzfxf.zzh(zzfxf.this);
        }
    };
    private final AtomicInteger zzl = new AtomicInteger(0);
    private final String zzd = "OverlayDisplayService";
    private final WeakReference zzj = new WeakReference(null);

    public zzfxf(Context context, zzfwu zzfwuVar, String str, Intent intent, zzfwc zzfwcVar, zzfxa zzfxaVar, byte[] bArr) {
        this.zzb = context;
        this.zzc = zzfwuVar;
        this.zzi = intent;
        this.zzo = zzfwcVar;
    }

    public static /* synthetic */ void zzh(zzfxf zzfxfVar) {
        zzfxfVar.zzc.zzd("reportBinderDeath", new Object[0]);
        zzfxa zzfxaVar = (zzfxa) zzfxfVar.zzj.get();
        if (zzfxaVar == null) {
            zzfxfVar.zzc.zzd("%s : Binder has died.", zzfxfVar.zzd);
            for (zzfwv zzfwvVar : zzfxfVar.zze) {
                zzfwvVar.zzc(zzfxfVar.zzs());
            }
            zzfxfVar.zze.clear();
        } else {
            zzfxfVar.zzc.zzd("calling onBinderDied", new Object[0]);
            zzfxaVar.zza();
        }
        zzfxfVar.zzt();
    }

    public static /* bridge */ /* synthetic */ void zzn(zzfxf zzfxfVar) {
        zzfxfVar.zzc.zzd("linkToDeath", new Object[0]);
        try {
            zzfxfVar.zzn.asBinder().linkToDeath(zzfxfVar.zzk, 0);
        } catch (RemoteException e2) {
            zzfxfVar.zzc.zzc(e2, "linkToDeath failed", new Object[0]);
        }
    }

    public static /* bridge */ /* synthetic */ void zzo(zzfxf zzfxfVar) {
        zzfxfVar.zzc.zzd("unlinkToDeath", new Object[0]);
        zzfxfVar.zzn.asBinder().unlinkToDeath(zzfxfVar.zzk, 0);
    }

    private final RemoteException zzs() {
        return new RemoteException(String.valueOf(this.zzd).concat(" : Binder has died."));
    }

    public final void zzt() {
        synchronized (this.zzg) {
            for (TaskCompletionSource taskCompletionSource : this.zzf) {
                taskCompletionSource.trySetException(zzs());
            }
            this.zzf.clear();
        }
    }

    public final Handler zzc() {
        Handler handler;
        Map map = zza;
        synchronized (map) {
            if (!map.containsKey(this.zzd)) {
                HandlerThread handlerThread = new HandlerThread(this.zzd, 10);
                handlerThread.start();
                map.put(this.zzd, new Handler(handlerThread.getLooper()));
            }
            handler = (Handler) map.get(this.zzd);
        }
        return handler;
    }

    public final IInterface zze() {
        return this.zzn;
    }

    public final void zzp(zzfwv zzfwvVar, final TaskCompletionSource taskCompletionSource) {
        synchronized (this.zzg) {
            this.zzf.add(taskCompletionSource);
            taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.gms.internal.ads.zzfww
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    zzfxf.this.zzq(taskCompletionSource, task);
                }
            });
        }
        synchronized (this.zzg) {
            if (this.zzl.getAndIncrement() > 0) {
                this.zzc.zza("Already connected to the service.", new Object[0]);
            }
        }
        zzc().post(new zzfwy(this, zzfwvVar.zzb(), zzfwvVar));
    }

    public final /* synthetic */ void zzq(TaskCompletionSource taskCompletionSource, Task task) {
        synchronized (this.zzg) {
            this.zzf.remove(taskCompletionSource);
        }
    }

    public final void zzr() {
        synchronized (this.zzg) {
            if (this.zzl.get() > 0 && this.zzl.decrementAndGet() > 0) {
                this.zzc.zzd("Leaving the connection open for other ongoing calls.", new Object[0]);
                return;
            }
            zzc().post(new zzfwz(this));
        }
    }

    public static /* bridge */ /* synthetic */ void zzm(zzfxf zzfxfVar, zzfwv zzfwvVar) {
        if (zzfxfVar.zzn != null || zzfxfVar.zzh) {
            if (zzfxfVar.zzh) {
                zzfxfVar.zzc.zzd("Waiting to bind to the service.", new Object[0]);
                zzfxfVar.zze.add(zzfwvVar);
                return;
            }
            zzfwvVar.run();
            return;
        }
        zzfxfVar.zzc.zzd("Initiate binding to the service.", new Object[0]);
        zzfxfVar.zze.add(zzfwvVar);
        zzfxe zzfxeVar = new zzfxe(zzfxfVar, null);
        zzfxfVar.zzm = zzfxeVar;
        zzfxfVar.zzh = true;
        if (zzfxfVar.zzb.bindService(zzfxfVar.zzi, zzfxeVar, 1)) {
            return;
        }
        zzfxfVar.zzc.zzd("Failed to bind to the service.", new Object[0]);
        zzfxfVar.zzh = false;
        for (zzfwv zzfwvVar2 : zzfxfVar.zze) {
            zzfwvVar2.zzc(new zzfxg());
        }
        zzfxfVar.zze.clear();
    }
}
