package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzvr extends zzvw {
    public static final /* synthetic */ int zzb = 0;
    private static final zzgcc zzc = zzgcc.zzb(new Comparator() { // from class: com.google.android.gms.internal.ads.zzux
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            Integer num = (Integer) obj;
            Integer num2 = (Integer) obj2;
            int i = zzvr.zzb;
            if (num.intValue() == -1) {
                return num2.intValue() == -1 ? 0 : -1;
            } else if (num2.intValue() == -1) {
                return 1;
            } else {
                return num.intValue() - num2.intValue();
            }
        }
    });
    private static final zzgcc zzd = zzgcc.zzb(new Comparator() { // from class: com.google.android.gms.internal.ads.zzuy
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            Integer num = (Integer) obj;
            Integer num2 = (Integer) obj2;
            int i = zzvr.zzb;
            return 0;
        }
    });
    public final Context zza;
    private final Object zze;
    private final boolean zzf;
    private zzvf zzg;
    private zzvk zzh;
    private zzk zzi;
    private final zzum zzj;

    @Deprecated
    public zzvr() {
        zzvf zzvfVar = zzvf.zzD;
        throw null;
    }

    public static int zza(zzaf zzafVar, String str, boolean z) {
        if (TextUtils.isEmpty(str) || !str.equals(zzafVar.zzd)) {
            String zzf = zzf(str);
            String zzf2 = zzf(zzafVar.zzd);
            if (zzf2 == null || zzf == null) {
                return (z && zzf2 == null) ? 1 : 0;
            } else if (zzf2.startsWith(zzf) || zzf.startsWith(zzf2)) {
                return 3;
            } else {
                return zzen.zzah(zzf2, "-")[0].equals(zzen.zzah(zzf, "-")[0]) ? 2 : 0;
            }
        }
        return 4;
    }

    public static String zzf(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    public static /* bridge */ /* synthetic */ void zzg(zzvr zzvrVar) {
        zzvrVar.zzt();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0053, code lost:
        if (r1 != 3) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ boolean zzk(com.google.android.gms.internal.ads.zzvr r8, com.google.android.gms.internal.ads.zzaf r9) {
        /*
            java.lang.Object r0 = r8.zze
            monitor-enter(r0)
            com.google.android.gms.internal.ads.zzvf r1 = r8.zzg     // Catch: java.lang.Throwable -> L8f
            boolean r1 = r1.zzP     // Catch: java.lang.Throwable -> L8f
            r2 = 1
            if (r1 == 0) goto L8d
            boolean r1 = r8.zzf     // Catch: java.lang.Throwable -> L8f
            if (r1 != 0) goto L8d
            int r1 = r9.zzz     // Catch: java.lang.Throwable -> L8f
            r3 = 2
            if (r1 <= r3) goto L8d
            java.lang.String r1 = r9.zzm     // Catch: java.lang.Throwable -> L8f
            r4 = 32
            r5 = 0
            if (r1 != 0) goto L1b
            goto L65
        L1b:
            int r6 = r1.hashCode()     // Catch: java.lang.Throwable -> L8f
            r7 = 3
            switch(r6) {
                case -2123537834: goto L42;
                case 187078296: goto L38;
                case 187078297: goto L2e;
                case 1504578661: goto L24;
                default: goto L23;
            }
        L23:
            goto L4c
        L24:
            java.lang.String r6 = "audio/eac3"
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L4c
            r1 = r2
            goto L4d
        L2e:
            java.lang.String r6 = "audio/ac4"
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L4c
            r1 = r7
            goto L4d
        L38:
            java.lang.String r6 = "audio/ac3"
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L4c
            r1 = r5
            goto L4d
        L42:
            java.lang.String r6 = "audio/eac3-joc"
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L4c
            r1 = r3
            goto L4d
        L4c:
            r1 = -1
        L4d:
            if (r1 == 0) goto L56
            if (r1 == r2) goto L56
            if (r1 == r3) goto L56
            if (r1 == r7) goto L56
            goto L65
        L56:
            int r1 = com.google.android.gms.internal.ads.zzen.zza     // Catch: java.lang.Throwable -> L8f
            if (r1 < r4) goto L8d
            com.google.android.gms.internal.ads.zzvk r1 = r8.zzh     // Catch: java.lang.Throwable -> L8f
            if (r1 == 0) goto L8d
            boolean r1 = r1.zzg()     // Catch: java.lang.Throwable -> L8f
            if (r1 != 0) goto L65
            goto L8d
        L65:
            int r1 = com.google.android.gms.internal.ads.zzen.zza     // Catch: java.lang.Throwable -> L8f
            if (r1 < r4) goto L8c
            com.google.android.gms.internal.ads.zzvk r1 = r8.zzh     // Catch: java.lang.Throwable -> L8f
            if (r1 == 0) goto L8c
            boolean r3 = r1.zzg()     // Catch: java.lang.Throwable -> L8f
            if (r3 == 0) goto L8c
            boolean r1 = r1.zze()     // Catch: java.lang.Throwable -> L8f
            if (r1 == 0) goto L8c
            com.google.android.gms.internal.ads.zzvk r1 = r8.zzh     // Catch: java.lang.Throwable -> L8f
            boolean r1 = r1.zzf()     // Catch: java.lang.Throwable -> L8f
            if (r1 == 0) goto L8c
            com.google.android.gms.internal.ads.zzvk r1 = r8.zzh     // Catch: java.lang.Throwable -> L8f
            com.google.android.gms.internal.ads.zzk r8 = r8.zzi     // Catch: java.lang.Throwable -> L8f
            boolean r8 = r1.zzd(r8, r9)     // Catch: java.lang.Throwable -> L8f
            if (r8 == 0) goto L8c
            goto L8d
        L8c:
            r2 = r5
        L8d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L8f
            return r2
        L8f:
            r8 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L8f
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvr.zzk(com.google.android.gms.internal.ads.zzvr, com.google.android.gms.internal.ads.zzaf):boolean");
    }

    public static boolean zzm(int i, boolean z) {
        int i2 = i & 7;
        if (i2 != 4) {
            return z && i2 == 3;
        }
        return true;
    }

    private static void zzs(zzug zzugVar, zzcu zzcuVar, Map map) {
        for (int i = 0; i < zzugVar.zzc; i++) {
            if (((zzcr) zzcuVar.zzB.get(zzugVar.zzb(i))) != null) {
                throw null;
            }
        }
    }

    public final void zzt() {
        boolean z;
        zzvk zzvkVar;
        synchronized (this.zze) {
            z = false;
            if (this.zzg.zzP && !this.zzf && zzen.zza >= 32 && (zzvkVar = this.zzh) != null && zzvkVar.zzg()) {
                z = true;
            }
        }
        if (z) {
            zzr();
        }
    }

    private static final Pair zzu(int i, zzvv zzvvVar, int[][][] iArr, zzvm zzvmVar, Comparator comparator) {
        int i2;
        RandomAccess randomAccess;
        zzvv zzvvVar2 = zzvvVar;
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        while (i3 < 2) {
            if (i == zzvvVar2.zzc(i3)) {
                zzug zzd2 = zzvvVar2.zzd(i3);
                for (int i4 = 0; i4 < zzd2.zzc; i4++) {
                    zzcp zzb2 = zzd2.zzb(i4);
                    List zza = zzvmVar.zza(i3, zzb2, iArr[i3][i4]);
                    int i5 = zzb2.zzb;
                    int i6 = 1;
                    boolean[] zArr = new boolean[1];
                    int i7 = 0;
                    while (true) {
                        int i8 = zzb2.zzb;
                        if (i7 <= 0) {
                            zzvn zzvnVar = (zzvn) zza.get(i7);
                            int zzb3 = zzvnVar.zzb();
                            if (zArr[i7] || zzb3 == 0) {
                                i2 = i6;
                            } else {
                                if (zzb3 == i6) {
                                    randomAccess = zzgau.zzp(zzvnVar);
                                    i2 = i6;
                                } else {
                                    ArrayList arrayList2 = new ArrayList();
                                    arrayList2.add(zzvnVar);
                                    int i9 = i7 + 1;
                                    while (true) {
                                        int i10 = zzb2.zzb;
                                        if (i9 > 0) {
                                            break;
                                        }
                                        zzvn zzvnVar2 = (zzvn) zza.get(i9);
                                        if (zzvnVar2.zzb() == 2 && zzvnVar.zzc(zzvnVar2)) {
                                            arrayList2.add(zzvnVar2);
                                            zArr[i9] = true;
                                        }
                                        i9++;
                                    }
                                    i2 = 1;
                                    randomAccess = arrayList2;
                                }
                                arrayList.add(randomAccess);
                            }
                            i7++;
                            i6 = i2;
                        }
                    }
                }
            }
            i3++;
            zzvvVar2 = zzvvVar;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i11 = 0; i11 < list.size(); i11++) {
            iArr2[i11] = ((zzvn) list.get(i11)).zzc;
        }
        zzvn zzvnVar3 = (zzvn) list.get(0);
        return Pair.create(new zzvs(zzvnVar3.zzb, iArr2, 0), Integer.valueOf(zzvnVar3.zza));
    }

    @Override // com.google.android.gms.internal.ads.zzvw
    protected final Pair zzb(zzvv zzvvVar, int[][][] iArr, final int[] iArr2, zzsh zzshVar, zzcn zzcnVar) throws zzha {
        final zzvf zzvfVar;
        int i;
        final boolean z;
        int[] iArr3;
        int length;
        zzvt zza;
        zzvk zzvkVar;
        int[][][] iArr4 = iArr;
        synchronized (this.zze) {
            zzvfVar = this.zzg;
            if (zzvfVar.zzP && zzen.zza >= 32 && (zzvkVar = this.zzh) != null) {
                Looper myLooper = Looper.myLooper();
                zzdd.zzb(myLooper);
                zzvkVar.zzb(this, myLooper);
            }
        }
        int i2 = 2;
        zzvs[] zzvsVarArr = new zzvs[2];
        Pair zzu = zzu(2, zzvvVar, iArr4, new zzvm() { // from class: com.google.android.gms.internal.ads.zzut
            /* JADX WARN: Removed duplicated region for block: B:25:0x0046  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x0050  */
            @Override // com.google.android.gms.internal.ads.zzvm
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.util.List zza(int r17, com.google.android.gms.internal.ads.zzcp r18, int[] r19) {
                /*
                    Method dump skipped, instructions count: 186
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzut.zza(int, com.google.android.gms.internal.ads.zzcp, int[]):java.util.List");
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzuu
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                List list = (List) obj;
                List list2 = (List) obj2;
                return zzgaj.zzj().zzc((zzvq) Collections.max(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzvo
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzvq.zzd((zzvq) obj3, (zzvq) obj4);
                    }
                }), (zzvq) Collections.max(list2, new Comparator() { // from class: com.google.android.gms.internal.ads.zzvo
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzvq.zzd((zzvq) obj3, (zzvq) obj4);
                    }
                }), new Comparator() { // from class: com.google.android.gms.internal.ads.zzvo
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzvq.zzd((zzvq) obj3, (zzvq) obj4);
                    }
                }).zzb(list.size(), list2.size()).zzc((zzvq) Collections.max(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzvp
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzvq.zza((zzvq) obj3, (zzvq) obj4);
                    }
                }), (zzvq) Collections.max(list2, new Comparator() { // from class: com.google.android.gms.internal.ads.zzvp
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzvq.zza((zzvq) obj3, (zzvq) obj4);
                    }
                }), new Comparator() { // from class: com.google.android.gms.internal.ads.zzvp
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzvq.zza((zzvq) obj3, (zzvq) obj4);
                    }
                }).zza();
            }
        });
        if (zzu != null) {
            zzvsVarArr[((Integer) zzu.second).intValue()] = (zzvs) zzu.first;
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = 1;
            if (i4 >= 2) {
                z = false;
                break;
            } else if (zzvvVar.zzc(i4) == 2 && zzvvVar.zzd(i4).zzc > 0) {
                z = true;
                break;
            } else {
                i4++;
            }
        }
        Pair zzu2 = zzu(1, zzvvVar, iArr4, new zzvm() { // from class: com.google.android.gms.internal.ads.zzur
            @Override // com.google.android.gms.internal.ads.zzvm
            public final List zza(int i5, zzcp zzcpVar, int[] iArr5) {
                final zzvr zzvrVar = zzvr.this;
                zzvf zzvfVar2 = zzvfVar;
                boolean z2 = z;
                zzfyf zzfyfVar = new zzfyf() { // from class: com.google.android.gms.internal.ads.zzuq
                    @Override // com.google.android.gms.internal.ads.zzfyf
                    public final boolean zza(Object obj) {
                        return zzvr.zzk(zzvr.this, (zzaf) obj);
                    }
                };
                zzgar zzi = zzgau.zzi();
                int i6 = 0;
                while (true) {
                    int i7 = zzcpVar.zzb;
                    if (i6 <= 0) {
                        zzi.zze(new zzuz(i5, zzcpVar, i6, zzvfVar2, iArr5[i6], z2, zzfyfVar));
                        i6++;
                    } else {
                        return zzi.zzg();
                    }
                }
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzus
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((zzuz) Collections.max((List) obj)).zza((zzuz) Collections.max((List) obj2));
            }
        });
        if (zzu2 != null) {
            zzvsVarArr[((Integer) zzu2.second).intValue()] = (zzvs) zzu2.first;
        }
        final String str = zzu2 == null ? null : ((zzvs) zzu2.first).zza.zzb(((zzvs) zzu2.first).zzb[0]).zzd;
        int i5 = 3;
        Pair zzu3 = zzu(3, zzvvVar, iArr4, new zzvm() { // from class: com.google.android.gms.internal.ads.zzuv
            @Override // com.google.android.gms.internal.ads.zzvm
            public final List zza(int i6, zzcp zzcpVar, int[] iArr5) {
                zzvf zzvfVar2 = zzvf.this;
                String str2 = str;
                int i7 = zzvr.zzb;
                zzgar zzi = zzgau.zzi();
                int i8 = 0;
                while (true) {
                    int i9 = zzcpVar.zzb;
                    if (i8 <= 0) {
                        zzi.zze(new zzvl(i6, zzcpVar, i8, zzvfVar2, iArr5[i8], str2));
                        i8++;
                    } else {
                        return zzi.zzg();
                    }
                }
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzuw
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((zzvl) ((List) obj).get(0)).zza((zzvl) ((List) obj2).get(0));
            }
        });
        if (zzu3 != null) {
            zzvsVarArr[((Integer) zzu3.second).intValue()] = (zzvs) zzu3.first;
        }
        int i6 = 0;
        while (i6 < i2) {
            int zzc2 = zzvvVar.zzc(i6);
            if (zzc2 != i2 && zzc2 != i && zzc2 != i5) {
                zzug zzd2 = zzvvVar.zzd(i6);
                int[][] iArr5 = iArr4[i6];
                int i7 = i3;
                int i8 = i7;
                zzcp zzcpVar = null;
                zzva zzvaVar = null;
                while (i7 < zzd2.zzc) {
                    zzcp zzb2 = zzd2.zzb(i7);
                    int[] iArr6 = iArr5[i7];
                    int i9 = i3;
                    zzva zzvaVar2 = zzvaVar;
                    while (true) {
                        int i10 = zzb2.zzb;
                        if (i9 <= 0) {
                            if (zzm(iArr6[i9], zzvfVar.zzQ)) {
                                zzva zzvaVar3 = new zzva(zzb2.zzb(i9), iArr6[i9]);
                                if (zzvaVar2 == null || zzvaVar3.compareTo(zzvaVar2) > 0) {
                                    zzvaVar2 = zzvaVar3;
                                    i8 = i9;
                                    zzcpVar = zzb2;
                                }
                            }
                            i9++;
                        }
                    }
                    i7++;
                    zzvaVar = zzvaVar2;
                    i3 = 0;
                }
                zzvsVarArr[i6] = zzcpVar == null ? null : new zzvs(zzcpVar, new int[]{i8}, 0);
            }
            i6++;
            iArr4 = iArr;
            i2 = 2;
            i3 = 0;
            i = 1;
            i5 = 3;
        }
        HashMap hashMap = new HashMap();
        int i11 = 2;
        for (int i12 = 0; i12 < 2; i12++) {
            zzs(zzvvVar.zzd(i12), zzvfVar, hashMap);
        }
        zzs(zzvvVar.zze(), zzvfVar, hashMap);
        for (int i13 = 0; i13 < 2; i13++) {
            if (((zzcr) hashMap.get(Integer.valueOf(zzvvVar.zzc(i13)))) != null) {
                throw null;
            }
        }
        int i14 = 0;
        while (i14 < i11) {
            zzug zzd3 = zzvvVar.zzd(i14);
            if (zzvfVar.zzg(i14, zzd3)) {
                if (zzvfVar.zze(i14, zzd3) != null) {
                    throw null;
                }
                zzvsVarArr[i14] = null;
            }
            i14++;
            i11 = 2;
        }
        int i15 = 0;
        for (int i16 = i11; i15 < i16; i16 = 2) {
            int zzc3 = zzvvVar.zzc(i15);
            if (zzvfVar.zzf(i15) || zzvfVar.zzC.contains(Integer.valueOf(zzc3))) {
                zzvsVarArr[i15] = null;
            }
            i15++;
        }
        zzum zzumVar = this.zzj;
        zzwh zzp = zzp();
        zzgau zzf = zzun.zzf(zzvsVarArr);
        int i17 = 2;
        zzvt[] zzvtVarArr = new zzvt[2];
        int i18 = 0;
        while (i18 < i17) {
            zzvs zzvsVar = zzvsVarArr[i18];
            if (zzvsVar != null && (length = (iArr3 = zzvsVar.zzb).length) != 0) {
                if (length == 1) {
                    zza = new zzvu(zzvsVar.zza, iArr3[0], 0, 0, null);
                } else {
                    zza = zzumVar.zza(zzvsVar.zza, iArr3, 0, zzp, (zzgau) zzf.get(i18));
                }
                zzvtVarArr[i18] = zza;
            }
            i18++;
            i17 = 2;
        }
        zzka[] zzkaVarArr = new zzka[i17];
        for (int i19 = 0; i19 < i17; i19++) {
            zzkaVarArr[i19] = (zzvfVar.zzf(i19) || zzvfVar.zzC.contains(Integer.valueOf(zzvvVar.zzc(i19))) || (zzvvVar.zzc(i19) != -2 && zzvtVarArr[i19] == null)) ? null : zzka.zza;
        }
        boolean z2 = zzvfVar.zzR;
        return Pair.create(zzkaVarArr, zzvtVarArr);
    }

    public final zzvf zzc() {
        zzvf zzvfVar;
        synchronized (this.zze) {
            zzvfVar = this.zzg;
        }
        return zzvfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvz
    public final void zzh() {
        zzvk zzvkVar;
        synchronized (this.zze) {
            if (zzen.zza >= 32 && (zzvkVar = this.zzh) != null) {
                zzvkVar.zzc();
            }
        }
        super.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzvz
    public final void zzi(zzk zzkVar) {
        boolean z;
        synchronized (this.zze) {
            z = !this.zzi.equals(zzkVar);
            this.zzi = zzkVar;
        }
        if (z) {
            zzt();
        }
    }

    public final void zzj(zzvd zzvdVar) {
        boolean z;
        zzvf zzvfVar = new zzvf(zzvdVar);
        synchronized (this.zze) {
            z = !this.zzg.equals(zzvfVar);
            this.zzg = zzvfVar;
        }
        if (z) {
            if (zzvfVar.zzP && this.zza == null) {
                zzdw.zze("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
            }
            zzr();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvz
    public final boolean zzl() {
        return true;
    }

    public zzvr(Context context) {
        zzum zzumVar = new zzum();
        zzvf zzd2 = zzvf.zzd(context);
        this.zze = new Object();
        this.zza = context != null ? context.getApplicationContext() : null;
        this.zzj = zzumVar;
        this.zzg = zzd2;
        this.zzi = zzk.zza;
        boolean z = false;
        if (context != null && zzen.zzX(context)) {
            z = true;
        }
        this.zzf = z;
        if (!z && context != null && zzen.zza >= 32) {
            this.zzh = zzvk.zza(context);
        }
        if (this.zzg.zzP && context == null) {
            zzdw.zze("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }
}
