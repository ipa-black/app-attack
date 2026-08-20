package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzenh implements zzekx {
    private final Context zza;
    private final zzdnw zzb;

    public zzenh(Context context, zzdnw zzdnwVar) {
        this.zza = context;
        this.zzb = zzdnwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final /* bridge */ /* synthetic */ Object zza(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl, zzeom {
        zzenb zzenbVar = new zzenb(zzfilVar, (zzbxq) zzektVar.zzb, AdFormat.INTERSTITIAL);
        zzdmw zze = this.zzb.zze(new zzdbc(zzfixVar, zzfilVar, zzektVar.zza), new zzdmz(zzenbVar, null));
        zzenbVar.zzb(zze.zzc());
        ((zzems) zzektVar.zzc).zzc(zze.zzh());
        return zze.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final void zzb(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl {
        try {
            ((zzbxq) zzektVar.zzb).zzq(zzfilVar.zzaa);
            ((zzbxq) zzektVar.zzb).zzl(zzfilVar.zzV, zzfilVar.zzw.toString(), zzfixVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzeng(this, zzektVar, null), (zzbvz) zzektVar.zzc);
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzb("Remote exception loading a interstitial RTB ad", e2);
            throw new zzfjl(e2);
        }
    }
}
