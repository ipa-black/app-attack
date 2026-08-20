package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzffm implements zzfga {
    private final zzfks zza;
    private final Executor zzb;
    private final zzgen zzc = new zzffk(this);

    public zzffm(zzfks zzfksVar, Executor executor) {
        this.zza = zzfksVar;
        this.zzb = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zza(zzddw zzddwVar, zzffv zzffvVar) throws Exception {
        zzflc zzflcVar = zzffvVar.zzb;
        zzccb zzccbVar = zzffvVar.zza;
        zzflb zzb = zzflcVar != null ? this.zza.zzb(zzflcVar) : null;
        if (zzflcVar == null) {
            return zzger.zzi(null);
        }
        if (zzb != null && zzccbVar != null) {
            zzger.zzr(zzddwVar.zzb().zzh(zzccbVar), this.zzc, this.zzb);
        }
        return zzger.zzi(new zzffl(zzflcVar, zzccbVar, zzb));
    }

    public final zzgfb zzb(zzfgb zzfgbVar, zzffz zzffzVar, final zzddw zzddwVar) {
        return zzger.zzf(zzger.zzn(zzgei.zzv(new zzffw(this.zza, zzddwVar, this.zzb).zzc()), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzffi
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzffm.this.zza(zzddwVar, (zzffv) obj);
            }
        }, this.zzb), Exception.class, new zzffj(this), this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzfga
    public final /* bridge */ /* synthetic */ zzgfb zzc(zzfgb zzfgbVar, zzffz zzffzVar, Object obj) {
        return zzb(zzfgbVar, zzffzVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfga
    public final /* bridge */ /* synthetic */ Object zzd() {
        return null;
    }
}
