package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzafr implements zzzj, zzaam {
    public static final zzzq zza = new zzzq() { // from class: com.google.android.gms.internal.ads.zzafo
        @Override // com.google.android.gms.internal.ads.zzzq
        public final zzzj[] zza() {
            zzzq zzzqVar = zzafr.zza;
            return new zzzj[]{new zzafr(0)};
        }

        @Override // com.google.android.gms.internal.ads.zzzq
        public final /* synthetic */ zzzj[] zzb(Uri uri, Map map) {
            return zzzp.zza(this, uri, map);
        }
    };
    private final zzef zzb;
    private final zzef zzc;
    private final zzef zzd;
    private final zzef zze;
    private final ArrayDeque zzf;
    private final zzafu zzg;
    private final List zzh;
    private int zzi;
    private int zzj;
    private long zzk;
    private int zzl;
    private zzef zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private zzzm zzr;
    private zzafq[] zzs;
    private long[][] zzt;
    private int zzu;
    private long zzv;
    private int zzw;
    private zzadu zzx;

    public zzafr() {
        this(0);
    }

    private static int zzf(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static int zzi(zzafz zzafzVar, long j) {
        int zza2 = zzafzVar.zza(j);
        return zza2 == -1 ? zzafzVar.zzb(j) : zza2;
    }

    private static long zzj(zzafz zzafzVar, long j, long j2) {
        int zzi = zzi(zzafzVar, j);
        return zzi == -1 ? j2 : Math.min(zzafzVar.zzc[zzi], j2);
    }

    private final void zzk() {
        this.zzi = 0;
        this.zzl = 0;
    }

    private final void zzl(long j) throws zzbu {
        zzafr zzafrVar;
        zzbq zzbqVar;
        zzbq zzbqVar2;
        long j2;
        List list;
        int i;
        int i2;
        long j3;
        ArrayList arrayList;
        int i3;
        zzafr zzafrVar2 = this;
        while (!zzafrVar2.zzf.isEmpty() && ((zzaew) zzafrVar2.zzf.peek()).zza == j) {
            zzaew zzaewVar = (zzaew) zzafrVar2.zzf.pop();
            if (zzaewVar.zzd == 1836019574) {
                ArrayList arrayList2 = new ArrayList();
                boolean z = zzafrVar2.zzw == 1;
                zzzy zzzyVar = new zzzy();
                zzaex zzb = zzaewVar.zzb(Atom.TYPE_udta);
                if (zzb != null) {
                    Pair zza2 = zzafg.zza(zzb);
                    zzbq zzbqVar3 = (zzbq) zza2.first;
                    zzbq zzbqVar4 = (zzbq) zza2.second;
                    if (zzbqVar3 != null) {
                        zzzyVar.zzb(zzbqVar3);
                    }
                    zzbqVar = zzbqVar4;
                    zzbqVar2 = zzbqVar3;
                } else {
                    zzbqVar = null;
                    zzbqVar2 = null;
                }
                zzaew zza3 = zzaewVar.zza(Atom.TYPE_meta);
                zzbq zzb2 = zza3 != null ? zzafg.zzb(zza3) : null;
                List zzc = zzafg.zzc(zzaewVar, zzzyVar, C.TIME_UNSET, null, false, z, new zzfxt() { // from class: com.google.android.gms.internal.ads.zzafp
                    @Override // com.google.android.gms.internal.ads.zzfxt
                    public final Object apply(Object obj) {
                        zzafw zzafwVar = (zzafw) obj;
                        zzzq zzzqVar = zzafr.zza;
                        return zzafwVar;
                    }
                });
                int size = zzc.size();
                long j4 = C.TIME_UNSET;
                long j5 = -9223372036854775807L;
                int i4 = 0;
                int i5 = -1;
                while (true) {
                    j2 = 0;
                    if (i4 >= size) {
                        break;
                    }
                    zzafz zzafzVar = (zzafz) zzc.get(i4);
                    if (zzafzVar.zzb == 0) {
                        list = zzc;
                        i = size;
                        arrayList = arrayList2;
                        j3 = j4;
                    } else {
                        zzafw zzafwVar = zzafzVar.zza;
                        list = zzc;
                        long j6 = zzafwVar.zze;
                        if (j6 == j4) {
                            j6 = zzafzVar.zzh;
                        }
                        long max = Math.max(j5, j6);
                        i = size;
                        zzafq zzafqVar = new zzafq(zzafwVar, zzafzVar, zzafrVar2.zzr.zzv(i4, zzafwVar.zzb));
                        if (MimeTypes.AUDIO_TRUEHD.equals(zzafwVar.zzf.zzm)) {
                            i2 = zzafzVar.zze * 16;
                        } else {
                            i2 = zzafzVar.zze + 30;
                        }
                        zzad zzb3 = zzafwVar.zzf.zzb();
                        zzb3.zzL(i2);
                        if (zzafwVar.zzb == 2 && j6 > 0 && (i3 = zzafzVar.zzb) > 1) {
                            zzb3.zzE(i3 / (((float) j6) / 1000000.0f));
                        }
                        int i6 = zzafwVar.zzb;
                        int i7 = zzafn.zzb;
                        if (i6 == 1 && zzzyVar.zza()) {
                            zzb3.zzC(zzzyVar.zza);
                            zzb3.zzD(zzzyVar.zzb);
                        }
                        int i8 = zzafwVar.zzb;
                        zzbq[] zzbqVarArr = new zzbq[2];
                        zzbqVarArr[0] = zzbqVar;
                        zzbqVarArr[1] = zzafrVar2.zzh.isEmpty() ? null : new zzbq(zzafrVar2.zzh);
                        ArrayList arrayList3 = arrayList2;
                        zzbq zzbqVar5 = new zzbq(C.TIME_UNSET, new zzbp[0]);
                        if (i8 == 1) {
                            if (zzbqVar2 != null) {
                                zzbqVar5 = zzbqVar2;
                            }
                        } else if (i8 == 2 && zzb2 != null) {
                            for (int i9 = 0; i9 < zzb2.zza(); i9++) {
                                zzbp zzb4 = zzb2.zzb(i9);
                                if (zzb4 instanceof zzadr) {
                                    zzadr zzadrVar = (zzadr) zzb4;
                                    if (MdtaMetadataEntry.KEY_ANDROID_CAPTURE_FPS.equals(zzadrVar.zza)) {
                                        zzbqVar5 = new zzbq(C.TIME_UNSET, zzadrVar);
                                        j3 = -9223372036854775807L;
                                        break;
                                    }
                                }
                            }
                        }
                        j3 = C.TIME_UNSET;
                        for (int i10 = 0; i10 < 2; i10++) {
                            zzbqVar5 = zzbqVar5.zzd(zzbqVarArr[i10]);
                        }
                        if (zzbqVar5.zza() > 0) {
                            zzb3.zzM(zzbqVar5);
                        }
                        zzafqVar.zzc.zzk(zzb3.zzY());
                        if (zzafwVar.zzb == 2 && i5 == -1) {
                            i5 = arrayList3.size();
                        }
                        arrayList = arrayList3;
                        arrayList.add(zzafqVar);
                        j5 = max;
                    }
                    i4++;
                    zzafrVar2 = this;
                    j4 = j3;
                    arrayList2 = arrayList;
                    zzc = list;
                    size = i;
                }
                zzafrVar = zzafrVar2;
                zzafrVar.zzu = i5;
                zzafrVar.zzv = j5;
                zzafq[] zzafqVarArr = (zzafq[]) arrayList2.toArray(new zzafq[0]);
                zzafrVar.zzs = zzafqVarArr;
                int length = zzafqVarArr.length;
                long[][] jArr = new long[length];
                int[] iArr = new int[length];
                long[] jArr2 = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i11 = 0; i11 < zzafqVarArr.length; i11++) {
                    jArr[i11] = new long[zzafqVarArr[i11].zzb.zzb];
                    jArr2[i11] = zzafqVarArr[i11].zzb.zzf[0];
                }
                int i12 = 0;
                while (i12 < zzafqVarArr.length) {
                    long j7 = Long.MAX_VALUE;
                    int i13 = -1;
                    for (int i14 = 0; i14 < zzafqVarArr.length; i14++) {
                        if (!zArr[i14]) {
                            long j8 = jArr2[i14];
                            if (j8 <= j7) {
                                i13 = i14;
                                j7 = j8;
                            }
                        }
                    }
                    int i15 = iArr[i13];
                    long[] jArr3 = jArr[i13];
                    jArr3[i15] = j2;
                    zzafz zzafzVar2 = zzafqVarArr[i13].zzb;
                    j2 += zzafzVar2.zzd[i15];
                    int i16 = i15 + 1;
                    iArr[i13] = i16;
                    if (i16 < jArr3.length) {
                        jArr2[i13] = zzafzVar2.zzf[i16];
                    } else {
                        zArr[i13] = true;
                        i12++;
                    }
                }
                zzafrVar.zzt = jArr;
                zzafrVar.zzr.zzC();
                zzafrVar.zzr.zzN(zzafrVar);
                zzafrVar.zzf.clear();
                zzafrVar.zzi = 2;
            } else {
                zzafrVar = zzafrVar2;
                if (!zzafrVar.zzf.isEmpty()) {
                    ((zzaew) zzafrVar.zzf.peek()).zzc(zzaewVar);
                }
            }
            zzafrVar2 = zzafrVar;
        }
        if (zzafrVar2.zzi != 2) {
            zzk();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzb(zzzm zzzmVar) {
        this.zzr = zzzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzc(long j, long j2) {
        zzafq[] zzafqVarArr;
        this.zzf.clear();
        this.zzl = 0;
        this.zzn = -1;
        this.zzo = 0;
        this.zzp = 0;
        this.zzq = 0;
        if (j == 0) {
            zzk();
            return;
        }
        for (zzafq zzafqVar : this.zzs) {
            zzafz zzafzVar = zzafqVar.zzb;
            int zza2 = zzafzVar.zza(j2);
            if (zza2 == -1) {
                zza2 = zzafzVar.zzb(j2);
            }
            zzafqVar.zze = zza2;
            zzaar zzaarVar = zzafqVar.zzd;
            if (zzaarVar != null) {
                zzaarVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final boolean zzd(zzzk zzzkVar) throws IOException {
        return zzafv.zzb(zzzkVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final long zze() {
        return this.zzv;
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final zzaak zzg(long j) {
        long j2;
        long j3;
        int zzb;
        zzafq[] zzafqVarArr = this.zzs;
        if (zzafqVarArr.length == 0) {
            zzaan zzaanVar = zzaan.zza;
            return new zzaak(zzaanVar, zzaanVar);
        }
        int i = this.zzu;
        long j4 = -1;
        if (i != -1) {
            zzafz zzafzVar = zzafqVarArr[i].zzb;
            int zzi = zzi(zzafzVar, j);
            if (zzi == -1) {
                zzaan zzaanVar2 = zzaan.zza;
                return new zzaak(zzaanVar2, zzaanVar2);
            }
            long j5 = zzafzVar.zzf[zzi];
            j2 = zzafzVar.zzc[zzi];
            if (j5 >= j || zzi >= zzafzVar.zzb - 1 || (zzb = zzafzVar.zzb(j)) == -1 || zzb == zzi) {
                j3 = -9223372036854775807L;
            } else {
                j3 = zzafzVar.zzf[zzb];
                j4 = zzafzVar.zzc[zzb];
            }
            j = j5;
        } else {
            j2 = Long.MAX_VALUE;
            j3 = -9223372036854775807L;
        }
        int i2 = 0;
        while (true) {
            zzafq[] zzafqVarArr2 = this.zzs;
            if (i2 >= zzafqVarArr2.length) {
                break;
            }
            if (i2 != this.zzu) {
                zzafz zzafzVar2 = zzafqVarArr2[i2].zzb;
                long zzj = zzj(zzafzVar2, j, j2);
                if (j3 != C.TIME_UNSET) {
                    j4 = zzj(zzafzVar2, j3, j4);
                }
                j2 = zzj;
            }
            i2++;
        }
        zzaan zzaanVar3 = new zzaan(j, j2);
        return j3 == C.TIME_UNSET ? new zzaak(zzaanVar3, zzaanVar3) : new zzaak(zzaanVar3, new zzaan(j3, j4));
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final boolean zzh() {
        return true;
    }

    public zzafr(int i) {
        this.zzi = 0;
        this.zzg = new zzafu();
        this.zzh = new ArrayList();
        this.zze = new zzef(16);
        this.zzf = new ArrayDeque();
        this.zzb = new zzef(zzaag.zza);
        this.zzc = new zzef(4);
        this.zzd = new zzef();
        this.zzn = -1;
        this.zzr = zzzm.zza;
        this.zzs = new zzafq[0];
    }

    /* JADX WARN: Code restructure failed: missing block: B:194:0x037c, code lost:
        r3 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007f  */
    @Override // com.google.android.gms.internal.ads.zzzj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzzk r33, com.google.android.gms.internal.ads.zzaaj r34) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1031
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafr.zza(com.google.android.gms.internal.ads.zzzk, com.google.android.gms.internal.ads.zzaaj):int");
    }
}
