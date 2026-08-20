package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import io.bidmachine.utils.IabUtils;
import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbbh extends zzaxb {
    private int zzA;
    private final Context zzb;
    private final zzbbj zzc;
    private final zzbbr zzd;
    private final boolean zze;
    private final long[] zzf;
    private zzatd[] zzg;
    private zzbbg zzh;
    private Surface zzi;
    private Surface zzj;
    private boolean zzk;
    private long zzl;
    private long zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private float zzq;
    private int zzr;
    private int zzs;
    private int zzt;
    private float zzu;
    private int zzv;
    private int zzw;
    private int zzx;
    private float zzy;
    private long zzz;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbbh(Context context, zzaxd zzaxdVar, long j, Handler handler, zzbbs zzbbsVar, int i) {
        super(2, zzaxdVar, null, false);
        boolean z = false;
        this.zzb = context.getApplicationContext();
        this.zzc = new zzbbj(context);
        this.zzd = new zzbbr(handler, zzbbsVar);
        if (zzbay.zza <= 22 && "foster".equals(zzbay.zzb) && "NVIDIA".equals(zzbay.zzc)) {
            z = true;
        }
        this.zze = z;
        this.zzf = new long[10];
        this.zzz = C.TIME_UNSET;
        this.zzl = C.TIME_UNSET;
        this.zzr = -1;
        this.zzs = -1;
        this.zzu = -1.0f;
        this.zzq = -1.0f;
        zzab();
    }

    private static int zzN(zzatd zzatdVar) {
        int i = zzatdVar.zzm;
        if (i == -1) {
            return 0;
        }
        return i;
    }

    private final void zzab() {
        this.zzv = -1;
        this.zzw = -1;
        this.zzy = -1.0f;
        this.zzx = -1;
    }

    private final void zzac() {
        if (this.zzn > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.zzd.zzd(this.zzn, elapsedRealtime - this.zzm);
            this.zzn = 0;
            this.zzm = elapsedRealtime;
        }
    }

    private final void zzad() {
        int i = this.zzv;
        int i2 = this.zzr;
        if (i == i2 && this.zzw == this.zzs && this.zzx == this.zzt && this.zzy == this.zzu) {
            return;
        }
        this.zzd.zzh(i2, this.zzs, this.zzt, this.zzu);
        this.zzv = this.zzr;
        this.zzw = this.zzs;
        this.zzx = this.zzt;
        this.zzy = this.zzu;
    }

    private final void zzae() {
        if (this.zzv == -1 && this.zzw == -1) {
            return;
        }
        this.zzd.zzh(this.zzr, this.zzs, this.zzt, this.zzu);
    }

    private static boolean zzaf(long j) {
        return j < -30000;
    }

    private final boolean zzag(boolean z) {
        if (zzbay.zza >= 23) {
            return !z || zzbbe.zzb(this.zzb);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb, com.google.android.gms.internal.ads.zzati
    public final boolean zzF() {
        Surface surface;
        if (!super.zzF() || (!this.zzk && (((surface = this.zzj) == null || this.zzi != surface) && zzU() != null))) {
            if (this.zzl == C.TIME_UNSET) {
                return false;
            }
            if (SystemClock.elapsedRealtime() < this.zzl) {
                return true;
            }
            this.zzl = C.TIME_UNSET;
            return false;
        }
        this.zzl = C.TIME_UNSET;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    protected final int zzH(zzaxd zzaxdVar, zzatd zzatdVar) throws zzaxg {
        boolean z;
        String str = zzatdVar.zzf;
        if (zzbao.zzb(str)) {
            zzavc zzavcVar = zzatdVar.zzi;
            if (zzavcVar != null) {
                z = false;
                for (int i = 0; i < zzavcVar.zza; i++) {
                    z |= zzavcVar.zza(i).zzc;
                }
            } else {
                z = false;
            }
            zzawz zzc = zzaxl.zzc(str, z);
            if (zzc == null) {
                return 1;
            }
            boolean zze = zzc.zze(zzatdVar.zzc);
            if (zze && zzatdVar.zzj > 0 && zzatdVar.zzk > 0) {
                if (zzbay.zza >= 21) {
                    zze = zzc.zzf(zzatdVar.zzj, zzatdVar.zzk, zzatdVar.zzl);
                } else {
                    zze = zzatdVar.zzj * zzatdVar.zzk <= zzaxl.zza();
                    if (!zze) {
                        Log.d("MediaCodecVideoRenderer", "FalseCheck [legacyFrameSize, " + zzatdVar.zzj + "x" + zzatdVar.zzk + "] [" + zzbay.zze + "]");
                    }
                }
            }
            return (true != zze ? 2 : 3) | (true != zzc.zzb ? 4 : 8) | (true == zzc.zzc ? 16 : 0);
        }
        return 0;
    }

    final void zzI() {
        if (this.zzk) {
            return;
        }
        this.zzk = true;
        this.zzd.zzg(this.zzi);
    }

    protected final void zzJ(MediaCodec mediaCodec, int i, long j) {
        zzad();
        zzbaw.zza("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        zzbaw.zzb();
        this.zza.zzd++;
        this.zzo = 0;
        zzI();
    }

    protected final void zzK(MediaCodec mediaCodec, int i, long j, long j2) {
        zzad();
        zzbaw.zza("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j2);
        zzbaw.zzb();
        this.zza.zzd++;
        this.zzo = 0;
        zzI();
    }

    protected final void zzL(MediaCodec mediaCodec, int i, long j) {
        zzbaw.zza("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        zzbaw.zzb();
        this.zza.zze++;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzaxb
    protected final void zzO(zzawz zzawzVar, MediaCodec mediaCodec, zzatd zzatdVar, MediaCrypto mediaCrypto) throws zzaxg {
        boolean z;
        int i;
        zzatd[] zzatdVarArr = this.zzg;
        int i2 = zzatdVar.zzj;
        int i3 = zzatdVar.zzk;
        int i4 = zzatdVar.zzg;
        if (i4 == -1) {
            String str = zzatdVar.zzf;
            if (i2 != -1 && i3 != -1) {
                int i5 = 4;
                switch (str.hashCode()) {
                    case -1664118616:
                        if (str.equals(MimeTypes.VIDEO_H263)) {
                            z = false;
                            break;
                        }
                        z = true;
                        break;
                    case -1662541442:
                        if (str.equals("video/hevc")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1187890754:
                        if (str.equals(MimeTypes.VIDEO_MP4V)) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1331836730:
                        if (str.equals("video/avc")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1599127256:
                        if (str.equals(MimeTypes.VIDEO_VP8)) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1599127257:
                        if (str.equals(MimeTypes.VIDEO_VP9)) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    default:
                        z = true;
                        break;
                }
                if (z && !z) {
                    if (!z) {
                        if (!z) {
                            if (z || z) {
                                i = i2 * i3;
                                i4 = (i * 3) / (i5 + i5);
                            }
                        }
                    } else if (!"BRAVIA 4K 2015".equals(zzbay.zzd)) {
                        i = zzbay.zzd(i2, 16) * zzbay.zzd(i3, 16) * 256;
                        i5 = 2;
                        i4 = (i * 3) / (i5 + i5);
                    }
                }
                i = i2 * i3;
                i5 = 2;
                i4 = (i * 3) / (i5 + i5);
            }
            i4 = -1;
        }
        int length = zzatdVarArr.length;
        zzbbg zzbbgVar = new zzbbg(i2, i3, i4);
        this.zzh = zzbbgVar;
        boolean z2 = this.zze;
        MediaFormat zzb = zzatdVar.zzb();
        zzb.setInteger("max-width", zzbbgVar.zza);
        zzb.setInteger("max-height", zzbbgVar.zzb);
        int i6 = zzbbgVar.zzc;
        if (i6 != -1) {
            zzb.setInteger("max-input-size", i6);
        }
        if (z2) {
            zzb.setInteger("auto-frc", 0);
        }
        if (this.zzi == null) {
            zzbaj.zze(zzag(zzawzVar.zzd));
            if (this.zzj == null) {
                this.zzj = zzbbe.zza(this.zzb, zzawzVar.zzd);
            }
            this.zzi = this.zzj;
        }
        mediaCodec.configure(zzb, this.zzi, (MediaCrypto) null, 0);
        int i7 = zzbay.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    protected final void zzP(String str, long j, long j2) {
        this.zzd.zzb(str, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzQ(zzatd zzatdVar) throws zzasp {
        super.zzQ(zzatdVar);
        this.zzd.zzf(zzatdVar);
        float f2 = zzatdVar.zzn;
        if (f2 == -1.0f) {
            f2 = 1.0f;
        }
        this.zzq = f2;
        this.zzp = zzN(zzatdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    protected final void zzR(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int integer;
        int integer2;
        boolean z = false;
        if (mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top")) {
            z = true;
        }
        if (z) {
            integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
        } else {
            integer = mediaFormat.getInteger(IabUtils.KEY_WIDTH);
        }
        this.zzr = integer;
        if (z) {
            integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
        } else {
            integer2 = mediaFormat.getInteger(IabUtils.KEY_HEIGHT);
        }
        this.zzs = integer2;
        this.zzu = this.zzq;
        if (zzbay.zza >= 21) {
            int i = this.zzp;
            if (i == 90 || i == 270) {
                int i2 = this.zzr;
                this.zzr = this.zzs;
                this.zzs = i2;
                this.zzu = 1.0f / this.zzu;
            }
        } else {
            this.zzt = this.zzp;
        }
        mediaCodec.setVideoScalingMode(1);
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    protected final boolean zzT(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        while (true) {
            int i3 = this.zzA;
            if (i3 == 0) {
                break;
            }
            long[] jArr = this.zzf;
            long j4 = jArr[0];
            if (j3 < j4) {
                break;
            }
            this.zzz = j4;
            int i4 = i3 - 1;
            this.zzA = i4;
            System.arraycopy(jArr, 1, jArr, 0, i4);
        }
        long j5 = j3 - this.zzz;
        if (z) {
            zzL(mediaCodec, i, j5);
            return true;
        }
        long j6 = j3 - j;
        if (this.zzi == this.zzj) {
            if (zzaf(j6)) {
                zzL(mediaCodec, i, j5);
                return true;
            }
            return false;
        } else if (!this.zzk) {
            if (zzbay.zza >= 21) {
                zzK(mediaCodec, i, j5, System.nanoTime());
            } else {
                zzJ(mediaCodec, i, j5);
            }
            return true;
        } else if (zzb() != 2) {
            return false;
        } else {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long nanoTime = System.nanoTime();
            long zza = this.zzc.zza(j3, ((j6 - ((elapsedRealtime * 1000) - j2)) * 1000) + nanoTime);
            long j7 = (zza - nanoTime) / 1000;
            if (zzaf(j7)) {
                zzbaw.zza("dropVideoBuffer");
                mediaCodec.releaseOutputBuffer(i, false);
                zzbaw.zzb();
                zzaux zzauxVar = this.zza;
                zzauxVar.zzf++;
                this.zzn++;
                int i5 = this.zzo + 1;
                this.zzo = i5;
                zzauxVar.zzg = Math.max(i5, zzauxVar.zzg);
                if (this.zzn == -1) {
                    zzac();
                }
                return true;
            }
            if (zzbay.zza >= 21) {
                if (j7 < 50000) {
                    zzK(mediaCodec, i, j5, zza);
                    return true;
                }
            } else if (j7 < 30000) {
                if (j7 > 11000) {
                    try {
                        Thread.sleep((j7 - 10000) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
                zzJ(mediaCodec, i, j5);
                return true;
            }
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    protected final void zzX(zzauy zzauyVar) {
        int i = zzbay.zza;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzaxb
    public final void zzY() {
        try {
            super.zzY();
        } finally {
            Surface surface = this.zzj;
            if (surface != null) {
                if (this.zzi == surface) {
                    this.zzi = null;
                }
                surface.release();
                this.zzj = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    protected final boolean zzZ(MediaCodec mediaCodec, boolean z, zzatd zzatdVar, zzatd zzatdVar2) {
        if (zzatdVar.zzf.equals(zzatdVar2.zzf) && zzN(zzatdVar) == zzN(zzatdVar2)) {
            if (z || (zzatdVar.zzj == zzatdVar2.zzj && zzatdVar.zzk == zzatdVar2.zzk)) {
                int i = zzatdVar2.zzj;
                zzbbg zzbbgVar = this.zzh;
                return i <= zzbbgVar.zza && zzatdVar2.zzk <= zzbbgVar.zzb && zzatdVar2.zzg <= zzbbgVar.zzc;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    protected final boolean zzaa(zzawz zzawzVar) {
        return this.zzi != null || zzag(zzawzVar.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzasn, com.google.android.gms.internal.ads.zzasr
    public final void zzl(int i, Object obj) throws zzasp {
        if (i == 1) {
            Surface surface = (Surface) obj;
            if (surface == null) {
                Surface surface2 = this.zzj;
                if (surface2 != null) {
                    surface = surface2;
                } else {
                    zzawz zzV = zzV();
                    if (zzV != null && zzag(zzV.zzd)) {
                        surface = zzbbe.zza(this.zzb, zzV.zzd);
                        this.zzj = surface;
                    }
                }
            }
            if (this.zzi == surface) {
                if (surface == null || surface == this.zzj) {
                    return;
                }
                zzae();
                if (this.zzk) {
                    this.zzd.zzg(this.zzi);
                    return;
                }
                return;
            }
            this.zzi = surface;
            int zzb = zzb();
            if (zzb == 1 || zzb == 2) {
                MediaCodec zzU = zzU();
                if (zzbay.zza < 23 || zzU == null || surface == null) {
                    zzY();
                    zzW();
                } else {
                    zzU.setOutputSurface(surface);
                }
            }
            if (surface == null || surface == this.zzj) {
                zzab();
                this.zzk = false;
                int i2 = zzbay.zza;
                return;
            }
            zzae();
            this.zzk = false;
            int i3 = zzbay.zza;
            if (zzb == 2) {
                this.zzl = C.TIME_UNSET;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzaxb, com.google.android.gms.internal.ads.zzasn
    public final void zzn() {
        this.zzr = -1;
        this.zzs = -1;
        this.zzu = -1.0f;
        this.zzq = -1.0f;
        this.zzz = C.TIME_UNSET;
        this.zzA = 0;
        zzab();
        this.zzk = false;
        int i = zzbay.zza;
        this.zzc.zzb();
        try {
            super.zzn();
        } finally {
            this.zza.zza();
            this.zzd.zzc(this.zza);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzaxb, com.google.android.gms.internal.ads.zzasn
    public final void zzo(boolean z) throws zzasp {
        super.zzo(z);
        int i = zzg().zzb;
        this.zzd.zze(this.zza);
        this.zzc.zzc();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzaxb, com.google.android.gms.internal.ads.zzasn
    public final void zzp(long j, boolean z) throws zzasp {
        super.zzp(j, z);
        this.zzk = false;
        int i = zzbay.zza;
        this.zzo = 0;
        int i2 = this.zzA;
        if (i2 != 0) {
            this.zzz = this.zzf[i2 - 1];
            this.zzA = 0;
        }
        this.zzl = C.TIME_UNSET;
    }

    @Override // com.google.android.gms.internal.ads.zzasn
    protected final void zzq() {
        this.zzn = 0;
        this.zzm = SystemClock.elapsedRealtime();
        this.zzl = C.TIME_UNSET;
    }

    @Override // com.google.android.gms.internal.ads.zzasn
    protected final void zzr() {
        zzac();
    }

    @Override // com.google.android.gms.internal.ads.zzasn
    protected final void zzs(zzatd[] zzatdVarArr, long j) throws zzasp {
        this.zzg = zzatdVarArr;
        if (this.zzz == C.TIME_UNSET) {
            this.zzz = j;
            return;
        }
        int i = this.zzA;
        if (i == 10) {
            long j2 = this.zzf[9];
            Log.w("MediaCodecVideoRenderer", "Too many stream changes, so dropping offset: " + j2);
        } else {
            this.zzA = i + 1;
        }
        this.zzf[this.zzA - 1] = j;
    }
}
