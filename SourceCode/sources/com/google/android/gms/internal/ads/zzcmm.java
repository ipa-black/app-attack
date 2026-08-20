package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.DefaultLoadControl;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcmm implements zzjf {
    private final zzwi zza = new zzwi(true, 65536);
    private long zzb = 15000000;
    private long zzc = 30000000;
    private long zzd = 2500000;
    private long zze = 5000000;
    private int zzf;
    private boolean zzg;

    @Override // com.google.android.gms.internal.ads.zzjf
    public final long zza() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzjf
    public final void zzb() {
        zzj(false);
    }

    @Override // com.google.android.gms.internal.ads.zzjf
    public final void zzc() {
        zzj(true);
    }

    @Override // com.google.android.gms.internal.ads.zzjf
    public final void zzd() {
        zzj(true);
    }

    @Override // com.google.android.gms.internal.ads.zzjf
    public final void zze(zzjy[] zzjyVarArr, zzug zzugVar, zzvt[] zzvtVarArr) {
        int i = 0;
        this.zzf = 0;
        while (true) {
            int length = zzjyVarArr.length;
            if (i < 2) {
                if (zzvtVarArr[i] != null) {
                    this.zzf += zzjyVarArr[i].zzb() != 1 ? DefaultLoadControl.DEFAULT_VIDEO_BUFFER_SIZE : 13107200;
                }
                i++;
            } else {
                this.zza.zzf(this.zzf);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjf
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzjf
    public final boolean zzg(long j, long j2, float f2) {
        boolean z = true;
        boolean z2 = j2 > this.zzc ? false : j2 < this.zzb ? true : true;
        int zza = this.zza.zza();
        int i = this.zzf;
        if (!z2 && (!z2 || !this.zzg || zza >= i)) {
            z = false;
        }
        this.zzg = z;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzjf
    public final boolean zzh(long j, float f2, boolean z, long j2) {
        long j3 = z ? this.zze : this.zzd;
        return j3 <= 0 || j >= j3;
    }

    @Override // com.google.android.gms.internal.ads.zzjf
    public final zzwi zzi() {
        return this.zza;
    }

    final void zzj(boolean z) {
        this.zzf = 0;
        this.zzg = false;
        if (z) {
            this.zza.zze();
        }
    }

    public final synchronized void zzk(int i) {
        this.zzd = i * 1000;
    }

    public final synchronized void zzl(int i) {
        this.zze = i * 1000;
    }

    public final synchronized void zzm(int i) {
        this.zzc = i * 1000;
    }

    public final synchronized void zzn(int i) {
        this.zzb = i * 1000;
    }
}
