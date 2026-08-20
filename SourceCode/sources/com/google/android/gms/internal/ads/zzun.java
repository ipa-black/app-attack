package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzun extends zzup {
    private final zzwh zzd;
    private final zzgau zze;
    private final zzde zzf;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzun(zzcp zzcpVar, int[] iArr, int i, zzwh zzwhVar, long j, long j2, long j3, int i2, int i3, float f2, float f3, List list, zzde zzdeVar) {
        super(zzcpVar, iArr, 0);
        this.zzd = zzwhVar;
        this.zze = zzgau.zzm(list);
        this.zzf = zzdeVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzgau zzf(zzvs[] zzvsVarArr) {
        int i;
        int i2;
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = 2;
            i2 = 1;
            if (i4 >= 2) {
                break;
            }
            zzvs zzvsVar = zzvsVarArr[i4];
            if (zzvsVar == null || zzvsVar.zzb.length <= 1) {
                arrayList.add(null);
            } else {
                zzgar zzi = zzgau.zzi();
                zzi.zze(new zzul(0L, 0L));
                arrayList.add(zzi);
            }
            i4++;
        }
        long[][] jArr = new long[2];
        for (int i5 = 0; i5 < 2; i5++) {
            zzvs zzvsVar2 = zzvsVarArr[i5];
            if (zzvsVar2 == null) {
                jArr[i5] = new long[0];
            } else {
                jArr[i5] = new long[zzvsVar2.zzb.length];
                int i6 = 0;
                while (true) {
                    int[] iArr = zzvsVar2.zzb;
                    if (i6 >= iArr.length) {
                        break;
                    }
                    long j = zzvsVar2.zza.zzb(iArr[i6]).zzi;
                    long[] jArr2 = jArr[i5];
                    if (j == -1) {
                        j = 0;
                    }
                    jArr2[i6] = j;
                    i6++;
                }
                Arrays.sort(jArr[i5]);
            }
        }
        int[] iArr2 = new int[2];
        long[] jArr3 = new long[2];
        for (int i7 = 0; i7 < 2; i7++) {
            long[] jArr4 = jArr[i7];
            jArr3[i7] = jArr4.length == 0 ? 0L : jArr4[0];
        }
        zzg(arrayList, jArr3);
        zzgbf zza = zzgbx.zzc(zzgcc.zzc()).zzb(2).zza();
        int i8 = 0;
        while (i8 < i) {
            int length = jArr[i8].length;
            if (length > i2) {
                double[] dArr = new double[length];
                int i9 = i3;
                while (true) {
                    long[] jArr5 = jArr[i8];
                    double d2 = 0.0d;
                    if (i9 >= jArr5.length) {
                        break;
                    }
                    long j2 = jArr5[i9];
                    if (j2 != -1) {
                        d2 = Math.log(j2);
                    }
                    dArr[i9] = d2;
                    i9++;
                }
                int i10 = length - 1;
                double d3 = dArr[i10] - dArr[i3];
                int i11 = i3;
                while (i11 < i10) {
                    int i12 = i11 + 1;
                    zza.zzs(Double.valueOf(d3 == 0.0d ? 1.0d : (((dArr[i11] + dArr[i12]) * 0.5d) - dArr[i3]) / d3), Integer.valueOf(i8));
                    i11 = i12;
                    i3 = 0;
                }
            }
            i8++;
            i3 = 0;
            i = 2;
            i2 = 1;
        }
        zzgau zzm = zzgau.zzm(zza.zzt());
        for (int i13 = 0; i13 < zzm.size(); i13++) {
            int intValue = ((Integer) zzm.get(i13)).intValue();
            int i14 = iArr2[intValue] + 1;
            iArr2[intValue] = i14;
            jArr3[intValue] = jArr[intValue][i14];
            zzg(arrayList, jArr3);
        }
        for (int i15 = 0; i15 < 2; i15++) {
            if (arrayList.get(i15) != null) {
                long j3 = jArr3[i15];
                jArr3[i15] = j3 + j3;
            }
        }
        zzg(arrayList, jArr3);
        zzgar zzi2 = zzgau.zzi();
        for (int i16 = 0; i16 < arrayList.size(); i16++) {
            zzgar zzgarVar = (zzgar) arrayList.get(i16);
            zzi2.zze(zzgarVar == null ? zzgau.zzo() : zzgarVar.zzg());
        }
        return zzi2.zzg();
    }

    private static void zzg(List list, long[] jArr) {
        long j = 0;
        for (int i = 0; i < 2; i++) {
            j += jArr[i];
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzgar zzgarVar = (zzgar) list.get(i2);
            if (zzgarVar != null) {
                zzgarVar.zze(new zzul(j, jArr[i2]));
            }
        }
    }
}
