package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdnt implements com.google.android.gms.ads.internal.overlay.zzo {
    private final zzdgt zza;
    private final zzdls zzb;

    public zzdnt(zzdgt zzdgtVar, zzdls zzdlsVar) {
        this.zza = zzdgtVar;
        this.zzb = zzdlsVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        this.zza.zzb();
        this.zzb.zzb();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbE() {
        this.zza.zzbE();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbM() {
        this.zza.zzbM();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs() {
        this.zza.zzbs();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
        this.zza.zze();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(int i) {
        this.zza.zzf(i);
        this.zzb.zza();
    }
}
