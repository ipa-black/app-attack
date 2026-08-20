package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfvu extends zzfwn {
    private String zza;
    private String zzb;

    @Override // com.google.android.gms.internal.ads.zzfwn
    public final zzfwn zza(String str) {
        this.zzb = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfwn
    public final zzfwn zzb(String str) {
        this.zza = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfwn
    public final zzfwo zzc() {
        return new zzfvw(this.zza, this.zzb, null);
    }
}
