package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcco extends zzccq {
    private final String zza;
    private final int zzb;

    public zzcco(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzcco)) {
            zzcco zzccoVar = (zzcco) obj;
            if (Objects.equal(this.zza, zzccoVar.zza) && Objects.equal(Integer.valueOf(this.zzb), Integer.valueOf(zzccoVar.zzb))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzccr
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzccr
    public final String zzc() {
        return this.zza;
    }
}
