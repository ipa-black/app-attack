package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzaze {
    protected final zzayz zza;
    protected final int[] zzb;
    private final zzatd[] zzc;
    private int zzd;

    public zzaze(zzayz zzayzVar, int... iArr) {
        zzayzVar.getClass();
        this.zza = zzayzVar;
        this.zzc = new zzatd[1];
        for (int i = 0; i <= 0; i++) {
            this.zzc[i] = zzayzVar.zzb(iArr[i]);
        }
        Arrays.sort(this.zzc, new zzazd(null));
        this.zzb = new int[1];
        for (int i2 = 0; i2 <= 0; i2++) {
            this.zzb[i2] = zzayzVar.zza(this.zzc[i2]);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzaze zzazeVar = (zzaze) obj;
            if (this.zza == zzazeVar.zza && Arrays.equals(this.zzb, zzazeVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzd;
        if (i == 0) {
            int identityHashCode = (System.identityHashCode(this.zza) * 31) + Arrays.hashCode(this.zzb);
            this.zzd = identityHashCode;
            return identityHashCode;
        }
        return i;
    }

    public final int zza(int i) {
        return this.zzb[0];
    }

    public final int zzb() {
        int length = this.zzb.length;
        return 1;
    }

    public final zzatd zzc(int i) {
        return this.zzc[i];
    }

    public final zzayz zzd() {
        return this.zza;
    }
}
