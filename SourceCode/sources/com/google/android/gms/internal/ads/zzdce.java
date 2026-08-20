package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdce implements zzdgb, com.google.android.gms.ads.internal.client.zza, zzdhi, zzdfh, zzden, zzdju {
    private final Clock zza;
    private final zzcgq zzb;

    public zzdce(Clock clock, zzcgq zzcgqVar) {
        this.zza = clock;
        this.zzb = zzcgqVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        this.zzb.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzb(zzfix zzfixVar) {
        this.zzb.zzk(this.zza.elapsedRealtime());
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzbG(zzccb zzccbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbw() {
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbx() {
    }

    public final String zzc() {
        return this.zzb.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzdju
    public final void zzd() {
    }

    @Override // com.google.android.gms.internal.ads.zzdju
    public final void zze(zzbfr zzbfrVar) {
        this.zzb.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzdju
    public final void zzf(zzbfr zzbfrVar) {
    }

    public final void zzg(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        this.zzb.zzj(zzlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdju
    public final void zzh(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzdju
    public final void zzi(zzbfr zzbfrVar) {
        this.zzb.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzj() {
        this.zzb.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzdju
    public final void zzk(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final void zzl() {
        this.zzb.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzm() {
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void zzn() {
        this.zzb.zzh(true);
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzo() {
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzp(zzccr zzccrVar, String str, String str2) {
    }
}
