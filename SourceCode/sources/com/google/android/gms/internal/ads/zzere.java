package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzere extends com.google.android.gms.ads.internal.client.zzbp {
    final zzfje zza;
    final zzdqp zzb;
    private final Context zzc;
    private final zzcpj zzd;
    private com.google.android.gms.ads.internal.client.zzbh zze;

    public zzere(zzcpj zzcpjVar, Context context, String str) {
        zzfje zzfjeVar = new zzfje();
        this.zza = zzfjeVar;
        this.zzb = new zzdqp();
        this.zzd = zzcpjVar;
        zzfjeVar.zzs(str);
        this.zzc = context;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final com.google.android.gms.ads.internal.client.zzbn zze() {
        zzdqr zzg = this.zzb.zzg();
        this.zza.zzB(zzg.zzi());
        this.zza.zzC(zzg.zzh());
        zzfje zzfjeVar = this.zza;
        if (zzfjeVar.zzg() == null) {
            zzfjeVar.zzr(com.google.android.gms.ads.internal.client.zzq.zzc());
        }
        return new zzerf(this.zzc, this.zzd, this.zza, zzg, this.zze);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzf(zzbnj zzbnjVar) {
        this.zzb.zza(zzbnjVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzg(zzbnm zzbnmVar) {
        this.zzb.zzb(zzbnmVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzh(String str, zzbns zzbnsVar, zzbnp zzbnpVar) {
        this.zzb.zzc(str, zzbnsVar, zzbnpVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzi(zzbsu zzbsuVar) {
        this.zzb.zzd(zzbsuVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzj(zzbnw zzbnwVar, com.google.android.gms.ads.internal.client.zzq zzqVar) {
        this.zzb.zze(zzbnwVar);
        this.zza.zzr(zzqVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzk(zzbnz zzbnzVar) {
        this.zzb.zzf(zzbnzVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzl(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        this.zze = zzbhVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzm(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.zza.zzq(adManagerAdViewOptions);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzn(zzbsl zzbslVar) {
        this.zza.zzv(zzbslVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzo(zzblz zzblzVar) {
        this.zza.zzA(zzblzVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzp(PublisherAdViewOptions publisherAdViewOptions) {
        this.zza.zzD(publisherAdViewOptions);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzq(com.google.android.gms.ads.internal.client.zzcf zzcfVar) {
        this.zza.zzQ(zzcfVar);
    }
}
