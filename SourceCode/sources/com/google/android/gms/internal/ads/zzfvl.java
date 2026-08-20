package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfvl extends zzfvx {
    private String zza;
    private String zzb;

    @Override // com.google.android.gms.internal.ads.zzfvx
    public final zzfvx zza(String str) {
        this.zzb = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfvx
    public final zzfvx zzb(String str) {
        this.zza = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfvx
    public final zzfvy zzc() {
        return new zzfvn(this.zza, this.zzb, null);
    }
}
