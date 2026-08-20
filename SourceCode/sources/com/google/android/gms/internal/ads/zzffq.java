package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzffq implements zzfga {
    private final zzfga zza;
    private zzddw zzb;

    public zzffq(zzfga zzfgaVar) {
        this.zza = zzfgaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfga
    /* renamed from: zza */
    public final synchronized zzddw zzd() {
        return this.zzb;
    }

    public final synchronized zzgfb zzb(zzfgb zzfgbVar, zzffz zzffzVar, zzddw zzddwVar) {
        this.zzb = zzddwVar;
        if (zzfgbVar.zza != null) {
            zzdbu zzb = this.zzb.zzb();
            return zzb.zzi(zzb.zzk(zzger.zzi(zzfgbVar.zza)));
        }
        return ((zzffp) this.zza).zzb(zzfgbVar, zzffzVar, zzddwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfga
    public final /* bridge */ /* synthetic */ zzgfb zzc(zzfgb zzfgbVar, zzffz zzffzVar, Object obj) {
        return zzb(zzfgbVar, zzffzVar, null);
    }
}
