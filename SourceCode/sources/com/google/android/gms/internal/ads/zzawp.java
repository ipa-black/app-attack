package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Stack;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzawp implements zzavg {
    public static final zzavi zza = new zzawm();
    private static final int zzb = zzbay.zzg("seig");
    private static final byte[] zzc = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private final SparseArray zzd;
    private final zzbar zze;
    private final zzbar zzf;
    private final zzbar zzg;
    private final zzbar zzh;
    private final zzbar zzi;
    private final byte[] zzj;
    private final Stack zzk;
    private final LinkedList zzl;
    private int zzm;
    private int zzn;
    private long zzo;
    private int zzp;
    private zzbar zzq;
    private long zzr;
    private long zzs;
    private zzawo zzt;
    private int zzu;
    private int zzv;
    private int zzw;
    private zzavh zzx;
    private boolean zzy;

    public zzawp() {
        this(0, null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzavc zza(java.util.List r14) {
        /*
            int r0 = r14.size()
            r1 = 0
            r2 = 0
            r4 = r1
            r3 = r2
        L8:
            if (r3 >= r0) goto Lb4
            java.lang.Object r5 = r14.get(r3)
            com.google.android.gms.internal.ads.zzawc r5 = (com.google.android.gms.internal.ads.zzawc) r5
            int r6 = r5.zzaR
            int r7 = com.google.android.gms.internal.ads.zzawd.zzX
            if (r6 != r7) goto Lb0
            if (r4 != 0) goto L1d
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
        L1d:
            com.google.android.gms.internal.ads.zzbar r5 = r5.zza
            byte[] r5 = r5.zza
            com.google.android.gms.internal.ads.zzbar r6 = new com.google.android.gms.internal.ads.zzbar
            r6.<init>(r5)
            int r7 = r6.zzd()
            r8 = 32
            if (r7 >= r8) goto L30
        L2e:
            r6 = r1
            goto L94
        L30:
            r6.zzv(r2)
            int r7 = r6.zze()
            int r8 = r6.zza()
            int r8 = r8 + 4
            if (r7 == r8) goto L40
            goto L2e
        L40:
            int r7 = r6.zze()
            int r8 = com.google.android.gms.internal.ads.zzawd.zzX
            if (r7 == r8) goto L49
            goto L2e
        L49:
            int r7 = r6.zze()
            int r7 = com.google.android.gms.internal.ads.zzawd.zzf(r7)
            r8 = 1
            if (r7 <= r8) goto L68
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r8 = "Unsupported pssh version: "
            r6.<init>(r8)
            r6.append(r7)
            java.lang.String r7 = "PsshAtomUtil"
            java.lang.String r6 = r6.toString()
            android.util.Log.w(r7, r6)
            goto L2e
        L68:
            java.util.UUID r9 = new java.util.UUID
            long r10 = r6.zzl()
            long r12 = r6.zzl()
            r9.<init>(r10, r12)
            if (r7 != r8) goto L80
            int r7 = r6.zzi()
            int r7 = r7 * 16
            r6.zzw(r7)
        L80:
            int r7 = r6.zzi()
            int r8 = r6.zza()
            if (r7 == r8) goto L8b
            goto L2e
        L8b:
            byte[] r8 = new byte[r7]
            r6.zzq(r8, r2, r7)
            android.util.Pair r6 = android.util.Pair.create(r9, r8)
        L94:
            if (r6 != 0) goto L98
            r6 = r1
            goto L9c
        L98:
            java.lang.Object r6 = r6.first
            java.util.UUID r6 = (java.util.UUID) r6
        L9c:
            if (r6 != 0) goto La6
            java.lang.String r5 = "FragmentedMp4Extractor"
            java.lang.String r6 = "Skipped pssh atom (failed to extract uuid)"
            android.util.Log.w(r5, r6)
            goto Lb0
        La6:
            com.google.android.gms.internal.ads.zzavb r7 = new com.google.android.gms.internal.ads.zzavb
            java.lang.String r8 = "video/mp4"
            r7.<init>(r6, r8, r5, r2)
            r4.add(r7)
        Lb0:
            int r3 = r3 + 1
            goto L8
        Lb4:
            if (r4 != 0) goto Lb7
            return r1
        Lb7:
            com.google.android.gms.internal.ads.zzavc r14 = new com.google.android.gms.internal.ads.zzavc
            r14.<init>(r4)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzawp.zza(java.util.List):com.google.android.gms.internal.ads.zzavc");
    }

    private final void zzb() {
        this.zzm = 0;
        this.zzp = 0;
    }

    private static void zzc(zzbar zzbarVar, int i, zzawx zzawxVar) throws zzatg {
        zzbarVar.zzv(i + 8);
        int zze = zzawd.zze(zzbarVar.zze());
        if ((zze & 1) != 0) {
            throw new zzatg("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (zze & 2) != 0;
        int zzi = zzbarVar.zzi();
        int i2 = zzawxVar.zze;
        if (zzi != i2) {
            throw new zzatg("Length mismatch: " + zzi + ", " + i2);
        }
        Arrays.fill(zzawxVar.zzm, 0, zzi, z);
        zzawxVar.zza(zzbarVar.zza());
        zzbarVar.zzq(zzawxVar.zzp.zza, 0, zzawxVar.zzo);
        zzawxVar.zzp.zzv(0);
        zzawxVar.zzq = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:246:0x0632, code lost:
        zzb();
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x0636, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:125:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x059a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzh(long r50) throws com.google.android.gms.internal.ads.zzatg {
        /*
            Method dump skipped, instructions count: 1591
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzawp.zzh(long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void zzd(zzavh zzavhVar) {
        this.zzx = zzavhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void zze(long j, long j2) {
        int size = this.zzd.size();
        for (int i = 0; i < size; i++) {
            ((zzawo) this.zzd.valueAt(i)).zzb();
        }
        this.zzl.clear();
        this.zzk.clear();
        zzb();
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
        r2 = r24.zzt;
        r3 = r2.zza;
        r5 = r3.zzh;
        r9 = r2.zze;
        r5 = r5[r9];
        r24.zzu = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008d, code lost:
        if (r3.zzl == false) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008f, code lost:
        r5 = r3.zzp;
        r10 = r3.zza.zza;
        r11 = r3.zzn;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0097, code lost:
        if (r11 == null) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009a, code lost:
        r11 = r2.zzc.zzh[r10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a0, code lost:
        r10 = r11.zza;
        r3 = r3.zzm[r9];
        r9 = r24.zzh;
        r11 = r9.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00aa, code lost:
        if (true == r3) goto L298;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ac, code lost:
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ae, code lost:
        r12 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b0, code lost:
        r11[0] = (byte) (r12 | r10);
        r9.zzv(0);
        r2 = r2.zzb;
        r2.zzb(r24.zzh, 1);
        r2.zzb(r5, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c1, code lost:
        if (r3 != false) goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c3, code lost:
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c5, code lost:
        r3 = r5.zzj();
        r5.zzw(-2);
        r3 = (r3 * 6) + 2;
        r2.zzb(r5, r3);
        r10 = (r10 + 1) + r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d5, code lost:
        r24.zzv = r10;
        r5 = r24.zzu + r10;
        r24.zzu = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00de, code lost:
        r24.zzv = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e6, code lost:
        if (r24.zzt.zzc.zzg != 1) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e8, code lost:
        r24.zzu = r5 - 8;
        r1.zzi(8, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ef, code lost:
        r24.zzm = 4;
        r24.zzw = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00f4, code lost:
        r2 = r24.zzt;
        r3 = r2.zza;
        r5 = r2.zzc;
        r9 = r2.zzb;
        r2 = r2.zze;
        r6 = r5.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0100, code lost:
        if (r6 != 0) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0102, code lost:
        r4 = r24.zzv;
        r6 = r24.zzu;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0106, code lost:
        if (r4 >= r6) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0108, code lost:
        r24.zzv += r9.zzd(r1, r6 - r4, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0113, code lost:
        r10 = r24.zzf.zza;
        r10[0] = 0;
        r10[1] = 0;
        r10[2] = 0;
        r4 = r6 + 1;
        r6 = 4 - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0126, code lost:
        if (r24.zzv >= r24.zzu) goto L296;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0128, code lost:
        r11 = r24.zzw;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x012a, code lost:
        if (r11 != 0) goto L289;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x012c, code lost:
        r1.zzh(r10, r6, r4, false);
        r24.zzf.zzv(0);
        r24.zzw = r24.zzf.zzi() - 1;
        r24.zze.zzv(0);
        r9.zzb(r24.zze, 4);
        r9.zzb(r24.zzf, 1);
        r24.zzv += 5;
        r24.zzu += r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x015a, code lost:
        r11 = r9.zzd(r1, r11, false);
        r24.zzv += r11;
        r24.zzw -= r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0169, code lost:
        r10 = (r3.zzj[r2] + r3.zzi[r2]) * 1000;
        r1 = r3.zzl;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0178, code lost:
        if (true == r1) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x017a, code lost:
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x017c, code lost:
        r4 = 1073741824;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x017e, code lost:
        r12 = r4 | (r3.zzk[r2] ? 1 : 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0184, code lost:
        if (r1 == false) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0186, code lost:
        r1 = r3.zzn;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0188, code lost:
        if (r1 != null) goto L268;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x018a, code lost:
        r1 = r5.zzh[r3.zza.zza];
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0192, code lost:
        r2 = r24.zzt;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0196, code lost:
        if (r1 == r2.zzi) goto L281;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0198, code lost:
        r2 = new com.google.android.gms.internal.ads.zzavo(1, r1.zzb);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01a0, code lost:
        r2 = r2.zzh;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01a2, code lost:
        r15 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01a4, code lost:
        r1 = null;
        r15 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01a6, code lost:
        r2 = r24.zzt;
        r2.zzh = r15;
        r2.zzi = r1;
        r9.zzc(r10, r12, r24.zzu, 0, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01b8, code lost:
        if (r24.zzl.isEmpty() == false) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01ba, code lost:
        r1 = r24.zzt;
        r1.zze++;
        r2 = r1.zzf + 1;
        r1.zzf = r2;
        r3 = r3.zzg;
        r4 = r1.zzg;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01cc, code lost:
        if (r2 != r3[r4]) goto L277;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01ce, code lost:
        r1.zzg = r4 + 1;
        r1.zzf = 0;
        r24.zzt = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01d6, code lost:
        r24.zzm = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01d9, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01da, code lost:
        r2 = (com.google.android.gms.internal.ads.zzawn) r24.zzl.removeFirst();
        r3 = r2.zzb;
        r2 = r2.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01e7, code lost:
        throw null;
     */
    @Override // com.google.android.gms.internal.ads.zzavg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzf(com.google.android.gms.internal.ads.zzavf r25, com.google.android.gms.internal.ads.zzavl r26) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzawp.zzf(com.google.android.gms.internal.ads.zzavf, com.google.android.gms.internal.ads.zzavl):int");
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final boolean zzg(zzavf zzavfVar) throws IOException, InterruptedException {
        return zzawu.zza(zzavfVar);
    }

    public zzawp(int i, zzbav zzbavVar, zzawv zzawvVar) {
        this.zzi = new zzbar(16);
        this.zze = new zzbar(zzbap.zza);
        this.zzf = new zzbar(5);
        this.zzg = new zzbar();
        this.zzh = new zzbar(1);
        this.zzj = new byte[16];
        this.zzk = new Stack();
        this.zzl = new LinkedList();
        this.zzd = new SparseArray();
        this.zzs = C.TIME_UNSET;
        zzb();
    }
}
