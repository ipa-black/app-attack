package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.ExecutionException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzemh implements zzekx {
    private final Context zza;
    private final zzczi zzb;
    private View zzc;
    private zzbwc zzd;

    public zzemh(Context context, zzczi zzcziVar) {
        this.zza = context;
        this.zzb = zzcziVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final /* bridge */ /* synthetic */ Object zza(zzfix zzfixVar, final zzfil zzfilVar, final zzekt zzektVar) throws zzfjl, zzeom {
        final View view;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgZ)).booleanValue() && zzfilVar.zzai) {
            try {
                view = (View) ObjectWrapper.unwrap(this.zzd.zze());
                boolean zzf = this.zzd.zzf();
                if (view == null) {
                    throw new zzfjl(new Exception("BannerRtbAdapterWrapper interscrollerView should not be null"));
                }
                if (zzf) {
                    try {
                        view = (View) zzger.zzn(zzger.zzi(null), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzemd
                            @Override // com.google.android.gms.internal.ads.zzgdy
                            public final zzgfb zza(Object obj) {
                                return zzemh.this.zzc(view, zzfilVar, obj);
                            }
                        }, zzcib.zze).get();
                    } catch (InterruptedException | ExecutionException e2) {
                        throw new zzfjl(e2);
                    }
                }
            } catch (RemoteException e3) {
                throw new zzfjl(e3);
            }
        } else {
            view = this.zzc;
        }
        zzcym zza = this.zzb.zza(new zzdbc(zzfixVar, zzfilVar, zzektVar.zza), new zzcys(view, null, new zzdal() { // from class: com.google.android.gms.internal.ads.zzeme
            @Override // com.google.android.gms.internal.ads.zzdal
            public final com.google.android.gms.ads.internal.client.zzdq zza() {
                try {
                    return ((zzbxq) zzekt.this.zzb).zze();
                } catch (RemoteException e4) {
                    throw new zzfjl(e4);
                }
            }
        }, (zzfim) zzfilVar.zzv.get(0)));
        zza.zzg().zza(view);
        ((zzems) zzektVar.zzc).zzc(zza.zzh());
        return zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final void zzb(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl {
        try {
            ((zzbxq) zzektVar.zzb).zzq(zzfilVar.zzaa);
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgZ)).booleanValue() || !zzfilVar.zzai) {
                ((zzbxq) zzektVar.zzb).zzj(zzfilVar.zzV, zzfilVar.zzw.toString(), zzfixVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzemg(this, zzektVar, null), (zzbvz) zzektVar.zzc, zzfixVar.zza.zza.zze);
            } else {
                ((zzbxq) zzektVar.zzb).zzk(zzfilVar.zzV, zzfilVar.zzw.toString(), zzfixVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzemg(this, zzektVar, null), (zzbvz) zzektVar.zzc, zzfixVar.zza.zza.zze);
            }
        } catch (RemoteException e2) {
            throw new zzfjl(e2);
        }
    }

    public final /* synthetic */ zzgfb zzc(View view, zzfil zzfilVar, Object obj) throws Exception {
        return zzger.zzi(zzczz.zza(this.zza, view, zzfilVar));
    }
}
