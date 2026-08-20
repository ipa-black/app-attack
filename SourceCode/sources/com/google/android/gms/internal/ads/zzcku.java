package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcku {
    private final zzazw zza = new zzazw(true, 65536);
    private long zzb = 15000000;
    private long zzc = 30000000;
    private long zzd = 2500000;
    private long zze = 5000000;
    private int zzf;
    private boolean zzg;

    public final void zza() {
        zze(false);
    }

    public final void zzb() {
        zze(true);
    }

    public final void zzc() {
        zze(true);
    }

    public final void zzd(zzati[] zzatiVarArr, zzaza zzazaVar, zzazm zzazmVar) {
        this.zzf = 0;
        for (int i = 0; i < 2; i++) {
            if (zzazmVar.zza(i) != null) {
                this.zzf += zzbay.zzf(zzatiVarArr[i].zzc());
            }
        }
        this.zza.zzf(this.zzf);
    }

    final void zze(boolean z) {
        this.zzf = 0;
        this.zzg = false;
        if (z) {
            this.zza.zze();
        }
    }

    public final synchronized void zzf(int i) {
        this.zzd = i * 1000;
    }

    public final synchronized void zzg(int i) {
        this.zze = i * 1000;
    }

    public final synchronized void zzh(int i) {
        this.zzc = i * 1000;
    }

    public final synchronized void zzi(int i) {
        this.zzb = i * 1000;
    }

    public final synchronized boolean zzj(long j) {
        boolean z;
        z = true;
        boolean z2 = j > this.zzc ? false : j < this.zzb ? true : true;
        int zza = this.zza.zza();
        int i = this.zzf;
        if (!z2 && (!z2 || !this.zzg || zza >= i)) {
            z = false;
        }
        this.zzg = z;
        return z;
    }

    public final synchronized boolean zzk(long j, boolean z) {
        long j2 = z ? this.zze : this.zzd;
        return j2 <= 0 || j >= j2;
    }

    public final zzazw zzl() {
        return this.zza;
    }
}
