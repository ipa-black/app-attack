package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzd {
    private final zzc[] zzf;
    public static final zzd zza = new zzd(null, new zzc[0], 0, C.TIME_UNSET, 0);
    private static final zzc zze = new zzc(0).zzb(0);
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zza
    };
    public final long zzd = 0;
    public final int zzc = 0;

    private zzd(Object obj, zzc[] zzcVarArr, long j, long j2, int i) {
        this.zzf = zzcVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzd zzdVar = (zzd) obj;
            if (zzen.zzT(null, null) && Arrays.equals(this.zzf, zzdVar.zzf)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) C.TIME_UNSET) * 961) + Arrays.hashCode(this.zzf);
    }

    public final String toString() {
        return "AdPlaybackState(adsId=null, adResumePositionUs=0, adGroups=[])";
    }

    public final zzc zza(int i) {
        return i < 0 ? zze : this.zzf[i];
    }
}
