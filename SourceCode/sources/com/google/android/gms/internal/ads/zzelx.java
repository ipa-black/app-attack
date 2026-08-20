package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzelx implements zzekq {
    private final zzczi zza;
    private final Context zzb;
    private final zzdwp zzc;
    private final zzfjg zzd;
    private final Executor zze;
    private final zzfxt zzf;

    public zzelx(zzczi zzcziVar, Context context, Executor executor, zzdwp zzdwpVar, zzfjg zzfjgVar, zzfxt zzfxtVar) {
        this.zzb = context;
        this.zza = zzcziVar;
        this.zze = executor;
        this.zzc = zzdwpVar;
        this.zzd = zzfjgVar;
        this.zzf = zzfxtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final zzgfb zza(final zzfix zzfixVar, final zzfil zzfilVar) {
        return zzger.zzn(zzger.zzi(null), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzelr
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzelx.this.zzc(zzfixVar, zzfilVar, obj);
            }
        }, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final boolean zzb(zzfix zzfixVar, zzfil zzfilVar) {
        zzfiq zzfiqVar = zzfilVar.zzt;
        return (zzfiqVar == null || zzfiqVar.zza == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzc(zzfix zzfixVar, zzfil zzfilVar, Object obj) throws Exception {
        View zzdwsVar;
        com.google.android.gms.ads.internal.client.zzq zza = zzfjk.zza(this.zzb, zzfilVar.zzv);
        final zzcno zza2 = this.zzc.zza(zza, zzfilVar, zzfixVar.zzb.zzb);
        zza2.zzab(zzfilVar.zzX);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgZ)).booleanValue() || !zzfilVar.zzai) {
            zzdwsVar = new zzdws(this.zzb, (View) zza2, (com.google.android.gms.ads.internal.util.zzas) this.zzf.apply(zzfilVar));
        } else {
            zzdwsVar = zzczz.zza(this.zzb, (View) zza2, zzfilVar);
        }
        final zzcym zza3 = this.zza.zza(new zzdbc(zzfixVar, zzfilVar, null), new zzcys(zzdwsVar, zza2, new zzdal() { // from class: com.google.android.gms.internal.ads.zzels
            @Override // com.google.android.gms.internal.ads.zzdal
            public final com.google.android.gms.ads.internal.client.zzdq zza() {
                return zzcno.this.zzs();
            }
        }, zzfjk.zzc(zza)));
        zza3.zzj().zzi(zza2, false, null);
        zza3.zzc().zzj(new zzdfh() { // from class: com.google.android.gms.internal.ads.zzelt
            @Override // com.google.android.gms.internal.ads.zzdfh
            public final void zzl() {
                zzcno zzcnoVar = zzcno.this;
                if (zzcnoVar.zzP() != null) {
                    zzcnoVar.zzP().zzp();
                }
            }
        }, zzcib.zzf);
        zza3.zzj();
        zzfiq zzfiqVar = zzfilVar.zzt;
        zzgfb zzj = zzdwo.zzj(zza2, zzfiqVar.zzb, zzfiqVar.zza);
        if (zzfilVar.zzN) {
            zzj.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzelu
                @Override // java.lang.Runnable
                public final void run() {
                    zzcno.this.zzag();
                }
            }, this.zze);
        }
        zzj.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzelv
            @Override // java.lang.Runnable
            public final void run() {
                zzelx.this.zzd(zza2);
            }
        }, this.zze);
        return zzger.zzm(zzj, new zzfxt() { // from class: com.google.android.gms.internal.ads.zzelw
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj2) {
                return zzcym.this.zza();
            }
        }, zzcib.zzf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzd(zzcno zzcnoVar) {
        zzcnoVar.zzaa();
        zzcok zzs = zzcnoVar.zzs();
        com.google.android.gms.ads.internal.client.zzfl zzflVar = this.zzd.zza;
        if (zzflVar == null || zzs == null) {
            return;
        }
        zzs.zzs(zzflVar);
    }
}
