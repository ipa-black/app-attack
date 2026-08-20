package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzayr {
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private zzatd zzq;
    private int zza = 1000;
    private int[] zzb = new int[1000];
    private long[] zzc = new long[1000];
    private long[] zzf = new long[1000];
    private int[] zze = new int[1000];
    private int[] zzd = new int[1000];
    private zzavo[] zzg = new zzavo[1000];
    private zzatd[] zzh = new zzatd[1000];
    private long zzm = Long.MIN_VALUE;
    private long zzn = Long.MIN_VALUE;
    private boolean zzp = true;
    private boolean zzo = true;

    public final int zza() {
        return this.zzj + this.zzi;
    }

    public final synchronized int zzb(zzate zzateVar, zzauy zzauyVar, boolean z, boolean z2, zzatd zzatdVar, zzayq zzayqVar) {
        if (!zzl()) {
            if (z2) {
                zzauyVar.zzc(4);
                return -4;
            }
            zzatd zzatdVar2 = this.zzq;
            if (zzatdVar2 == null || (!z && zzatdVar2 == zzatdVar)) {
                return -3;
            }
            zzateVar.zza = zzatdVar2;
            return -5;
        }
        if (!z) {
            zzatd[] zzatdVarArr = this.zzh;
            int i = this.zzk;
            if (zzatdVarArr[i] == zzatdVar) {
                if (zzauyVar.zzb != null) {
                    zzauyVar.zzc = this.zzf[i];
                    zzauyVar.zzc(this.zze[i]);
                    int[] iArr = this.zzd;
                    int i2 = this.zzk;
                    zzayqVar.zza = iArr[i2];
                    zzayqVar.zzb = this.zzc[i2];
                    zzayqVar.zzd = this.zzg[i2];
                    this.zzm = Math.max(this.zzm, zzauyVar.zzc);
                    int i3 = this.zzi - 1;
                    this.zzi = i3;
                    int i4 = this.zzk + 1;
                    this.zzk = i4;
                    this.zzj++;
                    if (i4 == this.zza) {
                        i4 = 0;
                        this.zzk = 0;
                    }
                    zzayqVar.zzc = i3 > 0 ? this.zzc[i4] : zzayqVar.zzb + zzayqVar.zza;
                    return -4;
                }
                return -3;
            }
        }
        zzateVar.zza = this.zzh[this.zzk];
        return -5;
    }

    public final synchronized long zzc() {
        return Math.max(this.zzm, this.zzn);
    }

    public final synchronized long zzd() {
        if (zzl()) {
            int i = this.zzk;
            int i2 = this.zzi;
            int i3 = i + i2;
            int i4 = this.zza;
            int i5 = (i3 - 1) % i4;
            this.zzk = i3 % i4;
            this.zzj += i2;
            this.zzi = 0;
            return this.zzc[i5] + this.zzd[i5];
        }
        return -1L;
    }

    public final synchronized long zze(long j, boolean z) {
        if (zzl()) {
            long[] jArr = this.zzf;
            int i = this.zzk;
            if (j >= jArr[i]) {
                int i2 = 0;
                if (j <= this.zzn || z) {
                    int i3 = -1;
                    while (i != this.zzl && this.zzf[i] <= j) {
                        if (1 == (this.zze[i] & 1)) {
                            i3 = i2;
                        }
                        i = (i + 1) % this.zza;
                        i2++;
                    }
                    if (i3 == -1) {
                        return -1L;
                    }
                    int i4 = (this.zzk + i3) % this.zza;
                    this.zzk = i4;
                    this.zzj += i3;
                    this.zzi -= i3;
                    return this.zzc[i4];
                }
                return -1L;
            }
        }
        return -1L;
    }

    public final synchronized zzatd zzf() {
        if (this.zzp) {
            return null;
        }
        return this.zzq;
    }

    public final void zzg() {
        this.zzj = 0;
        this.zzk = 0;
        this.zzl = 0;
        this.zzi = 0;
        this.zzo = true;
    }

    public final synchronized void zzh(long j, int i, long j2, int i2, zzavo zzavoVar) {
        if (this.zzo) {
            if ((i & 1) == 0) {
                return;
            }
            this.zzo = false;
        }
        zzbaj.zze(!this.zzp);
        zzi(j);
        long[] jArr = this.zzf;
        int i3 = this.zzl;
        jArr[i3] = j;
        long[] jArr2 = this.zzc;
        jArr2[i3] = j2;
        this.zzd[i3] = i2;
        this.zze[i3] = i;
        this.zzg[i3] = zzavoVar;
        this.zzh[i3] = this.zzq;
        this.zzb[i3] = 0;
        int i4 = this.zzi + 1;
        this.zzi = i4;
        int i5 = this.zza;
        if (i4 != i5) {
            int i6 = i3 + 1;
            this.zzl = i6;
            if (i6 == i5) {
                this.zzl = 0;
                return;
            }
            return;
        }
        int i7 = i5 + 1000;
        int[] iArr = new int[i7];
        long[] jArr3 = new long[i7];
        long[] jArr4 = new long[i7];
        int[] iArr2 = new int[i7];
        int[] iArr3 = new int[i7];
        zzavo[] zzavoVarArr = new zzavo[i7];
        zzatd[] zzatdVarArr = new zzatd[i7];
        int i8 = this.zzk;
        int i9 = i5 - i8;
        System.arraycopy(jArr2, i8, jArr3, 0, i9);
        System.arraycopy(this.zzf, this.zzk, jArr4, 0, i9);
        System.arraycopy(this.zze, this.zzk, iArr2, 0, i9);
        System.arraycopy(this.zzd, this.zzk, iArr3, 0, i9);
        System.arraycopy(this.zzg, this.zzk, zzavoVarArr, 0, i9);
        System.arraycopy(this.zzh, this.zzk, zzatdVarArr, 0, i9);
        System.arraycopy(this.zzb, this.zzk, iArr, 0, i9);
        int i10 = this.zzk;
        System.arraycopy(this.zzc, 0, jArr3, i9, i10);
        System.arraycopy(this.zzf, 0, jArr4, i9, i10);
        System.arraycopy(this.zze, 0, iArr2, i9, i10);
        System.arraycopy(this.zzd, 0, iArr3, i9, i10);
        System.arraycopy(this.zzg, 0, zzavoVarArr, i9, i10);
        System.arraycopy(this.zzh, 0, zzatdVarArr, i9, i10);
        System.arraycopy(this.zzb, 0, iArr, i9, i10);
        this.zzc = jArr3;
        this.zzf = jArr4;
        this.zze = iArr2;
        this.zzd = iArr3;
        this.zzg = zzavoVarArr;
        this.zzh = zzatdVarArr;
        this.zzb = iArr;
        this.zzk = 0;
        int i11 = this.zza;
        this.zzl = i11;
        this.zzi = i11;
        this.zza = i7;
    }

    public final synchronized void zzi(long j) {
        this.zzn = Math.max(this.zzn, j);
    }

    public final void zzj() {
        this.zzm = Long.MIN_VALUE;
        this.zzn = Long.MIN_VALUE;
    }

    public final synchronized boolean zzk(zzatd zzatdVar) {
        if (zzatdVar == null) {
            this.zzp = true;
            return false;
        }
        this.zzp = false;
        if (zzbay.zzo(zzatdVar, this.zzq)) {
            return false;
        }
        this.zzq = zzatdVar;
        return true;
    }

    public final synchronized boolean zzl() {
        return this.zzi != 0;
    }
}
