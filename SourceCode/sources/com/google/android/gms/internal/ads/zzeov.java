package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeov implements zzekx {
    private final Context zza;
    private final zzdvy zzb;

    public zzeov(Context context, zzdvy zzdvyVar) {
        this.zza = context;
        this.zzb = zzdvyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final /* bridge */ /* synthetic */ Object zza(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl, zzeom {
        zzenb zzenbVar = new zzenb(zzfilVar, (zzbxq) zzektVar.zzb, AdFormat.REWARDED);
        zzdvu zze = this.zzb.zze(new zzdbc(zzfixVar, zzfilVar, zzektVar.zza), new zzdvv(zzenbVar));
        zzenbVar.zzb(zze.zzc());
        ((zzems) zzektVar.zzc).zzc(zze.zzn());
        return zze.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final void zzb(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl {
        try {
            ((zzbxq) zzektVar.zzb).zzq(zzfilVar.zzaa);
            if (zzfixVar.zza.zza.zzo.zza == 3) {
                ((zzbxq) zzektVar.zzb).zzo(zzfilVar.zzV, zzfilVar.zzw.toString(), zzfixVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzeou(this, zzektVar, null), (zzbvz) zzektVar.zzc);
            } else {
                ((zzbxq) zzektVar.zzb).zzp(zzfilVar.zzV, zzfilVar.zzw.toString(), zzfixVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzeou(this, zzektVar, null), (zzbvz) zzektVar.zzc);
            }
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzb("Remote exception loading a rewarded RTB ad", e2);
        }
    }
}
