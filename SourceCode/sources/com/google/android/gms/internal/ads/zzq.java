package com.google.android.gms.internal.ads;

import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
import org.checkerframework.dataflow.qual.Pure;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzq {
    public static final zzq zza = new zzq(1, 2, 3, null);
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zzp
    };
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final byte[] zzf;
    private int zzg;

    public zzq(int i, int i2, int i3, byte[] bArr) {
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = bArr;
    }

    @Pure
    public static int zza(int i) {
        if (i != 1) {
            if (i != 9) {
                return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
            }
            return 6;
        }
        return 1;
    }

    @Pure
    public static int zzb(int i) {
        if (i != 1) {
            if (i != 16) {
                if (i != 18) {
                    return (i == 6 || i == 7) ? 3 : -1;
                }
                return 7;
            }
            return 6;
        }
        return 3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzq zzqVar = (zzq) obj;
            if (this.zzc == zzqVar.zzc && this.zzd == zzqVar.zzd && this.zze == zzqVar.zze && Arrays.equals(this.zzf, zzqVar.zzf)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzg;
        if (i == 0) {
            int hashCode = ((((((this.zzc + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.zzd) * 31) + this.zze) * 31) + Arrays.hashCode(this.zzf);
            this.zzg = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        int i = this.zzc;
        int i2 = this.zzd;
        int i3 = this.zze;
        boolean z = this.zzf != null;
        return "ColorInfo(" + i + ", " + i2 + ", " + i3 + ", " + z + ")";
    }
}
