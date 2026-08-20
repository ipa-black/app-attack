package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcwh implements zzden, zzdgb, zzdfh, com.google.android.gms.ads.internal.client.zza, zzdfd {
    private final Context zza;
    private final Executor zzb;
    private final Executor zzc;
    private final ScheduledExecutorService zzd;
    private final zzfix zze;
    private final zzfil zzf;
    private final zzfpk zzg;
    private final zzfjp zzh;
    private final zzapj zzi;
    private final zzbki zzj;
    private final zzfow zzk;
    private final WeakReference zzl;
    private final WeakReference zzm;
    private boolean zzn;
    private final AtomicBoolean zzo = new AtomicBoolean();
    private final zzbkk zzp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcwh(Context context, Executor executor, Executor executor2, ScheduledExecutorService scheduledExecutorService, zzfix zzfixVar, zzfil zzfilVar, zzfpk zzfpkVar, zzfjp zzfjpVar, View view, zzcno zzcnoVar, zzapj zzapjVar, zzbki zzbkiVar, zzbkk zzbkkVar, zzfow zzfowVar, byte[] bArr) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = executor2;
        this.zzd = scheduledExecutorService;
        this.zze = zzfixVar;
        this.zzf = zzfilVar;
        this.zzg = zzfpkVar;
        this.zzh = zzfjpVar;
        this.zzi = zzapjVar;
        this.zzl = new WeakReference(view);
        this.zzm = new WeakReference(zzcnoVar);
        this.zzj = zzbkiVar;
        this.zzp = zzbkkVar;
        this.zzk = zzfowVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzs() {
        int i;
        String zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcZ)).booleanValue() ? this.zzi.zzc().zzh(this.zza, (View) this.zzl.get(), null) : null;
        if ((!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzal)).booleanValue() || !this.zze.zzb.zzb.zzg) && ((Boolean) zzbky.zzh.zze()).booleanValue()) {
            if (((Boolean) zzbky.zzg.zze()).booleanValue() && ((i = this.zzf.zzb) == 1 || i == 2 || i == 5)) {
                zzcno zzcnoVar = (zzcno) this.zzm.get();
            }
            zzger.zzr((zzgei) zzger.zzo(zzgei.zzv(zzger.zzi(null)), ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzaP)).longValue(), TimeUnit.MILLISECONDS, this.zzd), new zzcwg(this, zzh), this.zzb);
            return;
        }
        zzfjp zzfjpVar = this.zzh;
        zzfpk zzfpkVar = this.zzg;
        zzfix zzfixVar = this.zze;
        zzfil zzfilVar = this.zzf;
        zzfjpVar.zza(zzfpkVar.zzd(zzfixVar, zzfilVar, false, zzh, null, zzfilVar.zzd));
    }

    private final void zzt(final int i, final int i2) {
        View view;
        if (i > 0 && ((view = (View) this.zzl.get()) == null || view.getHeight() == 0 || view.getWidth() == 0)) {
            this.zzd.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcwa
                @Override // java.lang.Runnable
                public final void run() {
                    zzcwh.this.zzi(i, i2);
                }
            }, i2, TimeUnit.MILLISECONDS);
        } else {
            zzs();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if ((((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzal)).booleanValue() && this.zze.zzb.zzb.zzg) || !((Boolean) zzbky.zzd.zze()).booleanValue()) {
            zzfjp zzfjpVar = this.zzh;
            zzfpk zzfpkVar = this.zzg;
            zzfix zzfixVar = this.zze;
            zzfil zzfilVar = this.zzf;
            zzfjpVar.zzc(zzfpkVar.zzc(zzfixVar, zzfilVar, zzfilVar.zzc), true == com.google.android.gms.ads.internal.zzt.zzo().zzx(this.zza) ? 2 : 1);
            return;
        }
        zzger.zzr(zzger.zzf(zzgei.zzv(this.zzj.zza()), Throwable.class, new zzfxt() { // from class: com.google.android.gms.internal.ads.zzcwb
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                return "failure_click_attok";
            }
        }, zzcib.zzf), new zzcwf(this), this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbw() {
        zzfjp zzfjpVar = this.zzh;
        zzfpk zzfpkVar = this.zzg;
        zzfix zzfixVar = this.zze;
        zzfil zzfilVar = this.zzf;
        zzfjpVar.zza(zzfpkVar.zzc(zzfixVar, zzfilVar, zzfilVar.zzj));
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbx() {
        zzfjp zzfjpVar = this.zzh;
        zzfpk zzfpkVar = this.zzg;
        zzfix zzfixVar = this.zze;
        zzfil zzfilVar = this.zzf;
        zzfjpVar.zza(zzfpkVar.zzc(zzfixVar, zzfilVar, zzfilVar.zzh));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzg() {
        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcwe
            @Override // java.lang.Runnable
            public final void run() {
                zzcwh.this.zzs();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzh(int i, int i2) {
        zzt(i - 1, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzi(final int i, final int i2) {
        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcwc
            @Override // java.lang.Runnable
            public final void run() {
                zzcwh.this.zzh(i, i2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzj() {
    }

    @Override // com.google.android.gms.internal.ads.zzdfd
    public final void zzk(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbo)).booleanValue()) {
            this.zzh.zza(this.zzg.zzc(this.zze, this.zzf, zzfpk.zzf(2, zzeVar.zza, this.zzf.zzp)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final void zzl() {
        if (this.zzo.compareAndSet(false, true)) {
            int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdd)).intValue();
            if (intValue > 0) {
                zzt(intValue, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzde)).intValue());
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdc)).booleanValue()) {
                this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcwd
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcwh.this.zzg();
                    }
                });
            } else {
                zzs();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzm() {
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final synchronized void zzn() {
        if (this.zzn) {
            ArrayList arrayList = new ArrayList(this.zzf.zzd);
            arrayList.addAll(this.zzf.zzg);
            this.zzh.zza(this.zzg.zzd(this.zze, this.zzf, true, null, null, arrayList));
        } else {
            zzfjp zzfjpVar = this.zzh;
            zzfpk zzfpkVar = this.zzg;
            zzfix zzfixVar = this.zze;
            zzfil zzfilVar = this.zzf;
            zzfjpVar.zza(zzfpkVar.zzc(zzfixVar, zzfilVar, zzfilVar.zzn));
            zzfjp zzfjpVar2 = this.zzh;
            zzfpk zzfpkVar2 = this.zzg;
            zzfix zzfixVar2 = this.zze;
            zzfil zzfilVar2 = this.zzf;
            zzfjpVar2.zza(zzfpkVar2.zzc(zzfixVar2, zzfilVar2, zzfilVar2.zzg));
        }
        this.zzn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzo() {
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzp(zzccr zzccrVar, String str, String str2) {
        zzfjp zzfjpVar = this.zzh;
        zzfpk zzfpkVar = this.zzg;
        zzfil zzfilVar = this.zzf;
        zzfjpVar.zza(zzfpkVar.zze(zzfilVar, zzfilVar.zzi, zzccrVar));
    }
}
