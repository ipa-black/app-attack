package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.Trace;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.PlaybackException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzqp extends zzgr {
    private static final byte[] zzb = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private float zzA;
    private ArrayDeque zzB;
    private zzqo zzC;
    private zzqm zzD;
    private int zzE;
    private boolean zzF;
    private boolean zzG;
    private boolean zzH;
    private boolean zzI;
    private boolean zzJ;
    private boolean zzK;
    private boolean zzL;
    private boolean zzM;
    private boolean zzN;
    private zzqe zzO;
    private long zzP;
    private int zzQ;
    private int zzR;
    private ByteBuffer zzS;
    private boolean zzT;
    private boolean zzU;
    private boolean zzV;
    private boolean zzW;
    private boolean zzX;
    private boolean zzY;
    private int zzZ;
    protected zzgs zza;
    private int zzaa;
    private int zzab;
    private boolean zzac;
    private boolean zzad;
    private boolean zzae;
    private long zzaf;
    private long zzag;
    private boolean zzah;
    private boolean zzai;
    private boolean zzaj;
    private long zzak;
    private long zzal;
    private int zzam;
    private zzpp zzan;
    private zzpp zzao;
    private final zzqi zzc;
    private final zzqr zzd;
    private final float zze;
    private final zzgi zzf;
    private final zzgi zzg;
    private final zzgi zzh;
    private final zzqd zzi;
    private final zzek zzj;
    private final ArrayList zzk;
    private final MediaCodec.BufferInfo zzl;
    private final long[] zzm;
    private final long[] zzn;
    private final long[] zzo;
    private zzaf zzp;
    private zzaf zzq;
    private MediaCrypto zzr;
    private boolean zzs;
    private long zzt;
    private float zzu;
    private float zzv;
    private zzqj zzw;
    private zzaf zzx;
    private MediaFormat zzy;
    private boolean zzz;

    public zzqp(int i, zzqi zzqiVar, zzqr zzqrVar, boolean z, float f2) {
        super(i);
        this.zzc = zzqiVar;
        zzqrVar.getClass();
        this.zzd = zzqrVar;
        this.zze = f2;
        this.zzf = new zzgi(0, 0);
        this.zzg = new zzgi(0, 0);
        this.zzh = new zzgi(2, 0);
        zzqd zzqdVar = new zzqd();
        this.zzi = zzqdVar;
        this.zzj = new zzek(10);
        this.zzk = new ArrayList();
        this.zzl = new MediaCodec.BufferInfo();
        this.zzu = 1.0f;
        this.zzv = 1.0f;
        this.zzt = C.TIME_UNSET;
        this.zzm = new long[10];
        this.zzn = new long[10];
        this.zzo = new long[10];
        this.zzak = C.TIME_UNSET;
        this.zzal = C.TIME_UNSET;
        zzqdVar.zzi(0);
        zzqdVar.zzb.order(ByteOrder.nativeOrder());
        this.zzA = -1.0f;
        this.zzE = 0;
        this.zzZ = 0;
        this.zzQ = -1;
        this.zzR = -1;
        this.zzP = C.TIME_UNSET;
        this.zzaf = C.TIME_UNSET;
        this.zzag = C.TIME_UNSET;
        this.zzaa = 0;
        this.zzab = 0;
    }

    private final void zzT() {
        this.zzX = false;
        this.zzi.zzb();
        this.zzh.zzb();
        this.zzW = false;
        this.zzV = false;
    }

    private final void zzU() throws zzha {
        if (this.zzac) {
            this.zzaa = 1;
            this.zzab = 3;
            return;
        }
        zzap();
        zzan();
    }

    private final void zzaA() throws zzha {
        try {
            throw null;
        } catch (MediaCryptoException e2) {
            throw zzbg(e2, this.zzp, false, PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR);
        }
    }

    private final boolean zzaB() throws zzha {
        if (this.zzac) {
            this.zzaa = 1;
            if (this.zzG || this.zzI) {
                this.zzab = 3;
                return false;
            }
            this.zzab = 2;
        } else {
            zzaA();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    private final boolean zzaC() throws zzha {
        zzqj zzqjVar = this.zzw;
        boolean z = 0;
        if (zzqjVar == null || this.zzaa == 2 || this.zzah) {
            return false;
        }
        if (this.zzQ < 0) {
            int zza = zzqjVar.zza();
            this.zzQ = zza;
            if (zza < 0) {
                return false;
            }
            this.zzg.zzb = this.zzw.zzf(zza);
            this.zzg.zzb();
        }
        if (this.zzaa == 1) {
            if (!this.zzN) {
                this.zzad = true;
                this.zzw.zzj(this.zzQ, 0, 0, 0L, 4);
                zzay();
            }
            this.zzaa = 2;
            return false;
        } else if (this.zzL) {
            this.zzL = false;
            this.zzg.zzb.put(zzb);
            this.zzw.zzj(this.zzQ, 0, 38, 0L, 0);
            zzay();
            this.zzac = true;
            return true;
        } else {
            if (this.zzZ == 1) {
                for (int i = 0; i < this.zzx.zzo.size(); i++) {
                    this.zzg.zzb.put((byte[]) this.zzx.zzo.get(i));
                }
                this.zzZ = 2;
            }
            int position = this.zzg.zzb.position();
            zzje zzh = zzh();
            try {
                int zzbf = zzbf(zzh, this.zzg, 0);
                if (zzG()) {
                    this.zzag = this.zzaf;
                }
                if (zzbf == -3) {
                    return false;
                }
                if (zzbf == -5) {
                    if (this.zzZ == 2) {
                        this.zzg.zzb();
                        this.zzZ = 1;
                    }
                    zzS(zzh);
                    return true;
                }
                zzgi zzgiVar = this.zzg;
                if (!zzgiVar.zzg()) {
                    if (this.zzac || zzgiVar.zzh()) {
                        boolean zzk = zzgiVar.zzk();
                        if (zzk) {
                            zzgiVar.zza.zzb(position);
                        }
                        if (this.zzF && !zzk) {
                            ByteBuffer byteBuffer = this.zzg.zzb;
                            byte[] bArr = zzaag.zza;
                            int position2 = byteBuffer.position();
                            int i2 = 0;
                            int i3 = 0;
                            while (true) {
                                int i4 = i2 + 1;
                                if (i4 < position2) {
                                    int i5 = byteBuffer.get(i2) & 255;
                                    if (i3 == 3) {
                                        if (i5 == 1) {
                                            if ((byteBuffer.get(i4) & 31) == 7) {
                                                ByteBuffer duplicate = byteBuffer.duplicate();
                                                duplicate.position(i2 - 3);
                                                duplicate.limit(position2);
                                                byteBuffer.position(0);
                                                byteBuffer.put(duplicate);
                                                break;
                                            }
                                            i5 = 1;
                                        }
                                    } else if (i5 == 0) {
                                        i3++;
                                    }
                                    if (i5 != 0) {
                                        i3 = 0;
                                    }
                                    i2 = i4;
                                } else {
                                    byteBuffer.clear();
                                    break;
                                }
                            }
                            if (this.zzg.zzb.position() == 0) {
                                return true;
                            }
                            this.zzF = false;
                        }
                        zzgi zzgiVar2 = this.zzg;
                        long j = zzgiVar2.zzd;
                        zzqe zzqeVar = this.zzO;
                        if (zzqeVar != null) {
                            j = zzqeVar.zzb(this.zzp, zzgiVar2);
                            this.zzaf = Math.max(this.zzaf, this.zzO.zza(this.zzp));
                        }
                        long j2 = j;
                        if (this.zzg.zzf()) {
                            this.zzk.add(Long.valueOf(j2));
                        }
                        if (this.zzaj) {
                            this.zzj.zzd(j2, this.zzp);
                            this.zzaj = false;
                        }
                        this.zzaf = Math.max(this.zzaf, j2);
                        this.zzg.zzj();
                        zzgi zzgiVar3 = this.zzg;
                        if (zzgiVar3.zze()) {
                            zzam(zzgiVar3);
                        }
                        zzad(this.zzg);
                        try {
                            if (zzk) {
                                this.zzw.zzk(this.zzQ, 0, this.zzg.zza, j2, 0);
                            } else {
                                this.zzw.zzj(this.zzQ, 0, this.zzg.zzb.limit(), j2, 0);
                            }
                            zzay();
                            this.zzac = true;
                            this.zzZ = 0;
                            zzgs zzgsVar = this.zza;
                            z = zzgsVar.zzc + 1;
                            zzgsVar.zzc = z;
                            return true;
                        } catch (MediaCodec.CryptoException e2) {
                            throw zzbg(e2, this.zzp, z, zzen.zzl(e2.getErrorCode()));
                        }
                    } else {
                        zzgiVar.zzb();
                        if (this.zzZ == 2) {
                            this.zzZ = 1;
                        }
                        return true;
                    }
                }
                if (this.zzZ == 2) {
                    zzgiVar.zzb();
                    this.zzZ = 1;
                }
                this.zzah = true;
                if (!this.zzac) {
                    zzax();
                    return false;
                }
                try {
                    if (!this.zzN) {
                        this.zzad = true;
                        this.zzw.zzj(this.zzQ, 0, 0, 0L, 4);
                        zzay();
                    }
                    return false;
                } catch (MediaCodec.CryptoException e3) {
                    throw zzbg(e3, this.zzp, false, zzen.zzl(e3.getErrorCode()));
                }
            } catch (zzgh e4) {
                zzX(e4);
                zzaE(0);
                zzab();
                return true;
            }
        }
    }

    private final boolean zzaD() {
        return this.zzR >= 0;
    }

    private final boolean zzaE(int i) throws zzha {
        zzje zzh = zzh();
        this.zzf.zzb();
        int zzbf = zzbf(zzh, this.zzf, i | 4);
        if (zzbf == -5) {
            zzS(zzh);
            return true;
        } else if (zzbf == -4 && this.zzf.zzg()) {
            this.zzah = true;
            zzax();
            return false;
        } else {
            return false;
        }
    }

    private final boolean zzaF(long j) {
        return this.zzt == C.TIME_UNSET || SystemClock.elapsedRealtime() - j < this.zzt;
    }

    private final boolean zzaG(zzaf zzafVar) throws zzha {
        if (zzen.zza >= 23 && this.zzw != null && this.zzab != 3 && zzbe() != 0) {
            float zzP = zzP(this.zzv, zzafVar, zzJ());
            float f2 = this.zzA;
            if (f2 == zzP) {
                return true;
            }
            if (zzP == -1.0f) {
                zzU();
                return false;
            } else if (f2 == -1.0f && zzP <= this.zze) {
                return true;
            } else {
                Bundle bundle = new Bundle();
                bundle.putFloat("operating-rate", zzP);
                this.zzw.zzp(bundle);
                this.zzA = zzP;
            }
        }
        return true;
    }

    private final void zzab() {
        try {
            this.zzw.zzi();
        } finally {
            zzaq();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean zzav(zzaf zzafVar) {
        return zzafVar.zzF == 0;
    }

    private final void zzaw(zzqm zzqmVar, MediaCrypto mediaCrypto) throws Exception {
        MediaCodec createByCodecName;
        zzpw zzrgVar;
        int i;
        String str = zzqmVar.zza;
        float zzP = zzen.zza < 23 ? -1.0f : zzP(this.zzv, this.zzp, zzJ());
        float f2 = zzP > this.zze ? zzP : -1.0f;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        MediaCodec mediaCodec = null;
        zzqh zzV = zzV(zzqmVar, this.zzp, null, f2);
        if (zzen.zza >= 31) {
            zzqn.zza(zzV, zzl());
        }
        try {
            Trace.beginSection("createCodec:" + str);
            if (zzen.zza >= 23 && zzen.zza >= 31) {
                int zzb2 = zzbt.zzb(zzV.zzc.zzm);
                zzdw.zzd("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type ".concat(zzen.zzO(zzb2)));
                zzrgVar = new zzpu(zzb2, false).zzc(zzV);
            } else {
                try {
                    zzqm zzqmVar2 = zzV.zza;
                    zzqmVar2.getClass();
                    String str2 = zzqmVar2.zza;
                    Trace.beginSection("createCodec:".concat(String.valueOf(str2)));
                    createByCodecName = MediaCodec.createByCodecName(str2);
                    Trace.endSection();
                } catch (IOException e2) {
                    e = e2;
                } catch (RuntimeException e3) {
                    e = e3;
                }
                try {
                    Trace.beginSection("configureCodec");
                    createByCodecName.configure(zzV.zzb, zzV.zzd, (MediaCrypto) null, 0);
                    Trace.endSection();
                    Trace.beginSection("startCodec");
                    createByCodecName.start();
                    Trace.endSection();
                    zzrgVar = new zzrg(createByCodecName, null);
                } catch (IOException | RuntimeException e4) {
                    e = e4;
                    mediaCodec = createByCodecName;
                    if (mediaCodec != null) {
                        mediaCodec.release();
                    }
                    throw e;
                }
            }
            this.zzw = zzrgVar;
            Trace.endSection();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            this.zzD = zzqmVar;
            this.zzA = f2;
            this.zzx = this.zzp;
            if (zzen.zza <= 25 && "OMX.Exynos.avc.dec.secure".equals(str) && (zzen.zzd.startsWith("SM-T585") || zzen.zzd.startsWith("SM-A510") || zzen.zzd.startsWith("SM-A520") || zzen.zzd.startsWith("SM-J700"))) {
                i = 2;
            } else {
                i = (zzen.zza >= 24 || !(("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) && ("flounder".equals(zzen.zzb) || "flounder_lte".equals(zzen.zzb) || "grouper".equals(zzen.zzb) || "tilapia".equals(zzen.zzb)))) ? 0 : 1;
            }
            this.zzE = i;
            this.zzF = zzen.zza < 21 && this.zzx.zzo.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
            this.zzG = zzen.zza == 19 && zzen.zzd.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str));
            this.zzH = zzen.zza == 29 && "c2.android.aac.decoder".equals(str);
            this.zzI = (zzen.zza <= 23 && "OMX.google.vorbis.decoder".equals(str)) || (zzen.zza <= 19 && (("hb2000".equals(zzen.zzb) || "stvm8".equals(zzen.zzb)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))));
            this.zzJ = zzen.zza == 21 && "OMX.google.aac.decoder".equals(str);
            this.zzK = zzen.zza < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(zzen.zzc) && (zzen.zzb.startsWith("baffin") || zzen.zzb.startsWith("grand") || zzen.zzb.startsWith("fortuna") || zzen.zzb.startsWith("gprimelte") || zzen.zzb.startsWith("j2y18lte") || zzen.zzb.startsWith("ms01"));
            String str3 = zzqmVar.zza;
            this.zzN = (zzen.zza <= 25 && "OMX.rk.video_decoder.avc".equals(str3)) || (zzen.zza <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str3) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str3))) || ("Amazon".equals(zzen.zzc) && "AFTS".equals(zzen.zzd) && zzqmVar.zzf);
            this.zzw.zzr();
            if ("c2.android.mp3.decoder".equals(zzqmVar.zza)) {
                this.zzO = new zzqe();
            }
            if (zzbe() == 2) {
                this.zzP = SystemClock.elapsedRealtime() + 1000;
            }
            this.zza.zza++;
            zzY(str, zzV, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    private final void zzay() {
        this.zzQ = -1;
        this.zzg.zzb = null;
    }

    private final void zzaz() {
        this.zzR = -1;
        this.zzS = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzjy
    public void zzD(float f2, float f3) throws zzha {
        this.zzu = f2;
        this.zzv = f3;
        zzaG(this.zzx);
    }

    /* JADX WARN: Code restructure failed: missing block: B:160:0x0281, code lost:
        if (r15.zzq != null) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0087, code lost:
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0088, code lost:
        r15.zzai = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008a, code lost:
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008d, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008e, code lost:
        r2 = true;
        r1 = r15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:184:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x032e A[LOOP:2: B:87:0x014e->B:192:0x032e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0340 A[Catch: IllegalStateException -> 0x0370, TryCatch #3 {IllegalStateException -> 0x0370, blocks: (B:189:0x0327, B:194:0x033a, B:196:0x0340, B:198:0x0346, B:185:0x030f, B:187:0x0321, B:206:0x0356), top: B:246:0x0141 }] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0337 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:288:0x032d A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v63, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v18 */
    /* JADX WARN: Type inference failed for: r19v19 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v20 */
    /* JADX WARN: Type inference failed for: r19v21 */
    /* JADX WARN: Type inference failed for: r19v22 */
    /* JADX WARN: Type inference failed for: r19v24 */
    /* JADX WARN: Type inference failed for: r19v25 */
    /* JADX WARN: Type inference failed for: r19v36 */
    /* JADX WARN: Type inference failed for: r19v37 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14, types: [int] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.util.ArrayList] */
    @Override // com.google.android.gms.internal.ads.zzjy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzL(long r24, long r26) throws com.google.android.gms.internal.ads.zzha {
        /*
            Method dump skipped, instructions count: 965
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqp.zzL(long, long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public boolean zzM() {
        return this.zzai;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public boolean zzN() {
        if (this.zzp != null) {
            if (zzI() || zzaD()) {
                return true;
            }
            return this.zzP != C.TIME_UNSET && SystemClock.elapsedRealtime() < this.zzP;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzjz
    public final int zzO(zzaf zzafVar) throws zzha {
        try {
            return zzQ(this.zzd, zzafVar);
        } catch (zzqy e2) {
            throw zzbg(e2, zzafVar, false, PlaybackException.ERROR_CODE_DECODER_QUERY_FAILED);
        }
    }

    protected float zzP(float f2, zzaf zzafVar, zzaf[] zzafVarArr) {
        throw null;
    }

    protected abstract int zzQ(zzqr zzqrVar, zzaf zzafVar) throws zzqy;

    protected zzgt zzR(zzqm zzqmVar, zzaf zzafVar, zzaf zzafVar2) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0060, code lost:
        if (zzaB() == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x008c, code lost:
        if (zzaB() == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x009f, code lost:
        if (zzaB() == false) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.ads.zzgt zzS(com.google.android.gms.internal.ads.zzje r12) throws com.google.android.gms.internal.ads.zzha {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqp.zzS(com.google.android.gms.internal.ads.zzje):com.google.android.gms.internal.ads.zzgt");
    }

    protected abstract zzqh zzV(zzqm zzqmVar, zzaf zzafVar, MediaCrypto mediaCrypto, float f2);

    protected abstract List zzW(zzqr zzqrVar, zzaf zzafVar, boolean z) throws zzqy;

    protected void zzX(Exception exc) {
        throw null;
    }

    protected void zzY(String str, zzqh zzqhVar, long j, long j2) {
        throw null;
    }

    protected void zzZ(String str) {
        throw null;
    }

    protected void zzaa(zzaf zzafVar, MediaFormat mediaFormat) throws zzha {
        throw null;
    }

    protected void zzac() {
    }

    protected void zzad(zzgi zzgiVar) throws zzha {
        throw null;
    }

    protected void zzae() throws zzha {
    }

    protected abstract boolean zzaf(long j, long j2, zzqj zzqjVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzaf zzafVar) throws zzha;

    protected boolean zzag(zzaf zzafVar) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final float zzah() {
        return this.zzu;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long zzai() {
        return this.zzal;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzqj zzaj() {
        return this.zzw;
    }

    protected zzqk zzak(Throwable th, zzqm zzqmVar) {
        return new zzqk(th, zzqmVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzqm zzal() {
        return this.zzD;
    }

    protected void zzam(zzgi zzgiVar) throws zzha {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0100 A[Catch: zzqo -> 0x0123, TryCatch #2 {zzqo -> 0x0123, blocks: (B:30:0x0069, B:33:0x006e, B:35:0x0086, B:36:0x0091, B:41:0x00a0, B:43:0x00a8, B:44:0x00b0, B:46:0x00b4, B:57:0x00dc, B:59:0x0100, B:61:0x0109, B:64:0x0112, B:65:0x0114, B:60:0x0103, B:66:0x0115, B:68:0x0118, B:69:0x0122, B:39:0x0095, B:40:0x009f, B:54:0x00cc, B:55:0x00da, B:49:0x00c3), top: B:78:0x0069, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0103 A[Catch: zzqo -> 0x0123, TryCatch #2 {zzqo -> 0x0123, blocks: (B:30:0x0069, B:33:0x006e, B:35:0x0086, B:36:0x0091, B:41:0x00a0, B:43:0x00a8, B:44:0x00b0, B:46:0x00b4, B:57:0x00dc, B:59:0x0100, B:61:0x0109, B:64:0x0112, B:65:0x0114, B:60:0x0103, B:66:0x0115, B:68:0x0118, B:69:0x0122, B:39:0x0095, B:40:0x009f, B:54:0x00cc, B:55:0x00da, B:49:0x00c3), top: B:78:0x0069, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0112 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzan() throws com.google.android.gms.internal.ads.zzha {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqp.zzan():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzao(long j) {
        while (true) {
            int i = this.zzam;
            if (i == 0 || j < this.zzo[0]) {
                return;
            }
            long[] jArr = this.zzm;
            this.zzak = jArr[0];
            this.zzal = this.zzn[0];
            int i2 = i - 1;
            this.zzam = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.zzn;
            System.arraycopy(jArr2, 1, jArr2, 0, this.zzam);
            long[] jArr3 = this.zzo;
            System.arraycopy(jArr3, 1, jArr3, 0, this.zzam);
            zzac();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzpp, com.google.android.gms.internal.ads.zzqj, android.media.MediaCrypto] */
    public final void zzap() {
        try {
            zzqj zzqjVar = this.zzw;
            if (zzqjVar != null) {
                zzqjVar.zzl();
                this.zza.zzb++;
                zzZ(this.zzD.zza);
            }
        } finally {
            this.zzw = null;
            this.zzr = null;
            this.zzan = null;
            zzar();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzaq() {
        zzay();
        zzaz();
        this.zzP = C.TIME_UNSET;
        this.zzad = false;
        this.zzac = false;
        this.zzL = false;
        this.zzM = false;
        this.zzT = false;
        this.zzU = false;
        this.zzk.clear();
        this.zzaf = C.TIME_UNSET;
        this.zzag = C.TIME_UNSET;
        zzqe zzqeVar = this.zzO;
        if (zzqeVar != null) {
            zzqeVar.zzc();
        }
        this.zzaa = 0;
        this.zzab = 0;
        this.zzZ = this.zzY ? 1 : 0;
    }

    protected final void zzar() {
        zzaq();
        this.zzO = null;
        this.zzB = null;
        this.zzD = null;
        this.zzx = null;
        this.zzy = null;
        this.zzz = false;
        this.zzae = false;
        this.zzA = -1.0f;
        this.zzE = 0;
        this.zzF = false;
        this.zzG = false;
        this.zzH = false;
        this.zzI = false;
        this.zzJ = false;
        this.zzK = false;
        this.zzN = false;
        this.zzY = false;
        this.zzZ = 0;
        this.zzs = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzas() throws zzha {
        boolean zzat = zzat();
        if (zzat) {
            zzan();
        }
        return zzat;
    }

    protected final boolean zzat() {
        if (this.zzw == null) {
            return false;
        }
        int i = this.zzab;
        if (i != 3 && !this.zzG && ((!this.zzH || this.zzae) && (!this.zzI || !this.zzad))) {
            if (i == 2) {
                zzdd.zzf(zzen.zza >= 23);
                if (zzen.zza >= 23) {
                    try {
                        zzaA();
                    } catch (zzha e2) {
                        zzdw.zzf("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e2);
                        zzap();
                        return true;
                    }
                }
            }
            zzab();
            return false;
        }
        zzap();
        return true;
    }

    protected boolean zzau(zzqm zzqmVar) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzjz
    public final int zze() {
        return 8;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgr
    public void zzs() {
        this.zzp = null;
        this.zzak = C.TIME_UNSET;
        this.zzal = C.TIME_UNSET;
        this.zzam = 0;
        zzat();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgr
    public void zzt(boolean z, boolean z2) throws zzha {
        this.zza = new zzgs();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgr
    public void zzu(long j, boolean z) throws zzha {
        this.zzah = false;
        this.zzai = false;
        if (this.zzV) {
            this.zzi.zzb();
            this.zzh.zzb();
            this.zzW = false;
        } else {
            zzas();
        }
        zzek zzekVar = this.zzj;
        if (zzekVar.zza() > 0) {
            this.zzaj = true;
        }
        zzekVar.zze();
        int i = this.zzam;
        if (i != 0) {
            int i2 = i - 1;
            this.zzal = this.zzn[i2];
            this.zzak = this.zzm[i2];
            this.zzam = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgr
    public void zzv() {
        try {
            zzT();
            zzap();
        } finally {
            this.zzao = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final void zzy(zzaf[] zzafVarArr, long j, long j2) throws zzha {
        if (this.zzal == C.TIME_UNSET) {
            zzdd.zzf(this.zzak == C.TIME_UNSET);
            this.zzak = j;
            this.zzal = j2;
            return;
        }
        int i = this.zzam;
        if (i == 10) {
            zzdw.zze("MediaCodecRenderer", "Too many stream changes, so dropping offset: " + this.zzn[9]);
        } else {
            this.zzam = i + 1;
        }
        long[] jArr = this.zzm;
        int i2 = this.zzam - 1;
        jArr[i2] = j;
        this.zzn[i2] = j2;
        this.zzo[i2] = this.zzaf;
    }

    private final void zzax() throws zzha {
        int i = this.zzab;
        if (i == 1) {
            zzab();
        } else if (i == 2) {
            zzab();
            zzaA();
        } else if (i != 3) {
            this.zzai = true;
            zzae();
        } else {
            zzap();
            zzan();
        }
    }
}
