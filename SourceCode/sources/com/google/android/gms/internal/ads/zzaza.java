package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaza {
    public static final zzaza zza = new zzaza(new zzayz[0]);
    public final int zzb;
    private final zzayz[] zzc;
    private int zzd;

    public zzaza(zzayz... zzayzVarArr) {
        this.zzc = zzayzVarArr;
        this.zzb = zzayzVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzaza zzazaVar = (zzaza) obj;
            if (this.zzb == zzazaVar.zzb && Arrays.equals(this.zzc, zzazaVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzd;
        if (i == 0) {
            int hashCode = Arrays.hashCode(this.zzc);
            this.zzd = hashCode;
            return hashCode;
        }
        return i;
    }

    public final int zza(zzayz zzayzVar) {
        for (int i = 0; i < this.zzb; i++) {
            if (this.zzc[i] == zzayzVar) {
                return i;
            }
        }
        return -1;
    }

    public final zzayz zzb(int i) {
        return this.zzc[i];
    }
}
