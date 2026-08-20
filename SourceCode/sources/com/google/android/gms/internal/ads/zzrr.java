package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzrr implements zzua {
    protected final zzua[] zza;

    public zzrr(zzua[] zzuaVarArr) {
        this.zza = zzuaVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzua
    public final long zzb() {
        long j = Long.MAX_VALUE;
        for (zzua zzuaVar : this.zza) {
            long zzb = zzuaVar.zzb();
            if (zzb != Long.MIN_VALUE) {
                j = Math.min(j, zzb);
            }
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzua
    public final long zzc() {
        long j = Long.MAX_VALUE;
        for (zzua zzuaVar : this.zza) {
            long zzc = zzuaVar.zzc();
            if (zzc != Long.MIN_VALUE) {
                j = Math.min(j, zzc);
            }
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzua
    public final void zzm(long j) {
        for (zzua zzuaVar : this.zza) {
            zzuaVar.zzm(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzua
    public final boolean zzo(long j) {
        zzua[] zzuaVarArr;
        boolean z;
        boolean z2 = false;
        do {
            long zzc = zzc();
            if (zzc == Long.MIN_VALUE) {
                break;
            }
            z = false;
            for (zzua zzuaVar : this.zza) {
                long zzc2 = zzuaVar.zzc();
                boolean z3 = zzc2 != Long.MIN_VALUE && zzc2 <= j;
                if (zzc2 == zzc || z3) {
                    z |= zzuaVar.zzo(j);
                }
            }
            z2 |= z;
        } while (z);
        return z2;
    }

    @Override // com.google.android.gms.internal.ads.zzua
    public final boolean zzp() {
        for (zzua zzuaVar : this.zza) {
            if (zzuaVar.zzp()) {
                return true;
            }
        }
        return false;
    }
}
