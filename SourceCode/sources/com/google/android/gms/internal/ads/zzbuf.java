package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzbuf {
    private final Context zzb;
    private final String zzc;
    private final zzchu zzd;
    private final zzfoy zze;
    private final com.google.android.gms.ads.internal.util.zzbb zzf;
    private final com.google.android.gms.ads.internal.util.zzbb zzg;
    private zzbue zzh;
    private final Object zza = new Object();
    private int zzi = 1;

    public zzbuf(Context context, zzchu zzchuVar, String str, com.google.android.gms.ads.internal.util.zzbb zzbbVar, com.google.android.gms.ads.internal.util.zzbb zzbbVar2, zzfoy zzfoyVar) {
        this.zzc = str;
        this.zzb = context.getApplicationContext();
        this.zzd = zzchuVar;
        this.zze = zzfoyVar;
        this.zzf = zzbbVar;
        this.zzg = zzbbVar2;
    }

    public final zzbtz zzb(zzapj zzapjVar) {
        synchronized (this.zza) {
            synchronized (this.zza) {
                zzbue zzbueVar = this.zzh;
                if (zzbueVar != null && this.zzi == 0) {
                    zzbueVar.zzi(new zzcik() { // from class: com.google.android.gms.internal.ads.zzbtk
                        @Override // com.google.android.gms.internal.ads.zzcik
                        public final void zza(Object obj) {
                            zzbuf.this.zzk((zzbta) obj);
                        }
                    }, new zzcii() { // from class: com.google.android.gms.internal.ads.zzbtl
                        @Override // com.google.android.gms.internal.ads.zzcii
                        public final void zza() {
                        }
                    });
                }
            }
            zzbue zzbueVar2 = this.zzh;
            if (zzbueVar2 != null && zzbueVar2.zze() != -1) {
                int i = this.zzi;
                if (i == 0) {
                    return this.zzh.zza();
                } else if (i != 1) {
                    return this.zzh.zza();
                } else {
                    this.zzi = 2;
                    zzd(null);
                    return this.zzh.zza();
                }
            }
            this.zzi = 2;
            zzbue zzd = zzd(null);
            this.zzh = zzd;
            return zzd.zza();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzbue zzd(zzapj zzapjVar) {
        zzfol zza = zzfok.zza(this.zzb, 6);
        zza.zzh();
        final zzbue zzbueVar = new zzbue(this.zzg);
        zzcib.zze.execute(new Runnable(null, zzbueVar) { // from class: com.google.android.gms.internal.ads.zzbtm
            public final /* synthetic */ zzbue zzb;

            {
                this.zzb = zzbueVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbuf.this.zzj(null, this.zzb);
            }
        });
        zzbueVar.zzi(new zzbtu(this, zzbueVar, zza), new zzbtv(this, zzbueVar, zza));
        return zzbueVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzi(zzbue zzbueVar, final zzbta zzbtaVar) {
        synchronized (this.zza) {
            if (zzbueVar.zze() != -1 && zzbueVar.zze() != 1) {
                zzbueVar.zzg();
                zzcib.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbtp
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbta.this.zzc();
                    }
                });
                com.google.android.gms.ads.internal.util.zze.zza("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzj(zzapj zzapjVar, zzbue zzbueVar) {
        try {
            zzbti zzbtiVar = new zzbti(this.zzb, this.zzd, null, null);
            zzbtiVar.zzk(new zzbto(this, zzbueVar, zzbtiVar));
            zzbtiVar.zzq("/jsLoaded", new zzbtq(this, zzbueVar, zzbtiVar));
            com.google.android.gms.ads.internal.util.zzca zzcaVar = new com.google.android.gms.ads.internal.util.zzca();
            zzbtr zzbtrVar = new zzbtr(this, null, zzbtiVar, zzcaVar);
            zzcaVar.zzb(zzbtrVar);
            zzbtiVar.zzq("/requestReload", zzbtrVar);
            if (this.zzc.endsWith(".js")) {
                zzbtiVar.zzh(this.zzc);
            } else if (this.zzc.startsWith("<html>")) {
                zzbtiVar.zzf(this.zzc);
            } else {
                zzbtiVar.zzg(this.zzc);
            }
            com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new zzbtt(this, zzbueVar, zzbtiVar), 60000L);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.zze.zzh("Error creating webview.", th);
            com.google.android.gms.ads.internal.zzt.zzo().zzu(th, "SdkJavascriptFactory.loadJavascriptEngine");
            zzbueVar.zzg();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzk(zzbta zzbtaVar) {
        if (zzbtaVar.zzi()) {
            this.zzi = 1;
        }
    }
}
