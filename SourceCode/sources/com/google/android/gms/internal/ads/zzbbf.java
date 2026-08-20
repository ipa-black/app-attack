package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbbf {
    public final List zza;
    public final int zzb;

    private zzbbf(List list, int i) {
        this.zza = list;
        this.zzb = i;
    }

    public static zzbbf zza(zzbar zzbarVar) throws zzatg {
        try {
            zzbarVar.zzw(21);
            int zzg = zzbarVar.zzg() & 3;
            int zzg2 = zzbarVar.zzg();
            int zzc = zzbarVar.zzc();
            int i = 0;
            for (int i2 = 0; i2 < zzg2; i2++) {
                zzbarVar.zzw(1);
                int zzj = zzbarVar.zzj();
                for (int i3 = 0; i3 < zzj; i3++) {
                    int zzj2 = zzbarVar.zzj();
                    i += zzj2 + 4;
                    zzbarVar.zzw(zzj2);
                }
            }
            zzbarVar.zzv(zzc);
            byte[] bArr = new byte[i];
            int i4 = 0;
            for (int i5 = 0; i5 < zzg2; i5++) {
                zzbarVar.zzw(1);
                int zzj3 = zzbarVar.zzj();
                for (int i6 = 0; i6 < zzj3; i6++) {
                    int zzj4 = zzbarVar.zzj();
                    System.arraycopy(zzbap.zza, 0, bArr, i4, 4);
                    int i7 = i4 + 4;
                    System.arraycopy(zzbarVar.zza, zzbarVar.zzc(), bArr, i7, zzj4);
                    i4 = i7 + zzj4;
                    zzbarVar.zzw(zzj4);
                }
            }
            return new zzbbf(i == 0 ? null : Collections.singletonList(bArr), zzg + 1);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new zzatg("Error parsing HEVC config", e2);
        }
    }
}
