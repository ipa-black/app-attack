package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzavz {
    private final zzbar zza = new zzbar(8);
    private int zzb;

    private final long zzb(zzavf zzavfVar) throws IOException, InterruptedException {
        int i = 0;
        zzavfVar.zzg(this.zza.zza, 0, 1, false);
        int i2 = this.zza.zza[0] & 255;
        if (i2 != 0) {
            int i3 = 128;
            int i4 = 0;
            while ((i2 & i3) == 0) {
                i3 >>= 1;
                i4++;
            }
            int i5 = i2 & (~i3);
            zzavfVar.zzg(this.zza.zza, 1, i4, false);
            while (i < i4) {
                i++;
                i5 = (this.zza.zza[i] & 255) + (i5 << 8);
            }
            this.zzb += i4 + 1;
            return i5;
        }
        return Long.MIN_VALUE;
    }

    public final boolean zza(zzavf zzavfVar) throws IOException, InterruptedException {
        long zzb;
        int i;
        long zzc = zzavfVar.zzc();
        int i2 = (zzc > (-1L) ? 1 : (zzc == (-1L) ? 0 : -1));
        long j = 1024;
        if (i2 != 0 && zzc <= 1024) {
            j = zzc;
        }
        int i3 = (int) j;
        zzavfVar.zzg(this.zza.zza, 0, 4, false);
        long zzm = this.zza.zzm();
        this.zzb = 4;
        while (zzm != 440786851) {
            int i4 = this.zzb + 1;
            this.zzb = i4;
            if (i4 == i3) {
                return false;
            }
            zzavfVar.zzg(this.zza.zza, 0, 1, false);
            zzm = ((zzm << 8) & (-256)) | (this.zza.zza[0] & 255);
        }
        long zzb2 = zzb(zzavfVar);
        long j2 = this.zzb;
        if (zzb2 != Long.MIN_VALUE && (i2 == 0 || j2 + zzb2 < zzc)) {
            while (true) {
                int i5 = (this.zzb > (j2 + zzb2) ? 1 : (this.zzb == (j2 + zzb2) ? 0 : -1));
                if (i5 < 0) {
                    if (zzb(zzavfVar) == Long.MIN_VALUE || (zzb = zzb(zzavfVar)) < 0) {
                        return false;
                    }
                    if (i != 0) {
                        zzavfVar.zzf((int) zzb, false);
                        this.zzb = (int) (this.zzb + zzb);
                    }
                } else if (i5 == 0) {
                    return true;
                }
            }
        }
        return false;
    }
}
