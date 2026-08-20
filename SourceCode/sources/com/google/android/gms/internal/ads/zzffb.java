package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzffb implements zzfga {
    private zzddw zza;
    private final Executor zzb = zzgfi.zzb();

    public final zzddw zza() {
        return this.zza;
    }

    public final zzgfb zzb(zzfgb zzfgbVar, zzffz zzffzVar, zzddw zzddwVar) {
        zzddv zza = zzffzVar.zza(zzfgbVar.zzb);
        zza.zzb(new zzfgg(true));
        zzddw zzddwVar2 = (zzddw) zza.zzh();
        this.zza = zzddwVar2;
        final zzdbu zzb = zzddwVar2.zzb();
        final zzflb zzflbVar = new zzflb();
        return zzger.zzm(zzger.zzn(zzgei.zzv(zzb.zzj()), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzfez
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                zzflb zzflbVar2 = zzflbVar;
                zzdbu zzdbuVar = zzb;
                zzfix zzfixVar = (zzfix) obj;
                zzflbVar2.zzb = zzfixVar;
                Iterator it = zzfixVar.zzb.zza.iterator();
                boolean z = false;
                loop0: while (true) {
                    if (it.hasNext()) {
                        for (String str : ((zzfil) it.next()).zza) {
                            if (!str.contains("FirstPartyRenderer")) {
                                break loop0;
                            }
                            z = true;
                        }
                    } else if (z) {
                        return zzdbuVar.zzi(zzger.zzi(zzfixVar));
                    }
                }
                return zzger.zzi(null);
            }
        }, this.zzb), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzffa
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                zzflb zzflbVar2 = zzflb.this;
                zzflbVar2.zzc = (zzdan) obj;
                return zzflbVar2;
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzfga
    public final /* bridge */ /* synthetic */ zzgfb zzc(zzfgb zzfgbVar, zzffz zzffzVar, Object obj) {
        return zzb(zzfgbVar, zzffzVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfga
    public final /* synthetic */ Object zzd() {
        return this.zza;
    }
}
