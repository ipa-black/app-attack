package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.SparseArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzafm implements zzzj {
    public static final zzzq zza = new zzzq() { // from class: com.google.android.gms.internal.ads.zzafi
        @Override // com.google.android.gms.internal.ads.zzzq
        public final zzzj[] zza() {
            zzzq zzzqVar = zzafm.zza;
            return new zzzj[]{new zzafm(0, null)};
        }

        @Override // com.google.android.gms.internal.ads.zzzq
        public final /* synthetic */ zzzj[] zzb(Uri uri, Map map) {
            return zzzp.zza(this, uri, map);
        }
    };
    private static final byte[] zzb = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final zzaf zzc;
    private int zzA;
    private int zzB;
    private boolean zzC;
    private zzzm zzD;
    private zzaaq[] zzE;
    private zzaaq[] zzF;
    private boolean zzG;
    private final List zzd;
    private final SparseArray zze;
    private final zzef zzf;
    private final zzef zzg;
    private final zzef zzh;
    private final byte[] zzi;
    private final zzef zzj;
    private final zzach zzk;
    private final zzef zzl;
    private final ArrayDeque zzm;
    private final ArrayDeque zzn;
    private int zzo;
    private int zzp;
    private long zzq;
    private int zzr;
    private zzef zzs;
    private long zzt;
    private int zzu;
    private long zzv;
    private long zzw;
    private long zzx;
    private zzafl zzy;
    private int zzz;

    static {
        zzad zzadVar = new zzad();
        zzadVar.zzS(MimeTypes.APPLICATION_EMSG);
        zzc = zzadVar.zzY();
    }

    public zzafm() {
        this(0, null);
    }

    private static int zze(int i) throws zzbu {
        if (i >= 0) {
            return i;
        }
        throw zzbu.zza("Unexpected negative value: " + i, null);
    }

    private static zzx zzf(List list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            zzaex zzaexVar = (zzaex) list.get(i);
            if (zzaexVar.zzd == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] zzH = zzaexVar.zza.zzH();
                UUID zza2 = zzaft.zza(zzH);
                if (zza2 == null) {
                    zzdw.zze("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new zzw(zza2, null, MimeTypes.VIDEO_MP4, zzH));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new zzx(arrayList);
    }

    private final void zzg() {
        this.zzo = 0;
        this.zzr = 0;
    }

    private static void zzh(zzef zzefVar, int i, zzafy zzafyVar) throws zzbu {
        zzefVar.zzF(i + 8);
        int zze = zzefVar.zze();
        if ((zze & 1) != 0) {
            throw zzbu.zzc("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (zze & 2) != 0;
        int zzn = zzefVar.zzn();
        if (zzn == 0) {
            Arrays.fill(zzafyVar.zzl, 0, zzafyVar.zze, false);
            return;
        }
        int i2 = zzafyVar.zze;
        if (zzn != i2) {
            throw zzbu.zza("Senc sample count " + zzn + " is different from fragment sample count" + i2, null);
        }
        Arrays.fill(zzafyVar.zzl, 0, zzn, z);
        zzafyVar.zza(zzefVar.zza());
        zzef zzefVar2 = zzafyVar.zzn;
        zzefVar.zzB(zzefVar2.zzH(), 0, zzefVar2.zzd());
        zzafyVar.zzn.zzF(0);
        zzafyVar.zzo = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x0311  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzi(long r45) throws com.google.android.gms.internal.ads.zzbu {
        /*
            Method dump skipped, instructions count: 1767
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafm.zzi(long):void");
    }

    private static final zzafh zzj(SparseArray sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return (zzafh) sparseArray.valueAt(0);
        }
        zzafh zzafhVar = (zzafh) sparseArray.get(i);
        zzafhVar.getClass();
        return zzafhVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0247, code lost:
        r5.zzs(r10, r20, r33.zzz, 0, r23);
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x025a, code lost:
        if (r33.zzn.isEmpty() != false) goto L354;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x025c, code lost:
        r1 = (com.google.android.gms.internal.ads.zzafk) r33.zzn.removeFirst();
        r33.zzu -= r1.zzc;
        r3 = r1.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x026f, code lost:
        if (r1.zzb == false) goto L348;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0271, code lost:
        r3 = r3 + r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0272, code lost:
        r5 = r33.zzE;
        r6 = r5.length;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0276, code lost:
        if (r8 >= r6) goto L353;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0278, code lost:
        r5[r8].zzs(r3, 1, r1.zzc, r33.zzu, null);
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0293, code lost:
        if (r2.zzk() != false) goto L358;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0295, code lost:
        r33.zzy = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0297, code lost:
        r33.zzo = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x029b, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0099, code lost:
        r4 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009c, code lost:
        if (r33.zzo != 3) goto L333;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009e, code lost:
        r3 = r2.zzb();
        r33.zzz = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a8, code lost:
        if (r2.zzf >= r2.zzi) goto L325;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:?, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00aa, code lost:
        ((com.google.android.gms.internal.ads.zzyz) r1).zzo(r3, false);
        r1 = r2.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b3, code lost:
        if (r1 != null) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b6, code lost:
        r3 = r2.zzb.zzn;
        r1 = r1.zzd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bc, code lost:
        if (r1 == 0) goto L317;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00be, code lost:
        r3.zzG(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c9, code lost:
        if (r2.zzb.zzb(r2.zzf) == false) goto L320;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cb, code lost:
        r3.zzG(r3.zzo() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d7, code lost:
        if (r2.zzk() != false) goto L323;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d9, code lost:
        r33.zzy = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00db, code lost:
        r33.zzo = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e6, code lost:
        if (r2.zzd.zza.zzg != 1) goto L328;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e8, code lost:
        r33.zzz = r3 - 8;
        ((com.google.android.gms.internal.ads.zzyz) r1).zzo(8, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0102, code lost:
        if (com.google.android.exoplayer2.util.MimeTypes.AUDIO_AC4.equals(r2.zzd.zza.zzf.zzm) == false) goto L332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0104, code lost:
        r33.zzA = r2.zzc(r33.zzz, 7);
        com.google.android.gms.internal.ads.zzyn.zzb(r33.zzz, r33.zzj);
        r2.zza.zzq(r33.zzj, 7);
        r3 = r33.zzA + 7;
        r33.zzA = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0121, code lost:
        r3 = r2.zzc(r33.zzz, 0);
        r33.zzA = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0129, code lost:
        r33.zzz += r3;
        r33.zzo = 4;
        r33.zzB = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0133, code lost:
        r3 = r2.zzd.zza;
        r5 = r2.zza;
        r10 = r2.zze();
        r6 = r3.zzj;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x013f, code lost:
        if (r6 != 0) goto L361;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0141, code lost:
        r3 = r33.zzA;
        r4 = r33.zzz;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0145, code lost:
        if (r3 >= r4) goto L338;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0147, code lost:
        r33.zzA += r5.zze(r1, r4 - r3, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0152, code lost:
        r13 = r33.zzg.zzH();
        r13[0] = 0;
        r13[1] = 0;
        r13[2] = 0;
        r14 = r6 + 1;
        r6 = 4 - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0168, code lost:
        if (r33.zzA >= r33.zzz) goto L392;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x016a, code lost:
        r12 = r33.zzB;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x016e, code lost:
        if (r12 != 0) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0170, code lost:
        ((com.google.android.gms.internal.ads.zzyz) r1).zzn(r13, r6, r14, r9);
        r33.zzg.zzF(r9);
        r12 = r33.zzg.zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0181, code lost:
        if (r12 <= 0) goto L383;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0183, code lost:
        r33.zzB = r12 - 1;
        r33.zzf.zzF(r9);
        r5.zzq(r33.zzf, 4);
        r5.zzq(r33.zzg, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x019a, code lost:
        if (r33.zzF.length <= 0) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x019c, code lost:
        r12 = r3.zzf.zzm;
        r17 = r13[4];
        r9 = com.google.android.gms.internal.ads.zzaag.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01aa, code lost:
        if ("video/avc".equals(r12) == false) goto L378;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01ae, code lost:
        if ((r17 & 31) == r4) goto L374;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01b1, code lost:
        r9 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01b7, code lost:
        if ("video/hevc".equals(r12) == false) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01be, code lost:
        if (((r17 & 126) >> r8) != 39) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01c1, code lost:
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01c2, code lost:
        r33.zzC = r9;
        r33.zzA += 5;
        r33.zzz += r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01d6, code lost:
        throw com.google.android.gms.internal.ads.zzbu.zza("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01d9, code lost:
        if (r33.zzC == false) goto L391;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01db, code lost:
        r33.zzh.zzC(r12);
        ((com.google.android.gms.internal.ads.zzyz) r1).zzn(r33.zzh.zzH(), 0, r33.zzB, false);
        r5.zzq(r33.zzh, r33.zzB);
        r4 = r33.zzB;
        r8 = r33.zzh;
        r8 = com.google.android.gms.internal.ads.zzaag.zzb(r8.zzH(), r8.zzd());
        r33.zzh.zzF("video/hevc".equals(r3.zzf.zzm) ? 1 : 0);
        r33.zzh.zzE(r8);
        com.google.android.gms.internal.ads.zzyw.zza(r10, r33.zzh, r33.zzF);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0220, code lost:
        r4 = r5.zze(r1, r12, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0226, code lost:
        r33.zzA += r4;
        r33.zzB -= r4;
        r4 = 6;
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0232, code lost:
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0236, code lost:
        r20 = r2.zza();
        r1 = r2.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x023e, code lost:
        if (r1 == null) goto L360;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0240, code lost:
        r23 = r1.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0245, code lost:
        r23 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r9v10 */
    @Override // com.google.android.gms.internal.ads.zzzj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzzk r34, com.google.android.gms.internal.ads.zzaaj r35) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1864
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafm.zza(com.google.android.gms.internal.ads.zzzk, com.google.android.gms.internal.ads.zzaaj):int");
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzb(zzzm zzzmVar) {
        this.zzD = zzzmVar;
        zzg();
        zzaaq[] zzaaqVarArr = new zzaaq[2];
        this.zzE = zzaaqVarArr;
        int i = 0;
        zzaaq[] zzaaqVarArr2 = (zzaaq[]) zzen.zzae(zzaaqVarArr, 0);
        this.zzE = zzaaqVarArr2;
        for (zzaaq zzaaqVar : zzaaqVarArr2) {
            zzaaqVar.zzk(zzc);
        }
        this.zzF = new zzaaq[this.zzd.size()];
        int i2 = 100;
        while (i < this.zzF.length) {
            int i3 = i2 + 1;
            zzaaq zzv = this.zzD.zzv(i2, 3);
            zzv.zzk((zzaf) this.zzd.get(i));
            this.zzF[i] = zzv;
            i++;
            i2 = i3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzc(long j, long j2) {
        int size = this.zze.size();
        for (int i = 0; i < size; i++) {
            ((zzafl) this.zze.valueAt(i)).zzi();
        }
        this.zzn.clear();
        this.zzu = 0;
        this.zzv = j2;
        this.zzm.clear();
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final boolean zzd(zzzk zzzkVar) throws IOException {
        return zzafv.zza(zzzkVar);
    }

    public zzafm(int i, zzel zzelVar) {
        this.zzd = Collections.unmodifiableList(Collections.emptyList());
        this.zzk = new zzach();
        this.zzl = new zzef(16);
        this.zzf = new zzef(zzaag.zza);
        this.zzg = new zzef(5);
        this.zzh = new zzef();
        byte[] bArr = new byte[16];
        this.zzi = bArr;
        this.zzj = new zzef(bArr);
        this.zzm = new ArrayDeque();
        this.zzn = new ArrayDeque();
        this.zze = new SparseArray();
        this.zzw = C.TIME_UNSET;
        this.zzv = C.TIME_UNSET;
        this.zzx = C.TIME_UNSET;
        this.zzD = zzzm.zza;
        this.zzE = new zzaaq[0];
        this.zzF = new zzaaq[0];
    }
}
