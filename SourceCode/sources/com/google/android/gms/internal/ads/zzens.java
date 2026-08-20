package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzens implements zzekx {
    private final Context zza;
    private final zzdos zzb;
    private final Executor zzc;

    public zzens(Context context, zzdos zzdosVar, Executor executor) {
        this.zza = context;
        this.zzb = zzdosVar;
        this.zzc = executor;
    }

    private static final boolean zzc(zzfix zzfixVar, int i) {
        return zzfixVar.zza.zza.zzg.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final /* bridge */ /* synthetic */ Object zza(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl, zzeom {
        zzdqg zzac;
        zzbwe zzD = ((zzfkb) zzektVar.zzb).zzD();
        zzbwf zzE = ((zzfkb) zzektVar.zzb).zzE();
        zzbwi zzd = ((zzfkb) zzektVar.zzb).zzd();
        if (zzd == null || !zzc(zzfixVar, 6)) {
            if (zzD == null || !zzc(zzfixVar, 6)) {
                if (zzD == null || !zzc(zzfixVar, 2)) {
                    if (zzE == null || !zzc(zzfixVar, 6)) {
                        if (zzE == null || !zzc(zzfixVar, 1)) {
                            throw new zzeom(1, "No native ad mappers");
                        }
                        zzac = zzdqg.zzac(zzE);
                    } else {
                        zzac = zzdqg.zzae(zzE);
                    }
                } else {
                    zzac = zzdqg.zzab(zzD);
                }
            } else {
                zzac = zzdqg.zzad(zzD);
            }
        } else {
            zzac = zzdqg.zzs(zzd);
        }
        if (!zzfixVar.zza.zza.zzg.contains(Integer.toString(zzac.zzc()))) {
            throw new zzeom(1, "No corresponding native ad listener");
        }
        zzdqi zze = this.zzb.zze(new zzdbc(zzfixVar, zzfilVar, zzektVar.zza), new zzdqs(zzac), new zzdsh(zzE, zzD, zzd, null));
        ((zzems) zzektVar.zzc).zzc(zze.zzi());
        zze.zzd().zzj(new zzcvy((zzfkb) zzektVar.zzb), this.zzc);
        return zze.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final void zzb(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl {
        zzfjg zzfjgVar = zzfixVar.zza.zza;
        ((zzfkb) zzektVar.zzb).zzp(this.zza, zzfixVar.zza.zza.zzd, zzfilVar.zzw.toString(), com.google.android.gms.ads.internal.util.zzbu.zzl(zzfilVar.zzt), (zzbvz) zzektVar.zzc, zzfjgVar.zzi, zzfjgVar.zzg);
    }
}
