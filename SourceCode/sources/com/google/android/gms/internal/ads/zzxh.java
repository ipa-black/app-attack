package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import android.view.Surface;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.common.Scopes;
import com.google.firebase.messaging.Constants;
import com.onesignal.OneSignalRemoteParams;
import io.bidmachine.utils.IabUtils;
import java.nio.ByteBuffer;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzxh extends zzqp {
    private static final int[] zzb = {1920, 1600, OneSignalRemoteParams.DEFAULT_INDIRECT_ATTRIBUTION_WINDOW, 1280, 960, 854, 640, 540, 480};
    private static boolean zzc;
    private static boolean zzd;
    private long zzA;
    private int zzB;
    private int zzC;
    private int zzD;
    private int zzE;
    private float zzF;
    private zzda zzG;
    private int zzH;
    private zzxl zzI;
    private final Context zze;
    private final zzxs zzf;
    private final zzyd zzg;
    private final boolean zzh;
    private zzxg zzi;
    private boolean zzj;
    private boolean zzk;
    private Surface zzl;
    private zzxk zzm;
    private boolean zzn;
    private int zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private long zzs;
    private long zzt;
    private long zzu;
    private int zzv;
    private int zzw;
    private int zzx;
    private long zzy;
    private long zzz;

    public zzxh(Context context, zzqi zzqiVar, zzqr zzqrVar, long j, boolean z, Handler handler, zzye zzyeVar, int i, float f2) {
        super(2, zzqiVar, zzqrVar, false, 30.0f);
        Context applicationContext = context.getApplicationContext();
        this.zze = applicationContext;
        this.zzf = new zzxs(applicationContext);
        this.zzg = new zzyd(handler, zzyeVar);
        this.zzh = "NVIDIA".equals(zzen.zzc);
        this.zzt = C.TIME_UNSET;
        this.zzC = -1;
        this.zzD = -1;
        this.zzF = -1.0f;
        this.zzo = 1;
        this.zzH = 0;
        this.zzG = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0072, code lost:
        if (r3.equals(com.google.android.exoplayer2.util.MimeTypes.VIDEO_AV1) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zzT(com.google.android.gms.internal.ads.zzqm r10, com.google.android.gms.internal.ads.zzaf r11) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxh.zzT(com.google.android.gms.internal.ads.zzqm, com.google.android.gms.internal.ads.zzaf):int");
    }

    protected static int zzU(zzqm zzqmVar, zzaf zzafVar) {
        if (zzafVar.zzn != -1) {
            int size = zzafVar.zzo.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                i += ((byte[]) zzafVar.zzo.get(i2)).length;
            }
            return zzafVar.zzn + i;
        }
        return zzT(zzqmVar, zzafVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x04c3, code lost:
        if (r13.equals("deb") != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:512:0x079e, code lost:
        if (r0.equals("JSN-L21") == false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0080 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static final boolean zzaB(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 2926
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxh.zzaB(java.lang.String):boolean");
    }

    private static List zzaC(Context context, zzqr zzqrVar, zzaf zzafVar, boolean z, boolean z2) throws zzqy {
        String str = zzafVar.zzm;
        if (str == null) {
            return zzgau.zzo();
        }
        List zzf = zzre.zzf(str, z, z2);
        String zze = zzre.zze(zzafVar);
        if (zze == null) {
            return zzgau.zzm(zzf);
        }
        List zzf2 = zzre.zzf(zze, z, z2);
        if (zzen.zza < 26 || !MimeTypes.VIDEO_DOLBY_VISION.equals(zzafVar.zzm) || zzf2.isEmpty() || zzxf.zza(context)) {
            zzgar zzi = zzgau.zzi();
            zzi.zzf(zzf);
            zzi.zzf(zzf2);
            return zzi.zzg();
        }
        return zzgau.zzm(zzf2);
    }

    private final void zzaD() {
        int i = this.zzC;
        if (i == -1) {
            if (this.zzD == -1) {
                return;
            }
            i = -1;
        }
        zzda zzdaVar = this.zzG;
        if (zzdaVar != null && zzdaVar.zzc == i && zzdaVar.zzd == this.zzD && zzdaVar.zze == this.zzE && zzdaVar.zzf == this.zzF) {
            return;
        }
        zzda zzdaVar2 = new zzda(i, this.zzD, this.zzE, this.zzF);
        this.zzG = zzdaVar2;
        this.zzg.zzt(zzdaVar2);
    }

    private final void zzaE() {
        zzda zzdaVar = this.zzG;
        if (zzdaVar != null) {
            this.zzg.zzt(zzdaVar);
        }
    }

    private final void zzaF() {
        Surface surface = this.zzl;
        zzxk zzxkVar = this.zzm;
        if (surface == zzxkVar) {
            this.zzl = null;
        }
        zzxkVar.release();
        this.zzm = null;
    }

    private static boolean zzaG(long j) {
        return j < -30000;
    }

    private final boolean zzaH(zzqm zzqmVar) {
        if (zzen.zza < 23 || zzaB(zzqmVar.zza)) {
            return false;
        }
        return !zzqmVar.zzf || zzxk.zzb(this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzqp, com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzjy
    public final void zzD(float f2, float f3) throws zzha {
        super.zzD(f2, f3);
        this.zzf.zze(f2);
    }

    @Override // com.google.android.gms.internal.ads.zzjy, com.google.android.gms.internal.ads.zzjz
    public final String zzK() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzqp, com.google.android.gms.internal.ads.zzjy
    public final boolean zzN() {
        zzxk zzxkVar;
        if (!super.zzN() || (!this.zzp && (((zzxkVar = this.zzm) == null || this.zzl != zzxkVar) && zzaj() != null))) {
            if (this.zzt == C.TIME_UNSET) {
                return false;
            }
            if (SystemClock.elapsedRealtime() < this.zzt) {
                return true;
            }
            this.zzt = C.TIME_UNSET;
            return false;
        }
        this.zzt = C.TIME_UNSET;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final float zzP(float f2, zzaf zzafVar, zzaf[] zzafVarArr) {
        float f3 = -1.0f;
        for (zzaf zzafVar2 : zzafVarArr) {
            float f4 = zzafVar2.zzt;
            if (f4 != -1.0f) {
                f3 = Math.max(f3, f4);
            }
        }
        if (f3 == -1.0f) {
            return -1.0f;
        }
        return f3 * f2;
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final int zzQ(zzqr zzqrVar, zzaf zzafVar) throws zzqy {
        boolean z;
        if (zzbt.zzh(zzafVar.zzm)) {
            int i = 0;
            boolean z2 = zzafVar.zzp != null;
            List zzaC = zzaC(this.zze, zzqrVar, zzafVar, z2, false);
            if (z2 && zzaC.isEmpty()) {
                zzaC = zzaC(this.zze, zzqrVar, zzafVar, false, false);
            }
            if (zzaC.isEmpty()) {
                return TsExtractor.TS_STREAM_TYPE_AC3;
            }
            if (zzav(zzafVar)) {
                zzqm zzqmVar = (zzqm) zzaC.get(0);
                boolean zzd2 = zzqmVar.zzd(zzafVar);
                if (!zzd2) {
                    for (int i2 = 1; i2 < zzaC.size(); i2++) {
                        zzqm zzqmVar2 = (zzqm) zzaC.get(i2);
                        if (zzqmVar2.zzd(zzafVar)) {
                            zzd2 = true;
                            z = false;
                            zzqmVar = zzqmVar2;
                            break;
                        }
                    }
                }
                z = true;
                int i3 = true != zzd2 ? 3 : 4;
                int i4 = true != zzqmVar.zze(zzafVar) ? 8 : 16;
                int i5 = true != zzqmVar.zzg ? 0 : 64;
                int i6 = true != z ? 0 : 128;
                if (zzen.zza >= 26 && MimeTypes.VIDEO_DOLBY_VISION.equals(zzafVar.zzm) && !zzxf.zza(this.zze)) {
                    i6 = 256;
                }
                if (zzd2) {
                    List zzaC2 = zzaC(this.zze, zzqrVar, zzafVar, z2, true);
                    if (!zzaC2.isEmpty()) {
                        zzqm zzqmVar3 = (zzqm) zzre.zzg(zzaC2, zzafVar).get(0);
                        if (zzqmVar3.zzd(zzafVar) && zzqmVar3.zze(zzafVar)) {
                            i = 32;
                        }
                    }
                }
                return i3 | i4 | i | i5 | i6;
            }
            return TsExtractor.TS_STREAM_TYPE_HDMV_DTS;
        }
        return 128;
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final zzgt zzR(zzqm zzqmVar, zzaf zzafVar, zzaf zzafVar2) {
        int i;
        int i2;
        zzgt zzb2 = zzqmVar.zzb(zzafVar, zzafVar2);
        int i3 = zzb2.zze;
        int i4 = zzafVar2.zzr;
        zzxg zzxgVar = this.zzi;
        if (i4 > zzxgVar.zza || zzafVar2.zzs > zzxgVar.zzb) {
            i3 |= 256;
        }
        if (zzU(zzqmVar, zzafVar2) > this.zzi.zzc) {
            i3 |= 64;
        }
        String str = zzqmVar.zza;
        if (i3 != 0) {
            i2 = 0;
            i = i3;
        } else {
            i = 0;
            i2 = zzb2.zzd;
        }
        return new zzgt(str, zzafVar, zzafVar2, i2, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzqp
    public final zzgt zzS(zzje zzjeVar) throws zzha {
        zzgt zzS = super.zzS(zzjeVar);
        this.zzg.zzf(zzjeVar.zza, zzS);
        return zzS;
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final zzqh zzV(zzqm zzqmVar, zzaf zzafVar, MediaCrypto mediaCrypto, float f2) {
        zzxg zzxgVar;
        Point point;
        Pair zzb2;
        int zzT;
        zzaf zzafVar2 = zzafVar;
        zzxk zzxkVar = this.zzm;
        if (zzxkVar != null && zzxkVar.zza != zzqmVar.zzf) {
            zzaF();
        }
        String str = zzqmVar.zzc;
        zzaf[] zzJ = zzJ();
        int i = zzafVar2.zzr;
        int i2 = zzafVar2.zzs;
        int zzU = zzU(zzqmVar, zzafVar);
        int length = zzJ.length;
        if (length == 1) {
            if (zzU != -1 && (zzT = zzT(zzqmVar, zzafVar)) != -1) {
                zzU = Math.min((int) (zzU * 1.5f), zzT);
            }
            zzxgVar = new zzxg(i, i2, zzU);
        } else {
            boolean z = false;
            for (int i3 = 0; i3 < length; i3++) {
                zzaf zzafVar3 = zzJ[i3];
                if (zzafVar2.zzy != null && zzafVar3.zzy == null) {
                    zzad zzb3 = zzafVar3.zzb();
                    zzb3.zzy(zzafVar2.zzy);
                    zzafVar3 = zzb3.zzY();
                }
                if (zzqmVar.zzb(zzafVar2, zzafVar3).zzd != 0) {
                    int i4 = zzafVar3.zzr;
                    z |= i4 == -1 || zzafVar3.zzs == -1;
                    i = Math.max(i, i4);
                    i2 = Math.max(i2, zzafVar3.zzs);
                    zzU = Math.max(zzU, zzU(zzqmVar, zzafVar3));
                }
            }
            if (z) {
                zzdw.zze("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i + "x" + i2);
                int i5 = zzafVar2.zzs;
                int i6 = zzafVar2.zzr;
                boolean z2 = i5 > i6;
                int i7 = z2 ? i5 : i6;
                if (true == z2) {
                    i5 = i6;
                }
                float f3 = i5 / i7;
                int[] iArr = zzb;
                int i8 = 0;
                while (i8 < 9) {
                    int i9 = iArr[i8];
                    int[] iArr2 = iArr;
                    int i10 = (int) (i9 * f3);
                    if (i9 <= i7 || i10 <= i5) {
                        break;
                    }
                    int i11 = i5;
                    float f4 = f3;
                    if (zzen.zza >= 21) {
                        int i12 = true != z2 ? i9 : i10;
                        if (true != z2) {
                            i9 = i10;
                        }
                        Point zza = zzqmVar.zza(i12, i9);
                        if (zzqmVar.zzf(zza.x, zza.y, zzafVar2.zzt)) {
                            point = zza;
                            break;
                        }
                        i8++;
                        zzafVar2 = zzafVar;
                        iArr = iArr2;
                        i5 = i11;
                        f3 = f4;
                    } else {
                        try {
                            int zze = zzen.zze(i9, 16) * 16;
                            int zze2 = zzen.zze(i10, 16) * 16;
                            if (zze * zze2 <= zzre.zza()) {
                                int i13 = true != z2 ? zze : zze2;
                                if (true != z2) {
                                    zze = zze2;
                                }
                                point = new Point(i13, zze);
                            } else {
                                i8++;
                                zzafVar2 = zzafVar;
                                iArr = iArr2;
                                i5 = i11;
                                f3 = f4;
                            }
                        } catch (zzqy unused) {
                        }
                    }
                }
                point = null;
                if (point != null) {
                    i = Math.max(i, point.x);
                    i2 = Math.max(i2, point.y);
                    zzad zzb4 = zzafVar.zzb();
                    zzb4.zzX(i);
                    zzb4.zzF(i2);
                    zzU = Math.max(zzU, zzT(zzqmVar, zzb4.zzY()));
                    zzdw.zze("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i + "x" + i2);
                }
            }
            zzxgVar = new zzxg(i, i2, zzU);
        }
        this.zzi = zzxgVar;
        boolean z3 = this.zzh;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger(IabUtils.KEY_WIDTH, zzafVar.zzr);
        mediaFormat.setInteger(IabUtils.KEY_HEIGHT, zzafVar.zzs);
        zzdy.zzb(mediaFormat, zzafVar.zzo);
        float f5 = zzafVar.zzt;
        if (f5 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f5);
        }
        zzdy.zza(mediaFormat, "rotation-degrees", zzafVar.zzu);
        zzq zzqVar = zzafVar.zzy;
        if (zzqVar != null) {
            zzdy.zza(mediaFormat, "color-transfer", zzqVar.zze);
            zzdy.zza(mediaFormat, "color-standard", zzqVar.zzc);
            zzdy.zza(mediaFormat, "color-range", zzqVar.zzd);
            byte[] bArr = zzqVar.zzf;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(zzafVar.zzm) && (zzb2 = zzre.zzb(zzafVar)) != null) {
            zzdy.zza(mediaFormat, Scopes.PROFILE, ((Integer) zzb2.first).intValue());
        }
        mediaFormat.setInteger("max-width", zzxgVar.zza);
        mediaFormat.setInteger("max-height", zzxgVar.zzb);
        zzdy.zza(mediaFormat, "max-input-size", zzxgVar.zzc);
        if (zzen.zza >= 23) {
            mediaFormat.setInteger(Constants.FirelogAnalytics.PARAM_PRIORITY, 0);
            if (f2 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f2);
            }
        }
        if (z3) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (this.zzl == null) {
            if (zzaH(zzqmVar)) {
                if (this.zzm == null) {
                    this.zzm = zzxk.zza(this.zze, zzqmVar.zzf);
                }
                this.zzl = this.zzm;
            } else {
                throw new IllegalStateException();
            }
        }
        return zzqh.zzb(zzqmVar, mediaFormat, zzafVar, this.zzl, null);
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final List zzW(zzqr zzqrVar, zzaf zzafVar, boolean z) throws zzqy {
        return zzre.zzg(zzaC(this.zze, zzqrVar, zzafVar, false, false), zzafVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final void zzX(Exception exc) {
        zzdw.zzc("MediaCodecVideoRenderer", "Video codec error", exc);
        this.zzg.zzs(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final void zzY(String str, zzqh zzqhVar, long j, long j2) {
        this.zzg.zza(str, j, j2);
        this.zzj = zzaB(str);
        zzqm zzal = zzal();
        zzal.getClass();
        boolean z = false;
        if (zzen.zza >= 29 && MimeTypes.VIDEO_VP9.equals(zzal.zzb)) {
            MediaCodecInfo.CodecProfileLevel[] zzg = zzal.zzg();
            int length = zzg.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (zzg[i].profile == 16384) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        this.zzk = z;
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final void zzZ(String str) {
        this.zzg.zzb(str);
    }

    protected final void zzaA(long j) {
        zzgs zzgsVar = this.zza;
        zzgsVar.zzk += j;
        zzgsVar.zzl++;
        this.zzA += j;
        this.zzB++;
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final void zzaa(zzaf zzafVar, MediaFormat mediaFormat) {
        int integer;
        int integer2;
        zzqj zzaj = zzaj();
        if (zzaj != null) {
            zzaj.zzq(this.zzo);
        }
        mediaFormat.getClass();
        boolean z = false;
        if (mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top")) {
            z = true;
        }
        if (z) {
            integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
        } else {
            integer = mediaFormat.getInteger(IabUtils.KEY_WIDTH);
        }
        this.zzC = integer;
        if (z) {
            integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
        } else {
            integer2 = mediaFormat.getInteger(IabUtils.KEY_HEIGHT);
        }
        this.zzD = integer2;
        this.zzF = zzafVar.zzv;
        if (zzen.zza >= 21) {
            int i = zzafVar.zzu;
            if (i == 90 || i == 270) {
                int i2 = this.zzC;
                this.zzC = this.zzD;
                this.zzD = i2;
                this.zzF = 1.0f / this.zzF;
            }
        } else {
            this.zzE = zzafVar.zzu;
        }
        this.zzf.zzc(zzafVar.zzt);
    }

    final void zzab() {
        this.zzr = true;
        if (this.zzp) {
            return;
        }
        this.zzp = true;
        this.zzg.zzq(this.zzl);
        this.zzn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final void zzac() {
        this.zzp = false;
        int i = zzen.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final void zzad(zzgi zzgiVar) throws zzha {
        this.zzx++;
        int i = zzen.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final zzqk zzak(Throwable th, zzqm zzqmVar) {
        return new zzxe(th, zzqmVar, this.zzl);
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final void zzam(zzgi zzgiVar) throws zzha {
        if (this.zzk) {
            ByteBuffer byteBuffer = zzgiVar.zze;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b2 = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b3 = byteBuffer.get();
                byte b4 = byteBuffer.get();
                byteBuffer.position(0);
                if (b2 == -75 && s == 60 && s2 == 1 && b3 == 4) {
                    if (b4 == 0 || b4 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        zzqj zzaj = zzaj();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        zzaj.zzp(bundle);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzqp
    public final void zzao(long j) {
        super.zzao(j);
        this.zzx--;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzqp
    public final void zzaq() {
        super.zzaq();
        this.zzx = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final boolean zzau(zzqm zzqmVar) {
        return this.zzl != null || zzaH(zzqmVar);
    }

    protected final void zzaw(zzqj zzqjVar, int i, long j) {
        zzaD();
        int i2 = zzen.zza;
        Trace.beginSection("releaseOutputBuffer");
        zzqjVar.zzn(i, true);
        Trace.endSection();
        this.zzz = SystemClock.elapsedRealtime() * 1000;
        this.zza.zze++;
        this.zzw = 0;
        zzab();
    }

    protected final void zzax(zzqj zzqjVar, int i, long j, long j2) {
        zzaD();
        int i2 = zzen.zza;
        Trace.beginSection("releaseOutputBuffer");
        zzqjVar.zzm(i, j2);
        Trace.endSection();
        this.zzz = SystemClock.elapsedRealtime() * 1000;
        this.zza.zze++;
        this.zzw = 0;
        zzab();
    }

    protected final void zzay(zzqj zzqjVar, int i, long j) {
        int i2 = zzen.zza;
        Trace.beginSection("skipVideoBuffer");
        zzqjVar.zzn(i, false);
        Trace.endSection();
        this.zza.zzf++;
    }

    protected final void zzaz(int i, int i2) {
        zzgs zzgsVar = this.zza;
        zzgsVar.zzh += i;
        int i3 = i + i2;
        zzgsVar.zzg += i3;
        this.zzv += i3;
        int i4 = this.zzw + i3;
        this.zzw = i4;
        zzgsVar.zzi = Math.max(i4, zzgsVar.zzi);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzqp, com.google.android.gms.internal.ads.zzgr
    public final void zzs() {
        this.zzG = null;
        this.zzp = false;
        int i = zzen.zza;
        this.zzn = false;
        try {
            super.zzs();
        } finally {
            this.zzg.zzc(this.zza);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzqp, com.google.android.gms.internal.ads.zzgr
    public final void zzt(boolean z, boolean z2) throws zzha {
        super.zzt(z, z2);
        zzk();
        this.zzg.zze(this.zza);
        this.zzq = z2;
        this.zzr = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzqp, com.google.android.gms.internal.ads.zzgr
    public final void zzu(long j, boolean z) throws zzha {
        super.zzu(j, z);
        this.zzp = false;
        int i = zzen.zza;
        this.zzf.zzf();
        this.zzy = C.TIME_UNSET;
        this.zzs = C.TIME_UNSET;
        this.zzw = 0;
        this.zzt = C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzqp, com.google.android.gms.internal.ads.zzgr
    public final void zzv() {
        try {
            super.zzv();
            if (this.zzm != null) {
                zzaF();
            }
        } catch (Throwable th) {
            if (this.zzm != null) {
                zzaF();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final void zzw() {
        this.zzv = 0;
        this.zzu = SystemClock.elapsedRealtime();
        this.zzz = SystemClock.elapsedRealtime() * 1000;
        this.zzA = 0L;
        this.zzB = 0;
        this.zzf.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzgr
    protected final void zzx() {
        this.zzt = C.TIME_UNSET;
        if (this.zzv > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.zzg.zzd(this.zzv, elapsedRealtime - this.zzu);
            this.zzv = 0;
            this.zzu = elapsedRealtime;
        }
        int i = this.zzB;
        if (i != 0) {
            this.zzg.zzr(this.zzA, i);
            this.zzA = 0L;
            this.zzB = 0;
        }
        this.zzf.zzh();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v8, types: [android.view.Surface] */
    @Override // com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzju
    public final void zzp(int i, Object obj) throws zzha {
        if (i != 1) {
            if (i == 7) {
                this.zzI = (zzxl) obj;
                return;
            } else if (i == 10) {
                int intValue = ((Integer) obj).intValue();
                if (this.zzH != intValue) {
                    this.zzH = intValue;
                    return;
                }
                return;
            } else if (i != 4) {
                if (i != 5) {
                    return;
                }
                this.zzf.zzj(((Integer) obj).intValue());
                return;
            } else {
                int intValue2 = ((Integer) obj).intValue();
                this.zzo = intValue2;
                zzqj zzaj = zzaj();
                if (zzaj != null) {
                    zzaj.zzq(intValue2);
                    return;
                }
                return;
            }
        }
        zzxk zzxkVar = obj instanceof Surface ? (Surface) obj : null;
        if (zzxkVar == null) {
            zzxk zzxkVar2 = this.zzm;
            if (zzxkVar2 != null) {
                zzxkVar = zzxkVar2;
            } else {
                zzqm zzal = zzal();
                if (zzal != null && zzaH(zzal)) {
                    zzxkVar = zzxk.zza(this.zze, zzal.zzf);
                    this.zzm = zzxkVar;
                }
            }
        }
        if (this.zzl != zzxkVar) {
            this.zzl = zzxkVar;
            this.zzf.zzi(zzxkVar);
            this.zzn = false;
            int zzbe = zzbe();
            zzqj zzaj2 = zzaj();
            if (zzaj2 != null) {
                if (zzen.zza < 23 || zzxkVar == null || this.zzj) {
                    zzap();
                    zzan();
                } else {
                    zzaj2.zzo(zzxkVar);
                }
            }
            if (zzxkVar == null || zzxkVar == this.zzm) {
                this.zzG = null;
                this.zzp = false;
                int i2 = zzen.zza;
                return;
            }
            zzaE();
            this.zzp = false;
            int i3 = zzen.zza;
            if (zzbe == 2) {
                this.zzt = C.TIME_UNSET;
            }
        } else if (zzxkVar == null || zzxkVar == this.zzm) {
        } else {
            zzaE();
            if (this.zzn) {
                this.zzg.zzq(this.zzl);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqp
    protected final boolean zzaf(long j, long j2, zzqj zzqjVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzaf zzafVar) throws zzha {
        boolean z3;
        int zzd2;
        zzqjVar.getClass();
        if (this.zzs == C.TIME_UNSET) {
            this.zzs = j;
        }
        if (j3 != this.zzy) {
            this.zzf.zzd(j3);
            this.zzy = j3;
        }
        long zzai = zzai();
        long j4 = j3 - zzai;
        if (!z || z2) {
            double zzah = zzah();
            boolean z4 = zzbe() == 2;
            long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
            long j5 = (long) ((j3 - j) / zzah);
            if (z4) {
                j5 -= elapsedRealtime - j2;
            }
            if (this.zzl == this.zzm) {
                if (zzaG(j5)) {
                    zzay(zzqjVar, i, j4);
                    zzaA(j5);
                    return true;
                }
                return false;
            }
            long j6 = elapsedRealtime - this.zzz;
            boolean z5 = this.zzr ? !this.zzp : z4 || this.zzq;
            if (this.zzt == C.TIME_UNSET && j >= zzai && (z5 || (z4 && zzaG(j5) && j6 > 100000))) {
                long nanoTime = System.nanoTime();
                if (zzen.zza >= 21) {
                    zzax(zzqjVar, i, j4, nanoTime);
                } else {
                    zzaw(zzqjVar, i, j4);
                }
                zzaA(j5);
                return true;
            }
            if (z4 && j != this.zzs) {
                long nanoTime2 = System.nanoTime();
                long zza = this.zzf.zza((j5 * 1000) + nanoTime2);
                long j7 = (zza - nanoTime2) / 1000;
                long j8 = this.zzt;
                if (j7 >= -500000 || z2 || (zzd2 = zzd(j)) == 0) {
                    if (!zzaG(j7) || z2) {
                        if (zzen.zza >= 21) {
                            if (j7 < 50000) {
                                zzax(zzqjVar, i, j4, zza);
                                zzaA(j7);
                                return true;
                            }
                        } else if (j7 < 30000) {
                            if (j7 > 11000) {
                                try {
                                    Thread.sleep(((-10000) + j7) / 1000);
                                } catch (InterruptedException unused) {
                                    Thread.currentThread().interrupt();
                                    return false;
                                }
                            }
                            zzaw(zzqjVar, i, j4);
                            zzaA(j7);
                            return true;
                        }
                    } else {
                        if (j8 == C.TIME_UNSET) {
                            int i4 = zzen.zza;
                            Trace.beginSection("dropVideoBuffer");
                            zzqjVar.zzn(i, false);
                            Trace.endSection();
                            z3 = true;
                            zzaz(0, 1);
                        } else {
                            zzay(zzqjVar, i, j4);
                            z3 = true;
                        }
                        zzaA(j7);
                        return z3;
                    }
                } else {
                    if (j8 != C.TIME_UNSET) {
                        zzgs zzgsVar = this.zza;
                        zzgsVar.zzd += zzd2;
                        zzgsVar.zzf += this.zzx;
                    } else {
                        this.zza.zzj++;
                        zzaz(zzd2, this.zzx);
                    }
                    zzas();
                    return false;
                }
            }
            return false;
        }
        zzay(zzqjVar, i, j4);
        return true;
    }
}
