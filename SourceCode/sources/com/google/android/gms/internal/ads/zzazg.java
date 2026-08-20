package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzazg extends zzazk {
    private final AtomicReference zza;

    public zzazg() {
        this(null);
    }

    protected static boolean zza(int i, boolean z) {
        int i2 = i & 3;
        if (i2 != 3) {
            return z && i2 == 2;
        }
        return true;
    }

    private static int zzh(int i, int i2) {
        if (i == -1) {
            return i2 != -1 ? -1 : 0;
        } else if (i2 == -1) {
            return 1;
        } else {
            return i - i2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzazk
    protected final zzaze[] zzb(zzatj[] zzatjVarArr, zzaza[] zzazaVarArr, int[][][] iArr) throws zzasp {
        zzazh zzazhVar;
        boolean z;
        zzayz zzayzVar;
        int[] iArr2;
        ArrayList arrayList;
        boolean z2;
        boolean z3;
        int i;
        int zzh;
        int i2 = 2;
        zzaze[] zzazeVarArr = new zzaze[2];
        zzazf zzazfVar = (zzazf) this.zza.get();
        int i3 = 0;
        boolean z4 = false;
        while (true) {
            int i4 = -1;
            int i5 = 1;
            if (i3 >= i2) {
                break;
            }
            if (zzatjVarArr[i3].zzc() == i2) {
                if (!z4) {
                    zzatj zzatjVar = zzatjVarArr[i3];
                    zzaza zzazaVar = zzazaVarArr[i3];
                    int[][] iArr3 = iArr[i3];
                    int i6 = zzazfVar.zzd;
                    int i7 = zzazfVar.zze;
                    int i8 = zzazfVar.zzf;
                    boolean z5 = zzazfVar.zzc;
                    boolean z6 = zzazfVar.zzb;
                    int i9 = zzazfVar.zzi;
                    int i10 = zzazfVar.zzj;
                    boolean z7 = zzazfVar.zzk;
                    boolean z8 = zzazfVar.zzg;
                    boolean z9 = zzazfVar.zzh;
                    int i11 = -1;
                    int i12 = 0;
                    zzayz zzayzVar2 = null;
                    int i13 = 0;
                    int i14 = 0;
                    while (i12 < zzazaVar.zzb) {
                        zzayz zzb = zzazaVar.zzb(i12);
                        int i15 = zzb.zza;
                        ArrayList arrayList2 = new ArrayList(i5);
                        int i16 = 0;
                        while (true) {
                            int i17 = zzb.zza;
                            if (i16 > 0) {
                                break;
                            }
                            arrayList2.add(Integer.valueOf(i16));
                            i16++;
                        }
                        int[] iArr4 = iArr3[i12];
                        int i18 = 0;
                        while (true) {
                            int i19 = zzb.zza;
                            if (i18 <= 0) {
                                zzaza zzazaVar2 = zzazaVar;
                                if (zza(iArr4[i18], true)) {
                                    zzatd zzb2 = zzb.zzb(i18);
                                    if (arrayList2.contains(Integer.valueOf(i18))) {
                                        int i20 = zzb2.zzj;
                                        int i21 = zzb2.zzk;
                                        int i22 = zzb2.zzb;
                                        zzayzVar = zzb;
                                        z2 = true;
                                        z3 = true;
                                    } else {
                                        zzayzVar = zzb;
                                        z2 = true;
                                        z3 = false;
                                    }
                                    if (z2 != z3) {
                                        arrayList = arrayList2;
                                        i = 1;
                                    } else {
                                        arrayList = arrayList2;
                                        i = 2;
                                    }
                                    iArr2 = iArr4;
                                    boolean zza = zza(iArr4[i18], false);
                                    if (zza) {
                                        i += 1000;
                                    }
                                    boolean z10 = i > i14;
                                    if (i == i14) {
                                        if (zzb2.zza() != i11) {
                                            zzh = zzh(zzb2.zza(), i11);
                                        } else {
                                            zzh = zzh(zzb2.zzb, i4);
                                        }
                                        z10 = !(zza && z3) ? zzh >= 0 : zzh <= 0;
                                    }
                                    if (z10) {
                                        i4 = zzb2.zzb;
                                        i11 = zzb2.zza();
                                        i14 = i;
                                        i13 = i18;
                                        zzayzVar2 = zzayzVar;
                                    }
                                } else {
                                    zzayzVar = zzb;
                                    iArr2 = iArr4;
                                    arrayList = arrayList2;
                                }
                                i18++;
                                zzazaVar = zzazaVar2;
                                zzb = zzayzVar;
                                arrayList2 = arrayList;
                                iArr4 = iArr2;
                            }
                        }
                        i12++;
                        i5 = 1;
                    }
                    zzazh zzazhVar2 = zzayzVar2 == null ? null : new zzazh(zzayzVar2, i13, 0, null);
                    zzazeVarArr[i3] = zzazhVar2;
                    z4 = zzazhVar2 != null;
                }
                int i23 = zzazaVarArr[i3].zzb;
            }
            i3++;
            i2 = 2;
        }
        int i24 = 0;
        boolean z11 = false;
        while (i24 < i2) {
            if (zzatjVarArr[i24].zzc() == 1 && !z11) {
                zzaza zzazaVar3 = zzazaVarArr[i24];
                int[][] iArr5 = iArr[i24];
                String str = zzazfVar.zza;
                boolean z12 = zzazfVar.zzh;
                boolean z13 = zzazfVar.zzb;
                int i25 = -1;
                int i26 = -1;
                int i27 = 0;
                int i28 = 0;
                while (i27 < zzazaVar3.zzb) {
                    zzayz zzb3 = zzazaVar3.zzb(i27);
                    int[] iArr6 = iArr5[i27];
                    int i29 = i26;
                    int i30 = i25;
                    int i31 = i28;
                    int i32 = 0;
                    while (true) {
                        int i33 = zzb3.zza;
                        if (i32 <= 0) {
                            if (zza(iArr6[i32], true)) {
                                zzatd zzb4 = zzb3.zzb(i32);
                                int i34 = iArr6[i32];
                                int i35 = 1 != (zzb4.zzx & 1) ? 1 : 2;
                                if (zza(i34, false)) {
                                    i35 += 1000;
                                }
                                if (i35 > i31) {
                                    i30 = i27;
                                    i29 = i32;
                                    i31 = i35;
                                }
                            }
                            i32++;
                        }
                    }
                    i27++;
                    i28 = i31;
                    i25 = i30;
                    i26 = i29;
                }
                if (i25 == -1) {
                    zzazhVar = null;
                    z = false;
                } else {
                    z = false;
                    zzazhVar = new zzazh(zzazaVar3.zzb(i25), i26, 0, null);
                }
                zzazeVarArr[i24] = zzazhVar;
                z11 = zzazhVar != null ? true : z;
            }
            i24++;
            i2 = 2;
        }
        return zzazeVarArr;
    }

    public zzazg(zzazl zzazlVar) {
        this.zza = new AtomicReference(new zzazf());
    }
}
