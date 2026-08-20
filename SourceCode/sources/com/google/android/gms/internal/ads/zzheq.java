package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzheq implements zzhep, zzhej {
    private static final zzheq zza = new zzheq(null);
    private final Object zzb;

    private zzheq(Object obj) {
        this.zzb = obj;
    }

    public static zzhep zza(Object obj) {
        zzhex.zza(obj, "instance cannot be null");
        return new zzheq(obj);
    }

    public static zzhep zzc(Object obj) {
        return obj == null ? zza : new zzheq(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final Object zzb() {
        return this.zzb;
    }
}
