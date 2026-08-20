package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdvt extends zzdan {
    private final Context zzc;
    private final WeakReference zzd;
    private final zzdoe zze;
    private final zzdlk zzf;
    private final zzdfa zzg;
    private final zzdgh zzh;
    private final zzdbh zzi;
    private final zzcdh zzj;
    private final zzfsk zzk;
    private final zzfiz zzl;
    private boolean zzm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdvt(zzdam zzdamVar, Context context, zzcno zzcnoVar, zzdoe zzdoeVar, zzdlk zzdlkVar, zzdfa zzdfaVar, zzdgh zzdghVar, zzdbh zzdbhVar, zzfil zzfilVar, zzfsk zzfskVar, zzfiz zzfizVar) {
        super(zzdamVar);
        this.zzm = false;
        this.zzc = context;
        this.zze = zzdoeVar;
        this.zzd = new WeakReference(zzcnoVar);
        this.zzf = zzdlkVar;
        this.zzg = zzdfaVar;
        this.zzh = zzdghVar;
        this.zzi = zzdbhVar;
        this.zzk = zzfskVar;
        zzcdd zzcddVar = zzfilVar.zzm;
        this.zzj = new zzceb(zzcddVar != null ? zzcddVar.zza : "", zzcddVar != null ? zzcddVar.zzb : 1);
        this.zzl = zzfizVar;
    }

    public final void finalize() throws Throwable {
        try {
            final zzcno zzcnoVar = (zzcno) this.zzd.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgg)).booleanValue()) {
                if (!this.zzm && zzcnoVar != null) {
                    zzcib.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdvs
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcno.this.destroy();
                        }
                    });
                }
            } else if (zzcnoVar != null) {
                zzcnoVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final Bundle zza() {
        return this.zzh.zzb();
    }

    public final zzcdh zzc() {
        return this.zzj;
    }

    public final zzfiz zzd() {
        return this.zzl;
    }

    public final boolean zze() {
        return this.zzi.zzg();
    }

    public final boolean zzf() {
        return this.zzm;
    }

    public final boolean zzg() {
        zzcno zzcnoVar = (zzcno) this.zzd.get();
        return (zzcnoVar == null || zzcnoVar.zzaD()) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v3, types: [android.content.Context] */
    public final boolean zzh(boolean z, Activity activity) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzay)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzs.zzC(this.zzc)) {
                com.google.android.gms.ads.internal.util.zze.zzj("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.zzg.zzb();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzaz)).booleanValue()) {
                    this.zzk.zza(this.zza.zzb.zzb.zzb);
                }
                return false;
            }
        }
        if (this.zzm) {
            com.google.android.gms.ads.internal.util.zze.zzj("The rewarded ad have been showed.");
            this.zzg.zza(zzfkg.zzd(10, null, null));
            return false;
        }
        this.zzm = true;
        this.zzf.zzb();
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.zzc;
        }
        try {
            this.zze.zza(z, activity2, this.zzg);
            this.zzf.zza();
            return true;
        } catch (zzdod e2) {
            this.zzg.zzc(e2);
            return false;
        }
    }
}
