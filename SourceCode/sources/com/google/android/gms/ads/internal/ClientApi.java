package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzbq;
import com.google.android.gms.ads.internal.client.zzbu;
import com.google.android.gms.ads.internal.client.zzcd;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.client.zzdj;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzac;
import com.google.android.gms.ads.internal.overlay.zzae;
import com.google.android.gms.ads.internal.overlay.zzaf;
import com.google.android.gms.ads.internal.overlay.zzy;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzbmp;
import com.google.android.gms.internal.ads.zzbmv;
import com.google.android.gms.internal.ads.zzbra;
import com.google.android.gms.internal.ads.zzbrd;
import com.google.android.gms.internal.ads.zzbvt;
import com.google.android.gms.internal.ads.zzbzj;
import com.google.android.gms.internal.ads.zzbzq;
import com.google.android.gms.internal.ads.zzccu;
import com.google.android.gms.internal.ads.zzcdk;
import com.google.android.gms.internal.ads.zzcgf;
import com.google.android.gms.internal.ads.zzchu;
import com.google.android.gms.internal.ads.zzcpj;
import com.google.android.gms.internal.ads.zzdra;
import com.google.android.gms.internal.ads.zzdrc;
import com.google.android.gms.internal.ads.zzeap;
import com.google.android.gms.internal.ads.zzere;
import com.google.android.gms.internal.ads.zzfdj;
import com.google.android.gms.internal.ads.zzfdk;
import com.google.android.gms.internal.ads.zzfex;
import com.google.android.gms.internal.ads.zzfgq;
import com.google.android.gms.internal.ads.zzfie;
import java.util.HashMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public class ClientApi extends zzcd {
    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbq zzb(IObjectWrapper iObjectWrapper, String str, zzbvt zzbvtVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzere(zzcpj.zza(context, zzbvtVar, i), context, str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu zzc(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, String str, zzbvt zzbvtVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzfdj zzs = zzcpj.zza(context, zzbvtVar, i).zzs();
        zzs.zza(str);
        zzs.zzb(context);
        zzfdk zzc = zzs.zzc();
        if (i >= ((Integer) zzba.zzc().zzb(zzbjj.zzeI)).intValue()) {
            return zzc.zzb();
        }
        return zzc.zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu zzd(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, String str, zzbvt zzbvtVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzfex zzt = zzcpj.zza(context, zzbvtVar, i).zzt();
        zzt.zzc(context);
        zzt.zza(zzqVar);
        zzt.zzb(str);
        return zzt.zzd().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu zze(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, String str, zzbvt zzbvtVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzfgq zzu = zzcpj.zza(context, zzbvtVar, i).zzu();
        zzu.zzc(context);
        zzu.zza(zzqVar);
        zzu.zzb(str);
        return zzu.zzd().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu zzf(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, String str, int i) {
        return new zzs((Context) ObjectWrapper.unwrap(iObjectWrapper), zzqVar, str, new zzchu(224400000, i, true, false));
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzco zzg(IObjectWrapper iObjectWrapper, int i) {
        return zzcpj.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), null, i).zzb();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzdj zzh(IObjectWrapper iObjectWrapper, zzbvt zzbvtVar, int i) {
        return zzcpj.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbvtVar, i).zzl();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbmp zzi(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzdrc((FrameLayout) ObjectWrapper.unwrap(iObjectWrapper), (FrameLayout) ObjectWrapper.unwrap(iObjectWrapper2), 224400000);
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbmv zzj(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        return new zzdra((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbrd zzk(IObjectWrapper iObjectWrapper, zzbvt zzbvtVar, int i, zzbra zzbraVar) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzeap zzj = zzcpj.zza(context, zzbvtVar, i).zzj();
        zzj.zzb(context);
        zzj.zza(zzbraVar);
        return zzj.zzc().zzd();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbzj zzl(IObjectWrapper iObjectWrapper, zzbvt zzbvtVar, int i) {
        return zzcpj.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbvtVar, i).zzm();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbzq zzm(IObjectWrapper iObjectWrapper) {
        Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        AdOverlayInfoParcel zza = AdOverlayInfoParcel.zza(activity.getIntent());
        if (zza == null) {
            return new com.google.android.gms.ads.internal.overlay.zzt(activity);
        }
        int i = zza.zzk;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            return new zzac(activity);
                        }
                        return new com.google.android.gms.ads.internal.overlay.zzt(activity);
                    }
                    return new zzy(activity, zza);
                }
                return new zzaf(activity);
            }
            return new zzae(activity);
        }
        return new com.google.android.gms.ads.internal.overlay.zzs(activity);
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzccu zzn(IObjectWrapper iObjectWrapper, zzbvt zzbvtVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzfie zzv = zzcpj.zza(context, zzbvtVar, i).zzv();
        zzv.zzb(context);
        return zzv.zzc().zzb();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzcdk zzo(IObjectWrapper iObjectWrapper, String str, zzbvt zzbvtVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzfie zzv = zzcpj.zza(context, zzbvtVar, i).zzv();
        zzv.zzb(context);
        zzv.zza(str);
        return zzv.zzc().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzcgf zzp(IObjectWrapper iObjectWrapper, zzbvt zzbvtVar, int i) {
        return zzcpj.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbvtVar, i).zzp();
    }
}
