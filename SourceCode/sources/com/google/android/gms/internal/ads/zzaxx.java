package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaxx implements zzayx {
    private final zzayx[] zza;

    public zzaxx(zzayx[] zzayxVarArr) {
        this.zza = zzayxVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzayx
    public final long zza() {
        long j = Long.MAX_VALUE;
        for (zzayx zzayxVar : this.zza) {
            long zza = zzayxVar.zza();
            if (zza != Long.MIN_VALUE) {
                j = Math.min(j, zza);
            }
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzayx
    public final boolean zzbj(long j) {
        zzayx[] zzayxVarArr;
        boolean z;
        boolean z2 = false;
        do {
            long zza = zza();
            if (zza == Long.MIN_VALUE) {
                break;
            }
            z = false;
            for (zzayx zzayxVar : this.zza) {
                if (zzayxVar.zza() == zza) {
                    z |= zzayxVar.zzbj(j);
                }
            }
            z2 |= z;
        } while (z);
        return z2;
    }
}
