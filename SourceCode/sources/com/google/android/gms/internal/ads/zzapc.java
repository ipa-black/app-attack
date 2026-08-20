package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzapc implements zzapf {
    private static zzapc zzb;
    private final Context zzc;
    private final zzfto zzd;
    private final zzftv zze;
    private final zzftx zzf;
    private final zzaqd zzg;
    private final zzfrz zzh;
    private final Executor zzi;
    private final zzftu zzj;
    private final zzaqt zzl;
    private final zzaqk zzm;
    private volatile boolean zzo;
    private volatile boolean zzp;
    private final int zzq;
    volatile long zza = 0;
    private final Object zzn = new Object();
    private final CountDownLatch zzk = new CountDownLatch(1);

    zzapc(Context context, zzfrz zzfrzVar, zzfto zzftoVar, zzftv zzftvVar, zzftx zzftxVar, zzaqd zzaqdVar, Executor executor, zzfru zzfruVar, int i, zzaqt zzaqtVar, zzaqk zzaqkVar) {
        this.zzp = false;
        this.zzc = context;
        this.zzh = zzfrzVar;
        this.zzd = zzftoVar;
        this.zze = zzftvVar;
        this.zzf = zzftxVar;
        this.zzg = zzaqdVar;
        this.zzi = executor;
        this.zzq = i;
        this.zzl = zzaqtVar;
        this.zzm = zzaqkVar;
        this.zzp = false;
        this.zzj = new zzapa(this, zzfruVar);
    }

    public static synchronized zzapc zza(String str, Context context, boolean z, boolean z2) {
        zzapc zzb2;
        synchronized (zzapc.class) {
            zzb2 = zzb(str, context, Executors.newCachedThreadPool(), z, z2);
        }
        return zzb2;
    }

    @Deprecated
    public static synchronized zzapc zzb(String str, Context context, Executor executor, boolean z, boolean z2) {
        zzapc zzapcVar;
        synchronized (zzapc.class) {
            if (zzb == null) {
                zzfsa zza = zzfsb.zza();
                zza.zza(str);
                zza.zzc(z);
                zzfsb zzd = zza.zzd();
                zzfrz zza2 = zzfrz.zza(context, executor, z2);
                zzapn zzc = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcS)).booleanValue() ? zzapn.zzc(context) : null;
                zzaqt zzd2 = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcT)).booleanValue() ? zzaqt.zzd(context, executor) : null;
                zzaqk zzaqkVar = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcl)).booleanValue() ? new zzaqk() : null;
                zzfss zze = zzfss.zze(context, executor, zza2, zzd);
                zzaqc zzaqcVar = new zzaqc(context);
                zzaqd zzaqdVar = new zzaqd(zzd, zze, new zzaqr(context, zzaqcVar), zzaqcVar, zzc, zzd2, zzaqkVar);
                int zzb2 = zzftb.zzb(context, zza2);
                zzfru zzfruVar = new zzfru();
                zzapc zzapcVar2 = new zzapc(context, zza2, new zzfto(context, zzb2), new zzftv(context, zzb2, new zzaoz(zza2), ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbU)).booleanValue()), new zzftx(context, zzaqdVar, zza2, zzfruVar), zzaqdVar, executor, zzfruVar, zzb2, zzd2, zzaqkVar);
                zzb = zzapcVar2;
                zzapcVar2.zzm();
                zzb.zzo();
            }
            zzapcVar = zzb;
        }
        return zzapcVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0099, code lost:
        if (r4.zzd().zzj().equals(r5.zzj()) != false) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* bridge */ /* synthetic */ void zzj(com.google.android.gms.internal.ads.zzapc r12) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzapc.zzj(com.google.android.gms.internal.ads.zzapc):void");
    }

    private final void zzr() {
        zzaqt zzaqtVar = this.zzl;
        if (zzaqtVar != null) {
            zzaqtVar.zzh();
        }
    }

    private final zzftn zzs(int i) {
        if (zzftb.zza(this.zzq)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbS)).booleanValue()) {
                return this.zze.zzc(1);
            }
            return this.zzd.zzc(1);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final String zze(Context context, String str, View view) {
        return zzf(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final String zzf(Context context, String str, View view, Activity activity) {
        zzr();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcl)).booleanValue()) {
            this.zzm.zzi();
        }
        zzo();
        zzfsc zza = this.zzf.zza();
        if (zza != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zza2 = zza.zza(context, null, str, view, activity);
            this.zzh.zzf(5000, System.currentTimeMillis() - currentTimeMillis, zza2, null);
            return zza2;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final String zzg(Context context) {
        zzr();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcl)).booleanValue()) {
            this.zzm.zzj();
        }
        zzo();
        zzfsc zza = this.zzf.zza();
        if (zza != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zzc = zza.zzc(context, null);
            this.zzh.zzf(5001, System.currentTimeMillis() - currentTimeMillis, zzc, null);
            return zzc;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final String zzh(Context context, View view, Activity activity) {
        zzr();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcl)).booleanValue()) {
            this.zzm.zzk(context, view);
        }
        zzo();
        zzfsc zza = this.zzf.zza();
        if (zza != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zzb2 = zza.zzb(context, null, view, activity);
            this.zzh.zzf(5002, System.currentTimeMillis() - currentTimeMillis, zzb2, null);
            return zzb2;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final void zzk(MotionEvent motionEvent) {
        zzfsc zza = this.zzf.zza();
        if (zza != null) {
            try {
                zza.zzd(null, motionEvent);
            } catch (zzftw e2) {
                this.zzh.zzc(e2.zza(), -1L, e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final void zzl(int i, int i2, int i3) {
    }

    final synchronized void zzm() {
        long currentTimeMillis = System.currentTimeMillis();
        zzftn zzs = zzs(1);
        if (zzs != null) {
            if (this.zzf.zzc(zzs)) {
                this.zzp = true;
                this.zzk.countDown();
                return;
            }
            return;
        }
        this.zzh.zzd(4013, System.currentTimeMillis() - currentTimeMillis);
    }

    @Override // com.google.android.gms.internal.ads.zzapf
    public final void zzn(View view) {
        this.zzg.zzd(view);
    }

    public final void zzo() {
        if (this.zzo) {
            return;
        }
        synchronized (this.zzn) {
            if (!this.zzo) {
                if ((System.currentTimeMillis() / 1000) - this.zza < 3600) {
                    return;
                }
                zzftn zzb2 = this.zzf.zzb();
                if ((zzb2 == null || zzb2.zzd(3600L)) && zzftb.zza(this.zzq)) {
                    this.zzi.execute(new zzapb(this));
                }
            }
        }
    }

    public final synchronized boolean zzq() {
        return this.zzp;
    }
}
