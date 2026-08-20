package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeqd implements zzekq {
    private final Context zza;
    private final zzczi zzb;
    private final zzbke zzc;
    private final zzgfc zzd;
    private final zzfnj zze;

    public zzeqd(Context context, zzczi zzcziVar, zzfnj zzfnjVar, zzgfc zzgfcVar, zzbke zzbkeVar) {
        this.zza = context;
        this.zzb = zzcziVar;
        this.zze = zzfnjVar;
        this.zzd = zzgfcVar;
        this.zzc = zzbkeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final zzgfb zza(zzfix zzfixVar, zzfil zzfilVar) {
        zzcym zza = this.zzb.zza(new zzdbc(zzfixVar, zzfilVar, null), new zzeqb(this, new View(this.zza), null, new zzdal() { // from class: com.google.android.gms.internal.ads.zzepz
            @Override // com.google.android.gms.internal.ads.zzdal
            public final com.google.android.gms.ads.internal.client.zzdq zza() {
                return null;
            }
        }, (zzfim) zzfilVar.zzv.get(0)));
        zzeqc zzk = zza.zzk();
        zzfiq zzfiqVar = zzfilVar.zzt;
        final zzbjz zzbjzVar = new zzbjz(zzk, zzfiqVar.zzb, zzfiqVar.zza);
        zzfnj zzfnjVar = this.zze;
        return zzfmt.zzd(new zzfmn() { // from class: com.google.android.gms.internal.ads.zzeqa
            @Override // com.google.android.gms.internal.ads.zzfmn
            public final void zza() {
                zzeqd.this.zzc(zzbjzVar);
            }
        }, this.zzd, zzfnd.CUSTOM_RENDER_SYN, zzfnjVar).zzb(zzfnd.CUSTOM_RENDER_ACK).zzd(zzger.zzi(zza.zza())).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final boolean zzb(zzfix zzfixVar, zzfil zzfilVar) {
        zzfiq zzfiqVar;
        return (this.zzc == null || (zzfiqVar = zzfilVar.zzt) == null || zzfiqVar.zza == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(zzbjz zzbjzVar) throws Exception {
        this.zzc.zze(zzbjzVar);
    }
}
