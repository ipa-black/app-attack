package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzemb implements zzekx {
    private final Context zza;
    private final zzczi zzb;
    private final Executor zzc;

    public zzemb(Context context, zzczi zzcziVar, Executor executor) {
        this.zza = context;
        this.zzb = zzcziVar;
        this.zzc = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final /* bridge */ /* synthetic */ Object zza(zzfix zzfixVar, final zzfil zzfilVar, zzekt zzektVar) throws zzfjl, zzeom {
        final View zza;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgZ)).booleanValue() || !zzfilVar.zzai) {
            zza = ((zzfkb) zzektVar.zzb).zza();
        } else {
            zzbwc zzc = ((zzfkb) zzektVar.zzb).zzc();
            if (zzc == null) {
                com.google.android.gms.ads.internal.util.zze.zzg("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
                throw new zzfjl(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
            }
            try {
                zza = (View) ObjectWrapper.unwrap(zzc.zze());
                boolean zzf = zzc.zzf();
                if (zza == null) {
                    throw new zzfjl(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
                }
                if (zzf) {
                    try {
                        zza = (View) zzger.zzn(zzger.zzi(null), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzema
                            @Override // com.google.android.gms.internal.ads.zzgdy
                            public final zzgfb zza(Object obj) {
                                return zzemb.this.zzc(zza, zzfilVar, obj);
                            }
                        }, zzcib.zze).get();
                    } catch (InterruptedException | ExecutionException e2) {
                        throw new zzfjl(e2);
                    }
                }
            } catch (RemoteException e3) {
                throw new zzfjl(e3);
            }
        }
        zzczi zzcziVar = this.zzb;
        zzdbc zzdbcVar = new zzdbc(zzfixVar, zzfilVar, zzektVar.zza);
        final zzfkb zzfkbVar = (zzfkb) zzektVar.zzb;
        zzcym zza2 = zzcziVar.zza(zzdbcVar, new zzcys(zza, null, new zzdal() { // from class: com.google.android.gms.internal.ads.zzelz
            @Override // com.google.android.gms.internal.ads.zzdal
            public final com.google.android.gms.ads.internal.client.zzdq zza() {
                return zzfkb.this.zzb();
            }
        }, (zzfim) zzfilVar.zzv.get(0)));
        zza2.zzg().zza(zza);
        zza2.zzd().zzj(new zzcvy((zzfkb) zzektVar.zzb), this.zzc);
        ((zzems) zzektVar.zzc).zzc(zza2.zzi());
        return zza2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final void zzb(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl {
        com.google.android.gms.ads.internal.client.zzq zza;
        com.google.android.gms.ads.internal.client.zzq zzqVar = zzfixVar.zza.zza.zze;
        if (zzqVar.zzn) {
            zza = new com.google.android.gms.ads.internal.client.zzq(this.zza, com.google.android.gms.ads.zzb.zzd(zzqVar.zze, zzqVar.zzb));
        } else {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgZ)).booleanValue() || !zzfilVar.zzai) {
                zza = zzfjk.zza(this.zza, zzfilVar.zzv);
            } else {
                zza = new com.google.android.gms.ads.internal.client.zzq(this.zza, com.google.android.gms.ads.zzb.zze(zzqVar.zze, zzqVar.zzb));
            }
        }
        com.google.android.gms.ads.internal.client.zzq zzqVar2 = zza;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgZ)).booleanValue() || !zzfilVar.zzai) {
            ((zzfkb) zzektVar.zzb).zzm(this.zza, zzqVar2, zzfixVar.zza.zza.zzd, zzfilVar.zzw.toString(), com.google.android.gms.ads.internal.util.zzbu.zzl(zzfilVar.zzt), (zzbvz) zzektVar.zzc);
        } else {
            ((zzfkb) zzektVar.zzb).zzn(this.zza, zzqVar2, zzfixVar.zza.zza.zzd, zzfilVar.zzw.toString(), com.google.android.gms.ads.internal.util.zzbu.zzl(zzfilVar.zzt), (zzbvz) zzektVar.zzc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzc(View view, zzfil zzfilVar, Object obj) throws Exception {
        return zzger.zzi(zzczz.zza(this.zza, view, zzfilVar));
    }
}
