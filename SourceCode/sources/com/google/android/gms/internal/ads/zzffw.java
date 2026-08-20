package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzffw {
    private final zzfks zza;
    private final zzddw zzb;
    private final Executor zzc;
    private zzffv zzd;

    public zzffw(zzfks zzfksVar, zzddw zzddwVar, Executor executor) {
        this.zza = zzfksVar;
        this.zzb = zzddwVar;
        this.zzc = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Deprecated
    public final zzflc zze() {
        zzfjg zzg = this.zzb.zzg();
        return this.zza.zzc(zzg.zzd, zzg.zzf, zzg.zzj);
    }

    public final zzgfb zzc() {
        zzgfb zzf;
        zzffv zzffvVar = this.zzd;
        if (zzffvVar == null) {
            if (!((Boolean) zzblf.zza.zze()).booleanValue()) {
                zzffv zzffvVar2 = new zzffv(null, zze(), null);
                this.zzd = zzffvVar2;
                zzf = zzger.zzi(zzffvVar2);
            } else {
                zzf = zzger.zzf(zzger.zzm(zzgei.zzv(this.zzb.zzb().zze(this.zza.zza())), new zzfft(this), this.zzc), zzefg.class, new zzffs(this), this.zzc);
            }
            return zzger.zzm(zzf, new zzfxt() { // from class: com.google.android.gms.internal.ads.zzffr
                @Override // com.google.android.gms.internal.ads.zzfxt
                public final Object apply(Object obj) {
                    return (zzffv) obj;
                }
            }, this.zzc);
        }
        return zzger.zzi(zzffvVar);
    }
}
