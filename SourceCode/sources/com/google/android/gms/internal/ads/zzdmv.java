package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import java.lang.ref.WeakReference;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdmv extends zzdan {
    private final Context zzc;
    private final WeakReference zzd;
    private final zzdlk zze;
    private final zzdoe zzf;
    private final zzdbh zzg;
    private final zzfsk zzh;
    private final zzdfa zzi;
    private boolean zzj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdmv(zzdam zzdamVar, Context context, @Nullable zzcno zzcnoVar, zzdlk zzdlkVar, zzdoe zzdoeVar, zzdbh zzdbhVar, zzfsk zzfskVar, zzdfa zzdfaVar) {
        super(zzdamVar);
        this.zzj = false;
        this.zzc = context;
        this.zzd = new WeakReference(zzcnoVar);
        this.zze = zzdlkVar;
        this.zzf = zzdoeVar;
        this.zzg = zzdbhVar;
        this.zzh = zzfskVar;
        this.zzi = zzdfaVar;
    }

    public final void finalize() throws Throwable {
        try {
            final zzcno zzcnoVar = (zzcno) this.zzd.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgg)).booleanValue()) {
                if (!this.zzj && zzcnoVar != null) {
                    zzcib.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdmu
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

    public final boolean zza() {
        return this.zzg.zzg();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v3, types: [android.content.Context] */
    public final boolean zzc(boolean z, @Nullable Activity activity) {
        this.zze.zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzay)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzs.zzC(this.zzc)) {
                com.google.android.gms.ads.internal.util.zze.zzj("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.zzi.zzb();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzaz)).booleanValue()) {
                    this.zzh.zza(this.zza.zzb.zzb.zzb);
                }
                return false;
            }
        }
        if (this.zzj) {
            com.google.android.gms.ads.internal.util.zze.zzj("The interstitial ad has been showed.");
            this.zzi.zza(zzfkg.zzd(10, null, null));
        }
        Activity activity2 = activity;
        if (!this.zzj) {
            if (activity == null) {
                activity2 = this.zzc;
            }
            try {
                this.zzf.zza(z, activity2, this.zzi);
                this.zze.zza();
                this.zzj = true;
                return true;
            } catch (zzdod e2) {
                this.zzi.zzc(e2);
            }
        }
        return false;
    }
}
