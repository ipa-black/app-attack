package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdqd {
    private zzbmi zza;

    public zzdqd(zzdpr zzdprVar) {
        this.zza = zzdprVar;
    }

    public final synchronized zzbmi zza() {
        return this.zza;
    }

    public final synchronized void zzb(zzbmi zzbmiVar) {
        this.zza = zzbmiVar;
    }
}
