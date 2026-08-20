package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzapc;
import com.google.android.gms.internal.ads.zzapf;
import com.google.android.gms.internal.ads.zzapi;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzchh;
import com.google.android.gms.internal.ads.zzchu;
import com.google.android.gms.internal.ads.zzcib;
import com.google.android.gms.internal.ads.zzfrz;
import com.google.android.gms.internal.ads.zzftb;
import com.google.android.gms.internal.ads.zzftv;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzi implements Runnable, zzapf {
    protected boolean zza;
    private final boolean zzf;
    private final boolean zzg;
    private final Executor zzh;
    private final zzfrz zzi;
    private Context zzj;
    private final Context zzk;
    private zzchu zzl;
    private final zzchu zzm;
    private final boolean zzn;
    private int zzo;
    private final List zzc = new Vector();
    private final AtomicReference zzd = new AtomicReference();
    private final AtomicReference zze = new AtomicReference();
    final CountDownLatch zzb = new CountDownLatch(1);

    public zzi(Context context, zzchu zzchuVar) {
        this.zzj = context;
        this.zzk = context;
        this.zzl = zzchuVar;
        this.zzm = zzchuVar;
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        this.zzh = newCachedThreadPool;
        boolean booleanValue = ((Boolean) zzba.zzc().zzb(zzbjj.zzbX)).booleanValue();
        this.zzn = booleanValue;
        this.zzi = zzfrz.zza(context, newCachedThreadPool, booleanValue);
        this.zzf = ((Boolean) zzba.zzc().zzb(zzbjj.zzbT)).booleanValue();
        this.zzg = ((Boolean) zzba.zzc().zzb(zzbjj.zzbY)).booleanValue();
        if (((Boolean) zzba.zzc().zzb(zzbjj.zzbW)).booleanValue()) {
            this.zzo = 2;
        } else {
            this.zzo = 1;
        }
        if (!((Boolean) zzba.zzc().zzb(zzbjj.zzcW)).booleanValue()) {
            this.zza = zzc();
        }
        if (((Boolean) zzba.zzc().zzb(zzbjj.zzcP)).booleanValue()) {
            zzcib.zza.execute(this);
            return;
        }
        zzay.zzb();
        if (zzchh.zzv()) {
            zzcib.zza.execute(this);
        } else {
            run();
        }
    }

    private final zzapf zzj() {
        return zzi() == 2 ? (zzapf) this.zze.get() : (zzapf) this.zzd.get();
    }

    private final void zzm() {
        zzapf zzj = zzj();
        if (this.zzc.isEmpty() || zzj == null) {
            return;
        }
        for (Object[] objArr : this.zzc) {
            int length = objArr.length;
            if (length == 1) {
                zzj.zzk((MotionEvent) objArr[0]);
            } else if (length == 3) {
                zzj.zzl(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        this.zzc.clear();
    }

    private final void zzo(boolean z) {
        this.zzd.set(zzapi.zzt(this.zzl.zza, zzp(this.zzj), z, this.zzo));
    }

    private static final Context zzp(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.content.Context, com.google.android.gms.internal.ads.zzchu] */
    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (((Boolean) zzba.zzc().zzb(zzbjj.zzcW)).booleanValue()) {
                this.zza = zzc();
            }
            boolean z = this.zzl.zzd;
            final boolean z2 = false;
            if (!((Boolean) zzba.zzc().zzb(zzbjj.zzaQ)).booleanValue() && z) {
                z2 = true;
            }
            if (zzi() == 1) {
                zzo(z2);
                if (this.zzo == 2) {
                    this.zzh.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.zzg
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzi.this.zzb(z2);
                        }
                    });
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    zzapc zza = zzapc.zza(this.zzl.zza, zzp(this.zzj), z2, this.zzn);
                    this.zze.set(zza);
                    if (this.zzg && !zza.zzq()) {
                        this.zzo = 1;
                        zzo(z2);
                    }
                } catch (NullPointerException e2) {
                    this.zzo = 1;
                    zzo(z2);
                    this.zzi.zzc(2031, System.currentTimeMillis() - currentTimeMillis, e2);
                }
            }
        } finally {
            this.zzb.countDown();
            this.zzj = null;
            this.zzl = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            zzapc.zza(this.zzm.zza, zzp(this.zzk), z, this.zzn).zzo();
        } catch (NullPointerException e2) {
            this.zzi.zzc(2027, System.currentTimeMillis() - currentTimeMillis, e2);
        }
    }

    protected final boolean zzc() {
        Context context = this.zzj;
        zzfrz zzfrzVar = this.zzi;
        zzh zzhVar = new zzh(this);
        return new zzftv(this.zzj, zzftb.zzb(context, zzfrzVar), zzhVar, ((Boolean) zzba.zzc().zzb(zzbjj.zzbU)).booleanValue()).zzd(1);
    }

    public final boolean zzd() {
        try {
            this.zzb.await();
            return true;
        } catch (InterruptedException e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Interrupted during GADSignals creation.", e2);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final String zze(Context context, String str, View view) {
        return zzf(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final String zzf(Context context, String str, View view, Activity activity) {
        if (zzd()) {
            zzapf zzj = zzj();
            if (((Boolean) zzba.zzc().zzb(zzbjj.zziR)).booleanValue()) {
                zzt.zzp();
                com.google.android.gms.ads.internal.util.zzs.zzF(view, 4, null);
            }
            if (zzj != null) {
                zzm();
                return zzj.zzf(zzp(context), str, view, activity);
            }
            return "";
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final String zzg(Context context) {
        zzapf zzj;
        if (!zzd() || (zzj = zzj()) == null) {
            return "";
        }
        zzm();
        return zzj.zzg(zzp(context));
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final String zzh(Context context, View view, Activity activity) {
        if (((Boolean) zzba.zzc().zzb(zzbjj.zziQ)).booleanValue()) {
            if (zzd()) {
                zzapf zzj = zzj();
                if (((Boolean) zzba.zzc().zzb(zzbjj.zziR)).booleanValue()) {
                    zzt.zzp();
                    com.google.android.gms.ads.internal.util.zzs.zzF(view, 2, null);
                }
                return zzj != null ? zzj.zzh(context, view, activity) : "";
            }
            return "";
        }
        zzapf zzj2 = zzj();
        if (((Boolean) zzba.zzc().zzb(zzbjj.zziR)).booleanValue()) {
            zzt.zzp();
            com.google.android.gms.ads.internal.util.zzs.zzF(view, 2, null);
        }
        if (zzj2 == null) {
            return "";
        }
        return zzj2.zzh(context, view, activity);
    }

    protected final int zzi() {
        if (!this.zzf || this.zza) {
            return this.zzo;
        }
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final void zzk(MotionEvent motionEvent) {
        zzapf zzj = zzj();
        if (zzj != null) {
            zzm();
            zzj.zzk(motionEvent);
            return;
        }
        this.zzc.add(new Object[]{motionEvent});
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final void zzl(int i, int i2, int i3) {
        zzapf zzj = zzj();
        if (zzj != null) {
            zzm();
            zzj.zzl(i, i2, i3);
            return;
        }
        this.zzc.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final void zzn(View view) {
        zzapf zzj = zzj();
        if (zzj != null) {
            zzj.zzn(view);
        }
    }
}
