package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.SystemClock;
import com.google.android.exoplayer2.C;
import io.bidmachine.utils.IabUtils;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzaxb extends zzasn {
    private static final byte[] zzb = zzbay.zzp("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    private boolean zzA;
    private int zzB;
    private int zzC;
    private boolean zzD;
    private boolean zzE;
    private boolean zzF;
    private boolean zzG;
    private boolean zzH;
    protected zzaux zza;
    private final zzaxd zzc;
    private final zzauy zzd;
    private final zzauy zze;
    private final zzate zzf;
    private final List zzg;
    private final MediaCodec.BufferInfo zzh;
    private zzatd zzi;
    private MediaCodec zzj;
    private zzawz zzk;
    private boolean zzl;
    private boolean zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private boolean zzt;
    private ByteBuffer[] zzu;
    private ByteBuffer[] zzv;
    private long zzw;
    private int zzx;
    private int zzy;
    private boolean zzz;

    public zzaxb(int i, zzaxd zzaxdVar, zzavd zzavdVar, boolean z) {
        super(i);
        zzbaj.zze(zzbay.zza >= 16);
        this.zzc = zzaxdVar;
        this.zzd = new zzauy(0);
        this.zze = new zzauy(0);
        this.zzf = new zzate();
        this.zzg = new ArrayList();
        this.zzh = new MediaCodec.BufferInfo();
        this.zzB = 0;
        this.zzC = 0;
    }

    private final void zzI() throws zzasp {
        if (this.zzC == 2) {
            zzY();
            zzW();
            return;
        }
        this.zzG = true;
        zzS();
    }

    private final boolean zzJ() throws zzasp {
        MediaCodec mediaCodec = this.zzj;
        if (mediaCodec == null || this.zzC == 2 || this.zzF) {
            return false;
        }
        if (this.zzx < 0) {
            int dequeueInputBuffer = mediaCodec.dequeueInputBuffer(0L);
            this.zzx = dequeueInputBuffer;
            if (dequeueInputBuffer < 0) {
                return false;
            }
            zzauy zzauyVar = this.zzd;
            zzauyVar.zzb = this.zzu[dequeueInputBuffer];
            zzauyVar.zzb();
        }
        if (this.zzC == 1) {
            if (!this.zzo) {
                this.zzE = true;
                this.zzj.queueInputBuffer(this.zzx, 0, 0, 0L, 4);
                this.zzx = -1;
            }
            this.zzC = 2;
            return false;
        } else if (this.zzs) {
            this.zzs = false;
            ByteBuffer byteBuffer = this.zzd.zzb;
            byte[] bArr = zzb;
            byteBuffer.put(bArr);
            MediaCodec mediaCodec2 = this.zzj;
            int i = this.zzx;
            int length = bArr.length;
            mediaCodec2.queueInputBuffer(i, 0, 38, 0L, 0);
            this.zzx = -1;
            this.zzD = true;
            return true;
        } else {
            if (this.zzB == 1) {
                for (int i2 = 0; i2 < this.zzi.zzh.size(); i2++) {
                    this.zzd.zzb.put((byte[]) this.zzi.zzh.get(i2));
                }
                this.zzB = 2;
            }
            int position = this.zzd.zzb.position();
            int zzd = zzd(this.zzf, this.zzd, false);
            if (zzd == -3) {
                return false;
            }
            if (zzd == -5) {
                if (this.zzB == 2) {
                    this.zzd.zzb();
                    this.zzB = 1;
                }
                zzQ(this.zzf.zza);
                return true;
            }
            zzauy zzauyVar2 = this.zzd;
            if (!zzauyVar2.zzf()) {
                if (!this.zzH || zzauyVar2.zzg()) {
                    this.zzH = false;
                    boolean zzi = zzauyVar2.zzi();
                    if (this.zzl && !zzi) {
                        ByteBuffer byteBuffer2 = zzauyVar2.zzb;
                        byte[] bArr2 = zzbap.zza;
                        int position2 = byteBuffer2.position();
                        int i3 = 0;
                        int i4 = 0;
                        while (true) {
                            int i5 = i3 + 1;
                            if (i5 < position2) {
                                int i6 = byteBuffer2.get(i3) & 255;
                                if (i4 == 3) {
                                    if (i6 == 1) {
                                        if ((byteBuffer2.get(i5) & 31) == 7) {
                                            ByteBuffer duplicate = byteBuffer2.duplicate();
                                            duplicate.position(i3 - 3);
                                            duplicate.limit(position2);
                                            byteBuffer2.position(0);
                                            byteBuffer2.put(duplicate);
                                            break;
                                        }
                                        i6 = 1;
                                    }
                                } else if (i6 == 0) {
                                    i4++;
                                }
                                if (i6 != 0) {
                                    i4 = 0;
                                }
                                i3 = i5;
                            } else {
                                byteBuffer2.clear();
                                break;
                            }
                        }
                        if (this.zzd.zzb.position() == 0) {
                            return true;
                        }
                        this.zzl = false;
                    }
                    try {
                        zzauy zzauyVar3 = this.zzd;
                        long j = zzauyVar3.zzc;
                        if (zzauyVar3.zze()) {
                            this.zzg.add(Long.valueOf(j));
                        }
                        this.zzd.zzb.flip();
                        zzX(this.zzd);
                        if (zzi) {
                            MediaCodec.CryptoInfo zza = this.zzd.zza.zza();
                            if (position != 0) {
                                if (zza.numBytesOfClearData == null) {
                                    zza.numBytesOfClearData = new int[1];
                                }
                                int[] iArr = zza.numBytesOfClearData;
                                iArr[0] = iArr[0] + position;
                            }
                            this.zzj.queueSecureInputBuffer(this.zzx, 0, zza, j, 0);
                        } else {
                            this.zzj.queueInputBuffer(this.zzx, 0, this.zzd.zzb.limit(), j, 0);
                        }
                        this.zzx = -1;
                        this.zzD = true;
                        this.zzB = 0;
                        this.zza.zzc++;
                        return true;
                    } catch (MediaCodec.CryptoException e2) {
                        throw zzasp.zza(e2, zza());
                    }
                } else {
                    zzauyVar2.zzb();
                    if (this.zzB == 2) {
                        this.zzB = 1;
                    }
                    return true;
                }
            }
            if (this.zzB == 2) {
                zzauyVar2.zzb();
                this.zzB = 1;
            }
            this.zzF = true;
            if (!this.zzD) {
                zzI();
                return false;
            }
            try {
                if (!this.zzo) {
                    this.zzE = true;
                    this.zzj.queueInputBuffer(this.zzx, 0, 0, 0L, 4);
                    this.zzx = -1;
                }
                return false;
            } catch (MediaCodec.CryptoException e3) {
                throw zzasp.zza(e3, zza());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public final void zzD(long j, long j2) throws zzasp {
        boolean zzT;
        int dequeueOutputBuffer;
        boolean z;
        if (this.zzG) {
            zzS();
            return;
        }
        if (this.zzi == null) {
            this.zze.zzb();
            int zzd = zzd(this.zzf, this.zze, true);
            if (zzd != -5) {
                if (zzd == -4) {
                    zzbaj.zze(this.zze.zzf());
                    this.zzF = true;
                    zzI();
                    return;
                }
                return;
            }
            zzQ(this.zzf.zza);
        }
        zzW();
        if (this.zzj != null) {
            zzbaw.zza("drainAndFeed");
            while (true) {
                if (this.zzy < 0) {
                    if (!this.zzq || !this.zzE) {
                        dequeueOutputBuffer = this.zzj.dequeueOutputBuffer(this.zzh, 0L);
                        this.zzy = dequeueOutputBuffer;
                    } else {
                        try {
                            dequeueOutputBuffer = this.zzj.dequeueOutputBuffer(this.zzh, 0L);
                            this.zzy = dequeueOutputBuffer;
                        } catch (IllegalStateException unused) {
                            zzI();
                            if (this.zzG) {
                                zzY();
                            }
                        }
                    }
                    if (dequeueOutputBuffer >= 0) {
                        if (this.zzt) {
                            this.zzt = false;
                            this.zzj.releaseOutputBuffer(dequeueOutputBuffer, false);
                            this.zzy = -1;
                        } else if ((this.zzh.flags & 4) == 0) {
                            ByteBuffer byteBuffer = this.zzv[this.zzy];
                            if (byteBuffer != null) {
                                byteBuffer.position(this.zzh.offset);
                                byteBuffer.limit(this.zzh.offset + this.zzh.size);
                            }
                            long j3 = this.zzh.presentationTimeUs;
                            int size = this.zzg.size();
                            int i = 0;
                            while (true) {
                                if (i >= size) {
                                    z = false;
                                    break;
                                } else if (((Long) this.zzg.get(i)).longValue() == j3) {
                                    this.zzg.remove(i);
                                    z = true;
                                    break;
                                } else {
                                    i++;
                                }
                            }
                            this.zzz = z;
                        } else {
                            zzI();
                            this.zzy = -1;
                            break;
                        }
                    } else if (dequeueOutputBuffer == -2) {
                        MediaFormat outputFormat = this.zzj.getOutputFormat();
                        if (this.zzn && outputFormat.getInteger(IabUtils.KEY_WIDTH) == 32 && outputFormat.getInteger(IabUtils.KEY_HEIGHT) == 32) {
                            this.zzt = true;
                        } else {
                            if (this.zzr) {
                                outputFormat.setInteger("channel-count", 1);
                            }
                            zzR(this.zzj, outputFormat);
                        }
                    } else if (dequeueOutputBuffer == -3) {
                        this.zzv = this.zzj.getOutputBuffers();
                    } else if (this.zzo && (this.zzF || this.zzC == 2)) {
                        zzI();
                    }
                }
                if (this.zzq && this.zzE) {
                    try {
                        MediaCodec mediaCodec = this.zzj;
                        ByteBuffer[] byteBufferArr = this.zzv;
                        int i2 = this.zzy;
                        zzT = zzT(j, j2, mediaCodec, byteBufferArr[i2], i2, this.zzh.flags, this.zzh.presentationTimeUs, this.zzz);
                    } catch (IllegalStateException unused2) {
                        zzI();
                        if (this.zzG) {
                            zzY();
                        }
                    }
                } else {
                    MediaCodec mediaCodec2 = this.zzj;
                    ByteBuffer[] byteBufferArr2 = this.zzv;
                    int i3 = this.zzy;
                    zzT = zzT(j, j2, mediaCodec2, byteBufferArr2[i3], i3, this.zzh.flags, this.zzh.presentationTimeUs, this.zzz);
                }
                if (!zzT) {
                    break;
                }
                long j4 = this.zzh.presentationTimeUs;
                this.zzy = -1;
            }
            do {
            } while (zzJ());
            zzbaw.zzb();
        } else {
            zzx(j);
            this.zze.zzb();
            int zzd2 = zzd(this.zzf, this.zze, false);
            if (zzd2 == -5) {
                zzQ(this.zzf.zza);
            } else if (zzd2 == -4) {
                zzbaj.zze(this.zze.zzf());
                this.zzF = true;
                zzI();
            }
        }
        this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public boolean zzE() {
        return this.zzG;
    }

    @Override // com.google.android.gms.internal.ads.zzati
    public boolean zzF() {
        if (this.zzi != null) {
            if (zzC() || this.zzy >= 0) {
                return true;
            }
            return this.zzw != C.TIME_UNSET && SystemClock.elapsedRealtime() < this.zzw;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzatj
    public final int zzG(zzatd zzatdVar) throws zzasp {
        try {
            return zzH(this.zzc, zzatdVar);
        } catch (zzaxg e2) {
            throw zzasp.zza(e2, zza());
        }
    }

    protected abstract int zzH(zzaxd zzaxdVar, zzatd zzatdVar) throws zzaxg;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzawz zzM(zzaxd zzaxdVar, zzatd zzatdVar, boolean z) throws zzaxg {
        return zzaxl.zzc(zzatdVar.zzf, false);
    }

    protected abstract void zzO(zzawz zzawzVar, MediaCodec mediaCodec, zzatd zzatdVar, MediaCrypto mediaCrypto) throws zzaxg;

    protected void zzP(String str, long j, long j2) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
        if (r6.zzk == r0.zzk) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzQ(com.google.android.gms.internal.ads.zzatd r6) throws com.google.android.gms.internal.ads.zzasp {
        /*
            r5 = this;
            com.google.android.gms.internal.ads.zzatd r0 = r5.zzi
            r5.zzi = r6
            com.google.android.gms.internal.ads.zzavc r6 = r6.zzi
            if (r0 != 0) goto La
            r1 = 0
            goto Lc
        La:
            com.google.android.gms.internal.ads.zzavc r1 = r0.zzi
        Lc:
            boolean r6 = com.google.android.gms.internal.ads.zzbay.zzo(r6, r1)
            if (r6 != 0) goto L29
            com.google.android.gms.internal.ads.zzatd r6 = r5.zzi
            com.google.android.gms.internal.ads.zzavc r6 = r6.zzi
            if (r6 != 0) goto L19
            goto L29
        L19:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "Media requires a DrmSessionManager"
            r6.<init>(r0)
            int r0 = r5.zza()
            com.google.android.gms.internal.ads.zzasp r6 = com.google.android.gms.internal.ads.zzasp.zza(r6, r0)
            throw r6
        L29:
            android.media.MediaCodec r6 = r5.zzj
            r1 = 1
            if (r6 == 0) goto L56
            com.google.android.gms.internal.ads.zzawz r2 = r5.zzk
            boolean r2 = r2.zzb
            com.google.android.gms.internal.ads.zzatd r3 = r5.zzi
            boolean r6 = r5.zzZ(r6, r2, r0, r3)
            if (r6 == 0) goto L56
            r5.zzA = r1
            r5.zzB = r1
            boolean r6 = r5.zzn
            r2 = 0
            if (r6 == 0) goto L52
            com.google.android.gms.internal.ads.zzatd r6 = r5.zzi
            int r3 = r6.zzj
            int r4 = r0.zzj
            if (r3 != r4) goto L52
            int r6 = r6.zzk
            int r0 = r0.zzk
            if (r6 != r0) goto L52
            goto L53
        L52:
            r1 = r2
        L53:
            r5.zzs = r1
            return
        L56:
            boolean r6 = r5.zzD
            if (r6 == 0) goto L5d
            r5.zzC = r1
            return
        L5d:
            r5.zzY()
            r5.zzW()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaxb.zzQ(com.google.android.gms.internal.ads.zzatd):void");
    }

    protected void zzR(MediaCodec mediaCodec, MediaFormat mediaFormat) throws zzasp {
        throw null;
    }

    protected void zzS() throws zzasp {
    }

    protected abstract boolean zzT(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws zzasp;

    /* JADX INFO: Access modifiers changed from: protected */
    public final MediaCodec zzU() {
        return this.zzj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzawz zzV() {
        return this.zzk;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzW() throws zzasp {
        zzatd zzatdVar;
        if (this.zzj != null || (zzatdVar = this.zzi) == null) {
            return;
        }
        zzawz zzawzVar = this.zzk;
        if (zzawzVar == null) {
            try {
                zzawzVar = zzM(this.zzc, zzatdVar, false);
                this.zzk = zzawzVar;
                if (zzawzVar == null) {
                    throw zzasp.zza(new zzaxa(this.zzi, (Throwable) null, false, -49999), zza());
                }
            } catch (zzaxg e2) {
                throw zzasp.zza(new zzaxa(this.zzi, (Throwable) e2, false, -49998), zza());
            }
        }
        if (zzaa(zzawzVar)) {
            String str = this.zzk.zza;
            this.zzl = zzbay.zza < 21 && this.zzi.zzh.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
            this.zzm = zzbay.zza < 18 || (zzbay.zza == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (zzbay.zza == 19 && zzbay.zzd.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
            this.zzn = zzbay.zza < 24 && ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) && ("flounder".equals(zzbay.zzb) || "flounder_lte".equals(zzbay.zzb) || "grouper".equals(zzbay.zzb) || "tilapia".equals(zzbay.zzb));
            this.zzo = zzbay.zza <= 17 && ("OMX.rk.video_decoder.avc".equals(str) || "OMX.allwinner.video.decoder.avc".equals(str));
            this.zzp = (zzbay.zza <= 23 && "OMX.google.vorbis.decoder".equals(str)) || (zzbay.zza <= 19 && "hb2000".equals(zzbay.zzb) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str)));
            this.zzq = zzbay.zza == 21 && "OMX.google.aac.decoder".equals(str);
            this.zzr = zzbay.zza <= 18 && this.zzi.zzr == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                zzbaw.zza("createCodec:" + str);
                this.zzj = MediaCodec.createByCodecName(str);
                zzbaw.zzb();
                zzbaw.zza("configureCodec");
                zzO(this.zzk, this.zzj, this.zzi, null);
                zzbaw.zzb();
                zzbaw.zza("startCodec");
                this.zzj.start();
                zzbaw.zzb();
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                zzP(str, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
                this.zzu = this.zzj.getInputBuffers();
                this.zzv = this.zzj.getOutputBuffers();
                this.zzw = zzb() == 2 ? SystemClock.elapsedRealtime() + 1000 : C.TIME_UNSET;
                this.zzx = -1;
                this.zzy = -1;
                this.zzH = true;
                this.zza.zza++;
            } catch (Exception e3) {
                throw zzasp.zza(new zzaxa(this.zzi, (Throwable) e3, false, str), zza());
            }
        }
    }

    protected void zzX(zzauy zzauyVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzY() {
        this.zzw = C.TIME_UNSET;
        this.zzx = -1;
        this.zzy = -1;
        this.zzz = false;
        this.zzg.clear();
        this.zzu = null;
        this.zzv = null;
        this.zzk = null;
        this.zzA = false;
        this.zzD = false;
        this.zzl = false;
        this.zzm = false;
        this.zzn = false;
        this.zzo = false;
        this.zzp = false;
        this.zzr = false;
        this.zzs = false;
        this.zzt = false;
        this.zzE = false;
        this.zzB = 0;
        this.zzC = 0;
        this.zzd.zzb = null;
        MediaCodec mediaCodec = this.zzj;
        if (mediaCodec != null) {
            this.zza.zzb++;
            try {
                mediaCodec.stop();
                try {
                    this.zzj.release();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    this.zzj.release();
                    throw th;
                } finally {
                }
            }
        }
    }

    protected boolean zzZ(MediaCodec mediaCodec, boolean z, zzatd zzatdVar, zzatd zzatdVar2) {
        return false;
    }

    protected boolean zzaa(zzawz zzawzVar) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzasn, com.google.android.gms.internal.ads.zzatj
    public final int zze() {
        return 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzasn
    public void zzo(boolean z) throws zzasp {
        this.zza = new zzaux();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzasn
    public void zzp(long j, boolean z) throws zzasp {
        this.zzF = false;
        this.zzG = false;
        if (this.zzj != null) {
            this.zzw = C.TIME_UNSET;
            this.zzx = -1;
            this.zzy = -1;
            this.zzH = true;
            this.zzz = false;
            this.zzg.clear();
            this.zzs = false;
            this.zzt = false;
            if (this.zzm || (this.zzp && this.zzE)) {
                zzY();
                zzW();
            } else if (this.zzC != 0) {
                zzY();
                zzW();
            } else {
                this.zzj.flush();
                this.zzD = false;
            }
            if (!this.zzA || this.zzi == null) {
                return;
            }
            this.zzB = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzasn
    public void zzn() {
        this.zzi = null;
        zzY();
    }
}
