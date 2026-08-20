package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import com.google.android.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaup extends zzaxb implements zzban {
    private final zzatz zzb;
    private final zzaul zzc;
    private boolean zzd;
    private int zze;
    private int zzf;
    private long zzg;
    private boolean zzh;

    public zzaup(zzaxd zzaxdVar, zzavd zzavdVar, boolean z, Handler handler, zzaua zzauaVar) {
        super(1, zzaxdVar, null, true);
        this.zzc = new zzaul(null, new zzats[0], new zzauo(this, null));
        this.zzb = new zzatz(handler, zzauaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaxb, com.google.android.gms.internal.ads.zzati
    public final boolean zzE() {
        return super.zzE() && this.zzc.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzaxb, com.google.android.gms.internal.ads.zzati
    public final boolean zzF() {
        return this.zzc.zzn() || super.zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    protected final int zzH(zzaxd zzaxdVar, zzatd zzatdVar) throws zzaxg {
        int i;
        int i2;
        String str = zzatdVar.zzf;
        if (zzbao.zza(str)) {
            int i3 = zzbay.zza >= 21 ? 16 : 0;
            zzawz zzc = zzaxl.zzc(str, false);
            if (zzc == null) {
                return 1;
            }
            int i4 = 3;
            if (zzbay.zza >= 21 && (((i = zzatdVar.zzs) != -1 && !zzc.zzd(i)) || ((i2 = zzatdVar.zzr) != -1 && !zzc.zzc(i2)))) {
                i4 = 2;
            }
            return i3 | 4 | i4;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final long zzI() {
        long zza = this.zzc.zza(zzE());
        if (zza != Long.MIN_VALUE) {
            if (!this.zzh) {
                zza = Math.max(this.zzg, zza);
            }
            this.zzg = zza;
            this.zzh = false;
        }
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final zzath zzJ() {
        return this.zzc.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final zzath zzK(zzath zzathVar) {
        return this.zzc.zzd(zzathVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    protected final zzawz zzM(zzaxd zzaxdVar, zzatd zzatdVar, boolean z) throws zzaxg {
        return super.zzM(zzaxdVar, zzatdVar, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0038, code lost:
        if (com.google.android.gms.internal.ads.zzbay.zzb.startsWith("heroqlte") == false) goto L16;
     */
    @Override // com.google.android.gms.internal.ads.zzaxb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void zzO(com.google.android.gms.internal.ads.zzawz r3, android.media.MediaCodec r4, com.google.android.gms.internal.ads.zzatd r5, android.media.MediaCrypto r6) {
        /*
            r2 = this;
            java.lang.String r3 = r3.zza
            int r6 = com.google.android.gms.internal.ads.zzbay.zza
            r0 = 24
            r1 = 0
            if (r6 >= r0) goto L3b
            java.lang.String r6 = "OMX.SEC.aac.dec"
            boolean r3 = r6.equals(r3)
            if (r3 == 0) goto L3b
            java.lang.String r3 = "samsung"
            java.lang.String r6 = com.google.android.gms.internal.ads.zzbay.zzc
            boolean r3 = r3.equals(r6)
            if (r3 == 0) goto L3b
            java.lang.String r3 = com.google.android.gms.internal.ads.zzbay.zzb
            java.lang.String r6 = "zeroflte"
            boolean r3 = r3.startsWith(r6)
            r6 = 1
            if (r3 != 0) goto L3c
            java.lang.String r3 = com.google.android.gms.internal.ads.zzbay.zzb
            java.lang.String r0 = "herolte"
            boolean r3 = r3.startsWith(r0)
            if (r3 != 0) goto L3c
            java.lang.String r3 = com.google.android.gms.internal.ads.zzbay.zzb
            java.lang.String r0 = "heroqlte"
            boolean r3 = r3.startsWith(r0)
            if (r3 == 0) goto L3b
            goto L3c
        L3b:
            r6 = r1
        L3c:
            r2.zzd = r6
            android.media.MediaFormat r3 = r5.zzb()
            r5 = 0
            r4.configure(r3, r5, r5, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaup.zzO(com.google.android.gms.internal.ads.zzawz, android.media.MediaCodec, com.google.android.gms.internal.ads.zzatd, android.media.MediaCrypto):void");
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    protected final void zzP(String str, long j, long j2) {
        this.zzb.zzd(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    protected final void zzQ(zzatd zzatdVar) throws zzasp {
        super.zzQ(zzatdVar);
        this.zzb.zzg(zzatdVar);
        this.zze = MimeTypes.AUDIO_RAW.equals(zzatdVar.zzf) ? zzatdVar.zzt : 2;
        this.zzf = zzatdVar.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    protected final void zzR(MediaCodec mediaCodec, MediaFormat mediaFormat) throws zzasp {
        int i;
        int[] iArr;
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        try {
            if (this.zzd && integer == 6) {
                int i2 = this.zzf;
                if (i2 < 6) {
                    int[] iArr2 = new int[i2];
                    for (int i3 = 0; i3 < this.zzf; i3++) {
                        iArr2[i3] = i3;
                    }
                    iArr = iArr2;
                    i = 6;
                    this.zzc.zze(MimeTypes.AUDIO_RAW, i, integer2, this.zze, 0, iArr);
                    return;
                }
                i = 6;
            } else {
                i = integer;
            }
            this.zzc.zze(MimeTypes.AUDIO_RAW, i, integer2, this.zze, 0, iArr);
            return;
        } catch (zzauf e2) {
            throw zzasp.zza(e2, zza());
        }
        iArr = null;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    protected final boolean zzT(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws zzasp {
        if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.zza.zze++;
            this.zzc.zzf();
            return true;
        }
        try {
            if (this.zzc.zzm(byteBuffer, j3)) {
                mediaCodec.releaseOutputBuffer(i, false);
                this.zza.zzd++;
                return true;
            }
            return false;
        } catch (zzaug | zzauk e2) {
            throw zzasp.zza(e2, zza());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasn, com.google.android.gms.internal.ads.zzati
    public final zzban zzi() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzasn, com.google.android.gms.internal.ads.zzasr
    public final void zzl(int i, Object obj) throws zzasp {
        if (i != 2) {
            return;
        }
        this.zzc.zzl(((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.ads.zzaxb, com.google.android.gms.internal.ads.zzasn
    protected final void zzn() {
        try {
            this.zzc.zzj();
            try {
                super.zzn();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.zzn();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxb, com.google.android.gms.internal.ads.zzasn
    protected final void zzo(boolean z) throws zzasp {
        super.zzo(z);
        this.zzb.zzf(this.zza);
        int i = zzg().zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaxb, com.google.android.gms.internal.ads.zzasn
    protected final void zzp(long j, boolean z) throws zzasp {
        super.zzp(j, z);
        this.zzc.zzk();
        this.zzg = j;
        this.zzh = true;
    }

    @Override // com.google.android.gms.internal.ads.zzasn
    protected final void zzq() {
        this.zzc.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzasn
    protected final void zzr() {
        this.zzc.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzaxb
    protected final void zzS() throws zzasp {
        try {
            this.zzc.zzi();
        } catch (zzauk e2) {
            throw zzasp.zza(e2, zza());
        }
    }
}
