package com.google.android.gms.internal.ads;

import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzbcx {
    private final float zza;
    private final float zzb;
    private final float zzc;
    private final float zzd;
    private final int zze;

    public zzbcx(float f2, float f3, float f4, float f5, int i) {
        this.zza = f2;
        this.zzb = f3;
        this.zzc = f2 + f4;
        this.zzd = f3 + f5;
        this.zze = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float zza() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float zzb() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float zzc() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float zzd() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zze() {
        return this.zze;
    }
}
