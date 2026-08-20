package com.google.android.gms.internal.ads;

import com.ironsource.mediationsdk.logger.IronSourceError;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhay {
    private static final zzhay zza = new zzhay(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzhay() {
        this(0, new int[8], new Object[8], true);
    }

    private zzhay(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzhay zzc() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzhay zze(zzhay zzhayVar, zzhay zzhayVar2) {
        int i = zzhayVar.zzb + zzhayVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzhayVar.zzc, i);
        System.arraycopy(zzhayVar2.zzc, 0, copyOf, zzhayVar.zzb, zzhayVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzhayVar.zzd, i);
        System.arraycopy(zzhayVar2.zzd, 0, copyOf2, zzhayVar.zzb, zzhayVar2.zzb);
        return new zzhay(i, copyOf, copyOf2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzhay zzf() {
        return new zzhay(0, new int[8], new Object[8], true);
    }

    private final void zzl(int i) {
        int[] iArr = this.zzc;
        if (i > iArr.length) {
            int i2 = this.zzb;
            int i3 = i2 + (i2 / 2);
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.zzc = Arrays.copyOf(iArr, i);
            this.zzd = Arrays.copyOf(this.zzd, i);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof zzhay)) {
            zzhay zzhayVar = (zzhay) obj;
            int i = this.zzb;
            if (i == zzhayVar.zzb) {
                int[] iArr = this.zzc;
                int[] iArr2 = zzhayVar.zzc;
                int i2 = 0;
                while (true) {
                    if (i2 >= i) {
                        Object[] objArr = this.zzd;
                        Object[] objArr2 = zzhayVar.zzd;
                        int i3 = this.zzb;
                        for (int i4 = 0; i4 < i3; i4++) {
                            if (objArr[i4].equals(objArr2[i4])) {
                            }
                        }
                        return true;
                    } else if (iArr[i2] != iArr2[i2]) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        int i2 = (i + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31;
        int[] iArr = this.zzc;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.zzd;
        int i7 = this.zzb;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    public final int zza() {
        int zzE;
        int zzF;
        int i;
        int i2 = this.zze;
        if (i2 == -1) {
            int i3 = 0;
            for (int i4 = 0; i4 < this.zzb; i4++) {
                int i5 = this.zzc[i4];
                int i6 = i5 >>> 3;
                int i7 = i5 & 7;
                if (i7 != 0) {
                    if (i7 == 1) {
                        ((Long) this.zzd[i4]).longValue();
                        i = zzgxk.zzE(i6 << 3) + 8;
                    } else if (i7 == 2) {
                        int zzE2 = zzgxk.zzE(i6 << 3);
                        int zzd = ((zzgwv) this.zzd[i4]).zzd();
                        i3 += zzE2 + zzgxk.zzE(zzd) + zzd;
                    } else if (i7 == 3) {
                        int zzD = zzgxk.zzD(i6);
                        zzE = zzD + zzD;
                        zzF = ((zzhay) this.zzd[i4]).zza();
                    } else if (i7 == 5) {
                        ((Integer) this.zzd[i4]).intValue();
                        i = zzgxk.zzE(i6 << 3) + 4;
                    } else {
                        throw new IllegalStateException(zzgyp.zza());
                    }
                    i3 += i;
                } else {
                    long longValue = ((Long) this.zzd[i4]).longValue();
                    zzE = zzgxk.zzE(i6 << 3);
                    zzF = zzgxk.zzF(longValue);
                }
                i = zzE + zzF;
                i3 += i;
            }
            this.zze = i3;
            return i3;
        }
        return i2;
    }

    public final int zzb() {
        int i = this.zze;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzb; i3++) {
                int i4 = this.zzc[i3];
                int zzE = zzgxk.zzE(8);
                int zzd = ((zzgwv) this.zzd[i3]).zzd();
                i2 += zzE + zzE + zzgxk.zzE(16) + zzgxk.zzE(i4 >>> 3) + zzgxk.zzE(24) + zzgxk.zzE(zzd) + zzd;
            }
            this.zze = i2;
            return i2;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzhay zzd(zzhay zzhayVar) {
        if (zzhayVar.equals(zza)) {
            return this;
        }
        zzg();
        int i = this.zzb + zzhayVar.zzb;
        zzl(i);
        System.arraycopy(zzhayVar.zzc, 0, this.zzc, this.zzb, zzhayVar.zzb);
        System.arraycopy(zzhayVar.zzd, 0, this.zzd, this.zzb, zzhayVar.zzb);
        this.zzb = i;
        return this;
    }

    final void zzg() {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
    }

    public final void zzh() {
        this.zzf = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzi(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzgzp.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzj(int i, Object obj) {
        zzg();
        zzl(this.zzb + 1);
        int[] iArr = this.zzc;
        int i2 = this.zzb;
        iArr[i2] = i;
        this.zzd[i2] = obj;
        this.zzb = i2 + 1;
    }

    public final void zzk(zzgxl zzgxlVar) throws IOException {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    zzgxlVar.zzt(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    zzgxlVar.zzm(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    zzgxlVar.zzd(i3, (zzgwv) obj);
                } else if (i4 == 3) {
                    zzgxlVar.zzE(i3);
                    ((zzhay) obj).zzk(zzgxlVar);
                    zzgxlVar.zzh(i3);
                } else if (i4 == 5) {
                    zzgxlVar.zzk(i3, ((Integer) obj).intValue());
                } else {
                    throw new RuntimeException(zzgyp.zza());
                }
            }
        }
    }
}
