package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzend implements zzekx {
    private final Context zza;
    private final zzdnw zzb;
    private final zzchu zzc;
    private final Executor zzd;

    public zzend(Context context, zzchu zzchuVar, zzdnw zzdnwVar, Executor executor) {
        this.zza = context;
        this.zzc = zzchuVar;
        this.zzb = zzdnwVar;
        this.zzd = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final /* bridge */ /* synthetic */ Object zza(zzfix zzfixVar, zzfil zzfilVar, final zzekt zzektVar) throws zzfjl, zzeom {
        zzdmw zze = this.zzb.zze(new zzdbc(zzfixVar, zzfilVar, zzektVar.zza), new zzdmz(new zzdoe() { // from class: com.google.android.gms.internal.ads.zzenc
            @Override // com.google.android.gms.internal.ads.zzdoe
            public final void zza(boolean z, Context context, zzdfa zzdfaVar) {
                zzend.this.zzc(zzektVar, z, context, zzdfaVar);
            }
        }, null));
        zze.zzd().zzj(new zzcvy((zzfkb) zzektVar.zzb), this.zzd);
        ((zzems) zzektVar.zzc).zzc(zze.zzi());
        return zze.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final void zzb(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl {
        ((zzfkb) zzektVar.zzb).zzo(this.zza, zzfixVar.zza.zza.zzd, zzfilVar.zzw.toString(), com.google.android.gms.ads.internal.util.zzbu.zzl(zzfilVar.zzt), (zzbvz) zzektVar.zzc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(zzekt zzektVar, boolean z, Context context, zzdfa zzdfaVar) throws zzdod {
        try {
            ((zzfkb) zzektVar.zzb).zzv(z);
            if (this.zzc.zzc < ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzaB)).intValue()) {
                ((zzfkb) zzektVar.zzb).zzx();
            } else {
                ((zzfkb) zzektVar.zzb).zzy(context);
            }
        } catch (zzfjl e2) {
            com.google.android.gms.ads.internal.util.zze.zzi("Cannot show interstitial.");
            throw new zzdod(e2.getCause());
        }
    }
}
