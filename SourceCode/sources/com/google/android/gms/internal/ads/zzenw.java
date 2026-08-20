package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzenw implements zzekx {
    private final Context zza;
    private final zzdos zzb;
    private zzbwi zzc;
    private final zzchu zzd;

    public zzenw(Context context, zzdos zzdosVar, zzchu zzchuVar) {
        this.zza = context;
        this.zzb = zzdosVar;
        this.zzd = zzchuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final /* bridge */ /* synthetic */ Object zza(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl, zzeom {
        if (!zzfixVar.zza.zza.zzg.contains(Integer.toString(6))) {
            throw new zzeom(2, "Unified must be used for RTB.");
        }
        zzdqg zzs = zzdqg.zzs(this.zzc);
        if (!zzfixVar.zza.zza.zzg.contains(Integer.toString(zzs.zzc()))) {
            throw new zzeom(1, "No corresponding native ad listener");
        }
        zzdqi zze = this.zzb.zze(new zzdbc(zzfixVar, zzfilVar, zzektVar.zza), new zzdqs(zzs), new zzdsh(null, null, this.zzc, null));
        ((zzems) zzektVar.zzc).zzc(zze.zzh());
        return zze.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final void zzb(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl {
        try {
            ((zzbxq) zzektVar.zzb).zzq(zzfilVar.zzaa);
            if (this.zzd.zzc < ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbx)).intValue()) {
                ((zzbxq) zzektVar.zzb).zzm(zzfilVar.zzV, zzfilVar.zzw.toString(), zzfixVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzenv(this, zzektVar, null), (zzbvz) zzektVar.zzc);
            } else {
                ((zzbxq) zzektVar.zzb).zzn(zzfilVar.zzV, zzfilVar.zzw.toString(), zzfixVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzenv(this, zzektVar, null), (zzbvz) zzektVar.zzc, zzfixVar.zza.zza.zzi);
            }
        } catch (RemoteException e2) {
            throw new zzfjl(e2);
        }
    }
}
