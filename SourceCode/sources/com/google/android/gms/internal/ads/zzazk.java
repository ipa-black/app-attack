package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Arrays;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzazk extends zzazo {
    private final SparseArray zza = new SparseArray();
    private final SparseBooleanArray zzb = new SparseBooleanArray();
    private zzazi zzc;

    protected abstract zzaze[] zzb(zzatj[] zzatjVarArr, zzaza[] zzazaVarArr, int[][][] iArr) throws zzasp;

    @Override // com.google.android.gms.internal.ads.zzazo
    public final zzazp zzc(zzatj[] zzatjVarArr, zzaza zzazaVar) throws zzasp {
        int[] iArr;
        int[] iArr2 = new int[3];
        zzayz[][] zzayzVarArr = new zzayz[3];
        int[][][] iArr3 = new int[3][];
        for (int i = 0; i < 3; i++) {
            int i2 = zzazaVar.zzb;
            zzayzVarArr[i] = new zzayz[i2];
            iArr3[i] = new int[i2];
        }
        int i3 = 2;
        int[] iArr4 = new int[2];
        for (int i4 = 0; i4 < 2; i4++) {
            zzatjVarArr[i4].zze();
            iArr4[i4] = 4;
        }
        int i5 = 0;
        while (i5 < zzazaVar.zzb) {
            zzayz zzb = zzazaVar.zzb(i5);
            int i6 = i3;
            int i7 = 0;
            int i8 = 0;
            while (true) {
                if (i7 >= i3) {
                    i7 = i6;
                    break;
                }
                zzatj zzatjVar = zzatjVarArr[i7];
                int i9 = 0;
                while (true) {
                    int i10 = zzb.zza;
                    if (i9 <= 0) {
                        int zzG = zzatjVar.zzG(zzb.zzb(i9)) & 3;
                        if (zzG > i8) {
                            if (zzG == 3) {
                                break;
                            }
                            i6 = i7;
                            i8 = zzG;
                        }
                        i9++;
                    }
                }
                i7++;
                i3 = 2;
            }
            if (i7 == 2) {
                int i11 = zzb.zza;
                iArr = new int[1];
            } else {
                zzatj zzatjVar2 = zzatjVarArr[i7];
                int i12 = zzb.zza;
                int[] iArr5 = new int[1];
                int i13 = 0;
                while (true) {
                    int i14 = zzb.zza;
                    if (i13 > 0) {
                        break;
                    }
                    iArr5[i13] = zzatjVar2.zzG(zzb.zzb(i13));
                    i13++;
                }
                iArr = iArr5;
            }
            int i15 = iArr2[i7];
            zzayzVarArr[i7][i15] = zzb;
            iArr3[i7][i15] = iArr;
            iArr2[i7] = i15 + 1;
            i5++;
            i3 = 2;
        }
        int i16 = i3;
        zzaza[] zzazaVarArr = new zzaza[i16];
        int[] iArr6 = new int[i16];
        int i17 = 0;
        while (i17 < i16) {
            int i18 = iArr2[i17];
            zzazaVarArr[i17] = new zzaza((zzayz[]) Arrays.copyOf(zzayzVarArr[i17], i18));
            iArr3[i17] = (int[][]) Arrays.copyOf(iArr3[i17], i18);
            iArr6[i17] = zzatjVarArr[i17].zzc();
            i17++;
            i16 = 2;
        }
        int i19 = i16;
        zzaza zzazaVar2 = new zzaza((zzayz[]) Arrays.copyOf(zzayzVarArr[i19], iArr2[i19]));
        zzaze[] zzb2 = zzb(zzatjVarArr, zzazaVarArr, iArr3);
        int i20 = 0;
        while (i20 < i19) {
            if (this.zzb.get(i20)) {
                zzb2[i20] = null;
            } else {
                zzaza zzazaVar3 = zzazaVarArr[i20];
                Map map = (Map) this.zza.get(i20);
                if ((map == null ? null : (zzazj) map.get(zzazaVar3)) != null) {
                    throw null;
                }
            }
            i20++;
            i19 = 2;
        }
        zzazi zzaziVar = new zzazi(iArr6, zzazaVarArr, iArr4, iArr3, zzazaVar2);
        zzatk[] zzatkVarArr = new zzatk[2];
        for (int i21 = 0; i21 < 2; i21++) {
            zzatkVarArr[i21] = zzb2[i21] != null ? zzatk.zza : null;
        }
        return new zzazp(zzazaVar, new zzazm(zzb2, null), zzaziVar, zzatkVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzazo
    public final void zzd(Object obj) {
        this.zzc = (zzazi) obj;
    }

    public final void zze(int i, boolean z) {
        if (this.zzb.get(i) == z) {
            return;
        }
        this.zzb.put(i, z);
        zzg();
    }
}
