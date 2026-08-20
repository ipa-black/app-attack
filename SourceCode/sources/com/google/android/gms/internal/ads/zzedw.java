package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzedw implements zzhep {
    private final zzhfc zza;

    public zzedw(zzhfc zzhfcVar) {
        this.zza = zzhfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    /* renamed from: zza */
    public final String zzb() {
        String packageName = ((zzcpp) this.zza).zza().getPackageName();
        zzhex.zzb(packageName);
        return packageName;
    }
}
