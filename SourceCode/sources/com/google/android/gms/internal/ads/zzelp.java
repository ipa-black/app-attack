package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzelp implements zzekx {
    private final Context zza;
    private final zzcxy zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzelp(Context context, zzcxy zzcxyVar) {
        this.zza = context;
        this.zzb = zzcxyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final /* bridge */ /* synthetic */ Object zza(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl, zzeom {
        zzenb zzenbVar = new zzenb(zzfilVar, (zzbxq) zzektVar.zzb, AdFormat.APP_OPEN_AD);
        zzcxv zza = this.zzb.zza(new zzdbc(zzfixVar, zzfilVar, zzektVar.zza), new zzdmz(zzenbVar, null), new zzcxw(zzfilVar.zzab));
        zzenbVar.zzb(zza.zzc());
        ((zzems) zzektVar.zzc).zzc(zza.zzh());
        return zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final void zzb(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl {
        try {
            ((zzbxq) zzektVar.zzb).zzq(zzfilVar.zzaa);
            ((zzbxq) zzektVar.zzb).zzi(zzfilVar.zzV, zzfilVar.zzw.toString(), zzfixVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzelo(zzektVar, null), (zzbvz) zzektVar.zzc);
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzb("Remote exception loading an app open RTB ad", e2);
            throw new zzfjl(e2);
        }
    }
}
