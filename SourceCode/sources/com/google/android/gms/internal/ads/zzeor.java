package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeor implements zzekx {
    private final Context zza;
    private final Executor zzb;
    private final zzdvy zzc;

    public zzeor(Context context, Executor executor, zzdvy zzdvyVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzdvyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final /* bridge */ /* synthetic */ Object zza(zzfix zzfixVar, zzfil zzfilVar, final zzekt zzektVar) throws zzfjl, zzeom {
        zzdvu zze = this.zzc.zze(new zzdbc(zzfixVar, zzfilVar, zzektVar.zza), new zzdvv(new zzdoe() { // from class: com.google.android.gms.internal.ads.zzeoq
            @Override // com.google.android.gms.internal.ads.zzdoe
            public final void zza(boolean z, Context context, zzdfa zzdfaVar) {
                zzekt zzektVar2 = zzekt.this;
                try {
                    ((zzfkb) zzektVar2.zzb).zzv(z);
                    ((zzfkb) zzektVar2.zzb).zzz(context);
                } catch (zzfjl e2) {
                    throw new zzdod(e2.getCause());
                }
            }
        }));
        zze.zzd().zzj(new zzcvy((zzfkb) zzektVar.zzb), this.zzb);
        ((zzems) zzektVar.zzc).zzc(zze.zzm());
        return zze.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final void zzb(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl {
        try {
            zzfjg zzfjgVar = zzfixVar.zza.zza;
            if (zzfjgVar.zzo.zza == 3) {
                ((zzfkb) zzektVar.zzb).zzr(this.zza, zzfjgVar.zzd, zzfilVar.zzw.toString(), (zzbvz) zzektVar.zzc);
            } else {
                ((zzfkb) zzektVar.zzb).zzq(this.zza, zzfjgVar.zzd, zzfilVar.zzw.toString(), (zzbvz) zzektVar.zzc);
            }
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Fail to load ad from adapter ".concat(String.valueOf(zzektVar.zza)), e2);
        }
    }
}
