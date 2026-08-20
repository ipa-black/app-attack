package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaay implements zzzj {
    private static final int[] zzc;
    private static final int zzf;
    private final byte[] zzg;
    private boolean zzh;
    private long zzi;
    private int zzj;
    private int zzk;
    private boolean zzl;
    private int zzm;
    private int zzn;
    private long zzo;
    private zzzm zzp;
    private zzaaq zzq;
    private zzaam zzr;
    private boolean zzs;
    public static final zzzq zza = new zzzq() { // from class: com.google.android.gms.internal.ads.zzaax
        @Override // com.google.android.gms.internal.ads.zzzq
        public final zzzj[] zza() {
            zzzq zzzqVar = zzaay.zza;
            return new zzzj[]{new zzaay(0)};
        }

        @Override // com.google.android.gms.internal.ads.zzzq
        public final /* synthetic */ zzzj[] zzb(Uri uri, Map map) {
            return zzzp.zza(this, uri, map);
        }
    };
    private static final int[] zzb = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    private static final byte[] zzd = zzen.zzaa("#!AMR\n");
    private static final byte[] zze = zzen.zzaa("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        zzc = iArr;
        zzf = iArr[8];
    }

    public zzaay() {
        this(0);
    }

    public zzaay(int i) {
        this.zzg = new byte[1];
        this.zzm = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003d A[Catch: EOFException -> 0x008b, TryCatch #0 {EOFException -> 0x008b, blocks: (B:4:0x000b, B:6:0x001f, B:20:0x003d, B:22:0x0046, B:21:0x0042, B:31:0x0061, B:32:0x0079, B:33:0x007a, B:34:0x008a), top: B:44:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0042 A[Catch: EOFException -> 0x008b, TryCatch #0 {EOFException -> 0x008b, blocks: (B:4:0x000b, B:6:0x001f, B:20:0x003d, B:22:0x0046, B:21:0x0042, B:31:0x0061, B:32:0x0079, B:33:0x007a, B:34:0x008a), top: B:44:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0054  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"trackOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zze(com.google.android.gms.internal.ads.zzzk r14) throws java.io.IOException {
        /*
            r13 = this;
            java.lang.String r0 = "Illegal AMR "
            java.lang.String r1 = "Invalid padding bits for frame header "
            int r2 = r13.zzk
            r3 = -1
            r4 = 1
            r5 = 0
            if (r2 != 0) goto L8c
            r14.zzj()     // Catch: java.io.EOFException -> L8b
            byte[] r2 = r13.zzg     // Catch: java.io.EOFException -> L8b
            r6 = r14
            com.google.android.gms.internal.ads.zzyz r6 = (com.google.android.gms.internal.ads.zzyz) r6     // Catch: java.io.EOFException -> L8b
            r6.zzm(r2, r5, r4, r5)     // Catch: java.io.EOFException -> L8b
            byte[] r2 = r13.zzg     // Catch: java.io.EOFException -> L8b
            r2 = r2[r5]     // Catch: java.io.EOFException -> L8b
            r6 = r2 & 131(0x83, float:1.84E-43)
            r7 = 0
            if (r6 > 0) goto L7a
            int r1 = r2 >> 3
            r1 = r1 & 15
            boolean r2 = r13.zzh     // Catch: java.io.EOFException -> L8b
            if (r2 == 0) goto L30
            r6 = 10
            if (r1 < r6) goto L3b
            r6 = 13
            if (r1 <= r6) goto L30
            goto L3b
        L30:
            if (r2 != 0) goto L5a
            r6 = 12
            if (r1 < r6) goto L3b
            r6 = 14
            if (r1 > r6) goto L3b
            goto L5a
        L3b:
            if (r2 == 0) goto L42
            int[] r0 = com.google.android.gms.internal.ads.zzaay.zzc     // Catch: java.io.EOFException -> L8b
            r0 = r0[r1]     // Catch: java.io.EOFException -> L8b
            goto L46
        L42:
            int[] r0 = com.google.android.gms.internal.ads.zzaay.zzb     // Catch: java.io.EOFException -> L8b
            r0 = r0[r1]     // Catch: java.io.EOFException -> L8b
        L46:
            r2 = r0
            r13.zzj = r2     // Catch: java.io.EOFException -> L8b
            r13.zzk = r2
            int r0 = r13.zzm
            if (r0 != r3) goto L52
            r13.zzm = r2
            r0 = r2
        L52:
            if (r0 != r2) goto L8c
            int r0 = r13.zzn
            int r0 = r0 + r4
            r13.zzn = r0
            goto L8c
        L5a:
            java.lang.String r14 = "WB"
            java.lang.String r5 = "NB"
            if (r4 == r2) goto L61
            r14 = r5
        L61:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.EOFException -> L8b
            r2.<init>(r0)     // Catch: java.io.EOFException -> L8b
            r2.append(r14)     // Catch: java.io.EOFException -> L8b
            java.lang.String r14 = " frame type "
            r2.append(r14)     // Catch: java.io.EOFException -> L8b
            r2.append(r1)     // Catch: java.io.EOFException -> L8b
            java.lang.String r14 = r2.toString()     // Catch: java.io.EOFException -> L8b
            com.google.android.gms.internal.ads.zzbu r14 = com.google.android.gms.internal.ads.zzbu.zza(r14, r7)     // Catch: java.io.EOFException -> L8b
            throw r14     // Catch: java.io.EOFException -> L8b
        L7a:
            java.lang.StringBuilder r14 = new java.lang.StringBuilder     // Catch: java.io.EOFException -> L8b
            r14.<init>(r1)     // Catch: java.io.EOFException -> L8b
            r14.append(r2)     // Catch: java.io.EOFException -> L8b
            java.lang.String r14 = r14.toString()     // Catch: java.io.EOFException -> L8b
            com.google.android.gms.internal.ads.zzbu r14 = com.google.android.gms.internal.ads.zzbu.zza(r14, r7)     // Catch: java.io.EOFException -> L8b
            throw r14     // Catch: java.io.EOFException -> L8b
        L8b:
            return r3
        L8c:
            com.google.android.gms.internal.ads.zzaaq r0 = r13.zzq
            int r14 = com.google.android.gms.internal.ads.zzaao.zza(r0, r14, r2, r4)
            if (r14 != r3) goto L95
            return r3
        L95:
            int r0 = r13.zzk
            int r0 = r0 - r14
            r13.zzk = r0
            if (r0 <= 0) goto L9d
            return r5
        L9d:
            com.google.android.gms.internal.ads.zzaaq r6 = r13.zzq
            long r7 = r13.zzi
            int r10 = r13.zzj
            r11 = 0
            r12 = 0
            r9 = 1
            r6.zzs(r7, r9, r10, r11, r12)
            long r0 = r13.zzi
            r2 = 20000(0x4e20, double:9.8813E-320)
            long r0 = r0 + r2
            r13.zzi = r0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaay.zze(com.google.android.gms.internal.ads.zzzk):int");
    }

    private static boolean zzf(zzzk zzzkVar, byte[] bArr) throws IOException {
        zzzkVar.zzj();
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        ((zzyz) zzzkVar).zzm(bArr2, 0, length, false);
        return Arrays.equals(bArr2, bArr);
    }

    private final boolean zzg(zzzk zzzkVar) throws IOException {
        byte[] bArr = zzd;
        if (zzf(zzzkVar, bArr)) {
            this.zzh = false;
            ((zzyz) zzzkVar).zzo(bArr.length, false);
            return true;
        }
        byte[] bArr2 = zze;
        if (zzf(zzzkVar, bArr2)) {
            this.zzh = true;
            ((zzyz) zzzkVar).zzo(bArr2.length, false);
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final int zza(zzzk zzzkVar, zzaaj zzaajVar) throws IOException {
        zzdd.zzb(this.zzq);
        int i = zzen.zza;
        if (zzzkVar.zzf() != 0 || zzg(zzzkVar)) {
            if (!this.zzs) {
                this.zzs = true;
                boolean z = this.zzh;
                String str = true != z ? MimeTypes.AUDIO_AMR_NB : MimeTypes.AUDIO_AMR_WB;
                int i2 = true != z ? 8000 : AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND;
                zzaaq zzaaqVar = this.zzq;
                zzad zzadVar = new zzad();
                zzadVar.zzS(str);
                zzadVar.zzL(zzf);
                zzadVar.zzw(1);
                zzadVar.zzT(i2);
                zzaaqVar.zzk(zzadVar.zzY());
            }
            int zze2 = zze(zzzkVar);
            if (this.zzl) {
                return zze2;
            }
            zzaal zzaalVar = new zzaal(C.TIME_UNSET, 0L);
            this.zzr = zzaalVar;
            this.zzp.zzN(zzaalVar);
            this.zzl = true;
            return zze2;
        }
        throw zzbu.zza("Could not find AMR header.", null);
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzb(zzzm zzzmVar) {
        this.zzp = zzzmVar;
        this.zzq = zzzmVar.zzv(0, 1);
        zzzmVar.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzc(long j, long j2) {
        this.zzi = 0L;
        this.zzj = 0;
        this.zzk = 0;
        this.zzo = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final boolean zzd(zzzk zzzkVar) throws IOException {
        return zzg(zzzkVar);
    }
}
