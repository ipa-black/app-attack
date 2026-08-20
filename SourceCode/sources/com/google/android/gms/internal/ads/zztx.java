package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zztx implements zzaaq {
    private boolean zzA;
    private boolean zzB;
    private zzpp zzC;
    private final zztr zza;
    private final zzpo zzd;
    private final zzpi zze;
    private zztw zzf;
    private zzaf zzg;
    private int zzo;
    private int zzp;
    private int zzq;
    private int zzr;
    private boolean zzv;
    private zzaf zzy;
    private zzaf zzz;
    private final zztt zzb = new zztt();
    private int zzh = 1000;
    private int[] zzi = new int[1000];
    private long[] zzj = new long[1000];
    private long[] zzm = new long[1000];
    private int[] zzl = new int[1000];
    private int[] zzk = new int[1000];
    private zzaap[] zzn = new zzaap[1000];
    private final zzue zzc = new zzue(new zzdh() { // from class: com.google.android.gms.internal.ads.zzts
    });
    private long zzs = Long.MIN_VALUE;
    private long zzt = Long.MIN_VALUE;
    private long zzu = Long.MIN_VALUE;
    private boolean zzx = true;
    private boolean zzw = true;

    /* JADX INFO: Access modifiers changed from: protected */
    public zztx(zzwi zzwiVar, zzpo zzpoVar, zzpi zzpiVar, byte[] bArr) {
        this.zzd = zzpoVar;
        this.zze = zzpiVar;
        this.zza = new zztr(zzwiVar, null);
    }

    private final int zzA(int i) {
        int i2 = this.zzq + i;
        int i3 = this.zzh;
        return i2 < i3 ? i2 : i2 - i3;
    }

    private final synchronized int zzB(zzje zzjeVar, zzgi zzgiVar, boolean z, boolean z2, zztt zzttVar) {
        zzgiVar.zzc = false;
        if (!zzJ()) {
            if (!z2 && !this.zzv) {
                zzaf zzafVar = this.zzz;
                if (zzafVar == null || (!z && zzafVar == this.zzg)) {
                    return -3;
                }
                zzG(zzafVar, zzjeVar);
                return -5;
            }
            zzgiVar.zzc(4);
            return -4;
        }
        zzaf zzafVar2 = ((zztv) this.zzc.zza(this.zzp + this.zzr)).zza;
        if (!z && zzafVar2 == this.zzg) {
            int zzA = zzA(this.zzr);
            if (!zzK(zzA)) {
                zzgiVar.zzc = true;
                return -3;
            }
            zzgiVar.zzc(this.zzl[zzA]);
            long j = this.zzm[zzA];
            zzgiVar.zzd = j;
            if (j < this.zzs) {
                zzgiVar.zza(Integer.MIN_VALUE);
            }
            zzttVar.zza = this.zzk[zzA];
            zzttVar.zzb = this.zzj[zzA];
            zzttVar.zzc = this.zzn[zzA];
            return -4;
        }
        zzG(zzafVar2, zzjeVar);
        return -5;
    }

    private final synchronized long zzC(long j, boolean z, boolean z2) {
        int i;
        int i2 = this.zzo;
        if (i2 != 0) {
            long[] jArr = this.zzm;
            int i3 = this.zzq;
            if (j >= jArr[i3]) {
                if (z2 && (i = this.zzr) != i2) {
                    i2 = i + 1;
                }
                int zzz = zzz(i3, i2, j, false);
                if (zzz == -1) {
                    return -1L;
                }
                return zzE(zzz);
            }
        }
        return -1L;
    }

    private final synchronized long zzD() {
        int i = this.zzo;
        if (i == 0) {
            return -1L;
        }
        return zzE(i);
    }

    private final synchronized void zzF(long j, int i, long j2, int i2, zzaap zzaapVar) {
        int i3 = this.zzo;
        if (i3 > 0) {
            int zzA = zzA(i3 - 1);
            zzdd.zzd(this.zzj[zzA] + ((long) this.zzk[zzA]) <= j2);
        }
        this.zzv = (536870912 & i) != 0;
        this.zzu = Math.max(this.zzu, j);
        int zzA2 = zzA(this.zzo);
        this.zzm[zzA2] = j;
        this.zzj[zzA2] = j2;
        this.zzk[zzA2] = i2;
        this.zzl[zzA2] = i;
        this.zzn[zzA2] = zzaapVar;
        this.zzi[zzA2] = 0;
        if (this.zzc.zzf() || !((zztv) this.zzc.zzb()).zza.equals(this.zzz)) {
            zzpn zzpnVar = zzpn.zzb;
            zzue zzueVar = this.zzc;
            int i4 = this.zzp + this.zzo;
            zzaf zzafVar = this.zzz;
            zzafVar.getClass();
            zzueVar.zzc(i4, new zztv(zzafVar, zzpnVar, null));
        }
        int i5 = this.zzo + 1;
        this.zzo = i5;
        int i6 = this.zzh;
        if (i5 == i6) {
            int i7 = i6 + 1000;
            int[] iArr = new int[i7];
            long[] jArr = new long[i7];
            long[] jArr2 = new long[i7];
            int[] iArr2 = new int[i7];
            int[] iArr3 = new int[i7];
            zzaap[] zzaapVarArr = new zzaap[i7];
            int i8 = this.zzq;
            int i9 = i6 - i8;
            System.arraycopy(this.zzj, i8, jArr, 0, i9);
            System.arraycopy(this.zzm, this.zzq, jArr2, 0, i9);
            System.arraycopy(this.zzl, this.zzq, iArr2, 0, i9);
            System.arraycopy(this.zzk, this.zzq, iArr3, 0, i9);
            System.arraycopy(this.zzn, this.zzq, zzaapVarArr, 0, i9);
            System.arraycopy(this.zzi, this.zzq, iArr, 0, i9);
            int i10 = this.zzq;
            System.arraycopy(this.zzj, 0, jArr, i9, i10);
            System.arraycopy(this.zzm, 0, jArr2, i9, i10);
            System.arraycopy(this.zzl, 0, iArr2, i9, i10);
            System.arraycopy(this.zzk, 0, iArr3, i9, i10);
            System.arraycopy(this.zzn, 0, zzaapVarArr, i9, i10);
            System.arraycopy(this.zzi, 0, iArr, i9, i10);
            this.zzj = jArr;
            this.zzm = jArr2;
            this.zzl = iArr2;
            this.zzk = iArr3;
            this.zzn = zzaapVarArr;
            this.zzi = iArr;
            this.zzq = 0;
            this.zzh = i7;
        }
    }

    private final void zzH() {
        if (this.zzC != null) {
            this.zzC = null;
            this.zzg = null;
        }
    }

    private final synchronized void zzI() {
        this.zzr = 0;
        this.zza.zzg();
    }

    private final boolean zzJ() {
        return this.zzr != this.zzo;
    }

    private final boolean zzK(int i) {
        if (this.zzC != null) {
            return (this.zzl[i] & 1073741824) != 0 ? false : false;
        }
        return true;
    }

    private final synchronized boolean zzL(zzaf zzafVar) {
        this.zzx = false;
        if (zzen.zzT(zzafVar, this.zzz)) {
            return false;
        }
        if (!this.zzc.zzf() && ((zztv) this.zzc.zzb()).zza.equals(zzafVar)) {
            this.zzz = ((zztv) this.zzc.zzb()).zza;
        } else {
            this.zzz = zzafVar;
        }
        zzaf zzafVar2 = this.zzz;
        this.zzA = zzbt.zzf(zzafVar2.zzm, zzafVar2.zzj);
        this.zzB = false;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzl(zztv zztvVar) {
        zzpn zzpnVar = zztvVar.zzb;
        int i = zzpm.zza;
    }

    private final int zzz(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = (this.zzm[i] > j ? 1 : (this.zzm[i] == j ? 0 : -1));
            if (i5 > 0) {
                break;
            }
            if (!z || (this.zzl[i] & 1) != 0) {
                i3 = i4;
                if (i5 == 0) {
                    break;
                }
            }
            i++;
            if (i == this.zzh) {
                i = 0;
            }
        }
        return i3;
    }

    public final int zza() {
        return this.zzp + this.zzr;
    }

    public final synchronized int zzb(long j, boolean z) {
        int i = this.zzr;
        int zzA = zzA(i);
        if (zzJ() && j >= this.zzm[zzA]) {
            if (j > this.zzu && z) {
                return this.zzo - i;
            }
            int zzz = zzz(zzA, this.zzo - i, j, true);
            if (zzz == -1) {
                return 0;
            }
            return zzz;
        }
        return 0;
    }

    public final int zzc() {
        return this.zzp + this.zzo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
        if (r9 != 0) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzd(com.google.android.gms.internal.ads.zzje r9, com.google.android.gms.internal.ads.zzgi r10, int r11, boolean r12) {
        /*
            r8 = this;
            r0 = r11 & 2
            r1 = 1
            if (r0 == 0) goto L7
            r5 = r1
            goto L9
        L7:
            r0 = 0
            r5 = r0
        L9:
            com.google.android.gms.internal.ads.zztt r7 = r8.zzb
            r2 = r8
            r3 = r9
            r4 = r10
            r6 = r12
            int r9 = r2.zzB(r3, r4, r5, r6, r7)
            r12 = -4
            if (r9 != r12) goto L3e
            boolean r9 = r10.zzg()
            if (r9 != 0) goto L3d
            r9 = r11 & 1
            r11 = r11 & 4
            if (r11 != 0) goto L34
            if (r9 == 0) goto L2c
            com.google.android.gms.internal.ads.zztr r9 = r8.zza
            com.google.android.gms.internal.ads.zztt r11 = r8.zzb
            r9.zzd(r10, r11)
            goto L3d
        L2c:
            com.google.android.gms.internal.ads.zztr r9 = r8.zza
            com.google.android.gms.internal.ads.zztt r11 = r8.zzb
            r9.zze(r10, r11)
            goto L37
        L34:
            if (r9 == 0) goto L37
            goto L3d
        L37:
            int r9 = r8.zzr
            int r9 = r9 + r1
            r8.zzr = r9
            return r12
        L3d:
            r9 = r12
        L3e:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztx.zzd(com.google.android.gms.internal.ads.zzje, com.google.android.gms.internal.ads.zzgi, int, boolean):int");
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    public final /* synthetic */ int zze(zzr zzrVar, int i, boolean z) {
        return zzaao.zza(this, zzrVar, i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    public final int zzf(zzr zzrVar, int i, boolean z, int i2) throws IOException {
        return this.zza.zza(zzrVar, i, z);
    }

    public final synchronized long zzg() {
        return this.zzu;
    }

    public final synchronized zzaf zzh() {
        if (this.zzx) {
            return null;
        }
        return this.zzz;
    }

    public final void zzi(long j, boolean z, boolean z2) {
        this.zza.zzc(zzC(j, false, z2));
    }

    public final void zzj() {
        this.zza.zzc(zzD());
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    public final void zzk(zzaf zzafVar) {
        this.zzy = zzafVar;
        boolean zzL = zzL(zzafVar);
        zztw zztwVar = this.zzf;
        if (zztwVar == null || !zzL) {
            return;
        }
        zztwVar.zzL(zzafVar);
    }

    public final void zzm() throws IOException {
        zzpp zzppVar = this.zzC;
        if (zzppVar != null) {
            throw zzppVar.zza();
        }
    }

    public final void zzn() {
        zzj();
        zzH();
    }

    public final void zzo() {
        zzp(true);
        zzH();
    }

    public final void zzp(boolean z) {
        this.zza.zzf();
        this.zzo = 0;
        this.zzp = 0;
        this.zzq = 0;
        this.zzr = 0;
        this.zzw = true;
        this.zzs = Long.MIN_VALUE;
        this.zzt = Long.MIN_VALUE;
        this.zzu = Long.MIN_VALUE;
        this.zzv = false;
        this.zzc.zzd();
        if (z) {
            this.zzy = null;
            this.zzz = null;
            this.zzx = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    public final /* synthetic */ void zzq(zzef zzefVar, int i) {
        zzaao.zzb(this, zzefVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    public final void zzr(zzef zzefVar, int i, int i2) {
        this.zza.zzh(zzefVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    public final void zzs(long j, int i, int i2, int i3, zzaap zzaapVar) {
        int i4 = i & 1;
        if (this.zzw) {
            if (i4 == 0) {
                return;
            }
            this.zzw = false;
        }
        if (this.zzA) {
            if (j < this.zzs) {
                return;
            }
            if (i4 == 0) {
                if (!this.zzB) {
                    zzdw.zze("SampleQueue", "Overriding unexpected non-sync sample for format: ".concat(String.valueOf(String.valueOf(this.zzz))));
                    this.zzB = true;
                }
                i |= 1;
            }
        }
        zzF(j, i, (this.zza.zzb() - i2) - i3, i2, zzaapVar);
    }

    public final void zzt(long j) {
        this.zzs = j;
    }

    public final void zzu(zztw zztwVar) {
        this.zzf = zztwVar;
    }

    public final synchronized void zzv(int i) {
        boolean z = false;
        if (i >= 0) {
            try {
                if (this.zzr + i <= this.zzo) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzdd.zzd(z);
        this.zzr += i;
    }

    public final synchronized boolean zzw() {
        return this.zzv;
    }

    public final synchronized boolean zzx(boolean z) {
        boolean z2 = true;
        if (zzJ()) {
            if (((zztv) this.zzc.zza(this.zzp + this.zzr)).zza != this.zzg) {
                return true;
            }
            return zzK(zzA(this.zzr));
        }
        if (!z && !this.zzv) {
            zzaf zzafVar = this.zzz;
            if (zzafVar == null) {
                z2 = false;
            } else if (zzafVar == this.zzg) {
                return false;
            }
        }
        return z2;
    }

    public final synchronized boolean zzy(long j, boolean z) {
        zzI();
        int i = this.zzr;
        int zzA = zzA(i);
        if (!zzJ() || j < this.zzm[zzA] || (j > this.zzu && !z)) {
            return false;
        }
        int zzz = zzz(zzA, this.zzo - i, j, true);
        if (zzz == -1) {
            return false;
        }
        this.zzs = j;
        this.zzr += zzz;
        return true;
    }

    private final void zzG(zzaf zzafVar, zzje zzjeVar) {
        zzaf zzafVar2 = this.zzg;
        boolean z = zzafVar2 == null;
        zzx zzxVar = z ? null : zzafVar2.zzp;
        this.zzg = zzafVar;
        zzx zzxVar2 = zzafVar.zzp;
        zzjeVar.zza = zzafVar.zzc(this.zzd.zza(zzafVar));
        zzjeVar.zzb = this.zzC;
        if (z || !zzen.zzT(zzxVar, zzxVar2)) {
            zzpp zzppVar = zzafVar.zzp != null ? new zzpp(new zzpg(new zzpr(1), 6001)) : null;
            this.zzC = zzppVar;
            zzjeVar.zzb = zzppVar;
        }
    }

    private final long zzE(int i) {
        int i2;
        long j = this.zzt;
        long j2 = Long.MIN_VALUE;
        if (i != 0) {
            int zzA = zzA(i - 1);
            for (int i3 = 0; i3 < i; i3++) {
                j2 = Math.max(j2, this.zzm[zzA]);
                if ((this.zzl[zzA] & 1) != 0) {
                    break;
                }
                zzA--;
                if (zzA == -1) {
                    zzA = this.zzh - 1;
                }
            }
        }
        this.zzt = Math.max(j, j2);
        this.zzo -= i;
        int i4 = this.zzp + i;
        this.zzp = i4;
        int i5 = this.zzq + i;
        this.zzq = i5;
        int i6 = this.zzh;
        if (i5 >= i6) {
            this.zzq = i5 - i6;
        }
        int i7 = this.zzr - i;
        this.zzr = i7;
        if (i7 < 0) {
            this.zzr = 0;
        }
        this.zzc.zze(i4);
        if (this.zzo == 0) {
            int i8 = this.zzq;
            if (i8 == 0) {
                i8 = this.zzh;
            }
            return this.zzj[i8 - 1] + this.zzk[i2];
        }
        return this.zzj[this.zzq];
    }
}
