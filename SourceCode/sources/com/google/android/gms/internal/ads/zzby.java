package com.google.android.gms.internal.ads;

import com.ironsource.mediationsdk.logger.IronSourceError;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzby {
    public static final zzby zza = new zzby(1.0f, 1.0f);
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zzbx
    };
    public final float zzc;
    public final float zzd;
    private final int zze;

    public zzby(float f2, float f3) {
        zzdd.zzd(f2 > 0.0f);
        zzdd.zzd(f3 > 0.0f);
        this.zzc = f2;
        this.zzd = f3;
        this.zze = Math.round(f2 * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzby zzbyVar = (zzby) obj;
            if (this.zzc == zzbyVar.zzc && this.zzd == zzbyVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.zzc) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + Float.floatToRawIntBits(this.zzd);
    }

    public final String toString() {
        return zzen.zzI("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.zzc), Float.valueOf(this.zzd));
    }

    public final long zza(long j) {
        return j * this.zze;
    }
}
