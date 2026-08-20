package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzepn implements zzekx {
    private final Context zza;
    private final Executor zzb;
    private final zzdvy zzc;

    public zzepn(Context context, Executor executor, zzdvy zzdvyVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzdvyVar;
    }

    public static /* bridge */ /* synthetic */ Executor zzc(zzepn zzepnVar) {
        return zzepnVar.zzb;
    }

    public static final void zze(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) {
        try {
            ((zzfkb) zzektVar.zzb).zzk(zzfixVar.zza.zza.zzd, zzfilVar.zzw.toString());
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Fail to load ad from adapter ".concat(String.valueOf(zzektVar.zza)), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final /* bridge */ /* synthetic */ Object zza(zzfix zzfixVar, zzfil zzfilVar, final zzekt zzektVar) throws zzfjl, zzeom {
        zzdvu zze = this.zzc.zze(new zzdbc(zzfixVar, zzfilVar, zzektVar.zza), new zzdvv(new zzdoe() { // from class: com.google.android.gms.internal.ads.zzepj
            @Override // com.google.android.gms.internal.ads.zzdoe
            public final void zza(boolean z, Context context, zzdfa zzdfaVar) {
                zzekt zzektVar2 = zzekt.this;
                try {
                    ((zzfkb) zzektVar2.zzb).zzv(z);
                    ((zzfkb) zzektVar2.zzb).zzA();
                } catch (zzfjl e2) {
                    com.google.android.gms.ads.internal.util.zze.zzk("Cannot show rewarded video.", e2);
                    throw new zzdod(e2.getCause());
                }
            }
        }));
        zze.zzd().zzj(new zzcvy((zzfkb) zzektVar.zzb), this.zzb);
        zzdfu zze2 = zze.zze();
        zzdel zzb = zze.zzb();
        ((zzemt) zzektVar.zzc).zzc(new zzepm(this, zze.zza(), zzb, zze2, zze.zzg()));
        return zze.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final void zzb(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl {
        if (!((zzfkb) zzektVar.zzb).zzC()) {
            ((zzemt) zzektVar.zzc).zzd(new zzepl(this, zzfixVar, zzfilVar, zzektVar));
            ((zzfkb) zzektVar.zzb).zzh(this.zza, zzfixVar.zza.zza.zzd, null, (zzcdc) zzektVar.zzc, zzfilVar.zzw.toString());
            return;
        }
        zze(zzfixVar, zzfilVar, zzektVar);
    }
}
