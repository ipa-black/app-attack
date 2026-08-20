package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzos implements zznw {
    private static final Object zza = new Object();
    private static ExecutorService zzb;
    private static int zzc;
    private long zzA;
    private long zzB;
    private int zzC;
    private boolean zzD;
    private boolean zzE;
    private long zzF;
    private float zzG;
    private zzne[] zzH;
    private ByteBuffer[] zzI;
    private ByteBuffer zzJ;
    private int zzK;
    private ByteBuffer zzL;
    private byte[] zzM;
    private int zzN;
    private int zzO;
    private boolean zzP;
    private boolean zzQ;
    private boolean zzR;
    private boolean zzS;
    private int zzT;
    private zzl zzU;
    private long zzV;
    private boolean zzW;
    private boolean zzX;
    private final zzoi zzY;
    private final zznb zzd;
    private final zzoc zze;
    private final zzpd zzf;
    private final zzne[] zzg;
    private final zzne[] zzh;
    private final zzdg zzi;
    private final zzoa zzj;
    private final ArrayDeque zzk;
    private zzoq zzl;
    private final zzol zzm;
    private final zzol zzn;
    private final zzof zzo;
    private zzmz zzp;
    private zznt zzq;
    private zzoh zzr;
    private zzoh zzs;
    private AudioTrack zzt;
    private zzk zzu;
    private zzok zzv;
    private zzok zzw;
    private final zzby zzx;
    private long zzy;
    private long zzz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzos(zzog zzogVar, zzor zzorVar) {
        zznb zznbVar;
        zzoi zzoiVar;
        zznbVar = zzogVar.zzb;
        this.zzd = zznbVar;
        zzoiVar = zzogVar.zzc;
        this.zzY = zzoiVar;
        int i = zzen.zza;
        this.zzo = zzogVar.zza;
        zzdg zzdgVar = new zzdg(zzde.zza);
        this.zzi = zzdgVar;
        zzdgVar.zze();
        this.zzj = new zzoa(new zzon(this, null));
        zzoc zzocVar = new zzoc();
        this.zze = zzocVar;
        zzpd zzpdVar = new zzpd();
        this.zzf = zzpdVar;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new zzoz(), zzocVar, zzpdVar);
        Collections.addAll(arrayList, zzoiVar.zze());
        this.zzg = (zzne[]) arrayList.toArray(new zzne[0]);
        this.zzh = new zzne[]{new zzov()};
        this.zzG = 1.0f;
        this.zzu = zzk.zza;
        this.zzT = 0;
        this.zzU = new zzl(0, 0.0f);
        this.zzw = new zzok(zzby.zza, false, 0L, 0L, null);
        this.zzx = zzby.zza;
        this.zzO = -1;
        this.zzH = new zzne[0];
        this.zzI = new ByteBuffer[0];
        this.zzk = new ArrayDeque();
        this.zzm = new zzol(100L);
        this.zzn = new zzol(100L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzC(AudioTrack audioTrack, zzdg zzdgVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            zzdgVar.zze();
            synchronized (zza) {
                int i = zzc - 1;
                zzc = i;
                if (i == 0) {
                    zzb.shutdown();
                    zzb = null;
                }
            }
        } catch (Throwable th) {
            zzdgVar.zze();
            synchronized (zza) {
                int i2 = zzc - 1;
                zzc = i2;
                if (i2 == 0) {
                    zzb.shutdown();
                    zzb = null;
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzE() {
        zzoh zzohVar = this.zzs;
        return zzohVar.zzc == 0 ? this.zzy / zzohVar.zzb : this.zzz;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzF() {
        zzoh zzohVar = this.zzs;
        return zzohVar.zzc == 0 ? this.zzA / zzohVar.zzd : this.zzB;
    }

    private final AudioTrack zzG(zzoh zzohVar) throws zzns {
        try {
            return zzohVar.zzb(false, this.zzu, this.zzT);
        } catch (zzns e2) {
            zznt zzntVar = this.zzq;
            if (zzntVar != null) {
                zzntVar.zza(e2);
            }
            throw e2;
        }
    }

    private final zzok zzH() {
        zzok zzokVar = this.zzv;
        return zzokVar != null ? zzokVar : !this.zzk.isEmpty() ? (zzok) this.zzk.getLast() : this.zzw;
    }

    private final void zzI(long j) {
        zzby zzbyVar;
        boolean z;
        if (zzS()) {
            zzoi zzoiVar = this.zzY;
            zzbyVar = zzH().zza;
            zzoiVar.zzc(zzbyVar);
        } else {
            zzbyVar = zzby.zza;
        }
        zzby zzbyVar2 = zzbyVar;
        if (zzS()) {
            zzoi zzoiVar2 = this.zzY;
            boolean z2 = zzH().zzb;
            zzoiVar2.zzd(z2);
            z = z2;
        } else {
            z = false;
        }
        this.zzk.add(new zzok(zzbyVar2, z, Math.max(0L, j), this.zzs.zza(zzF()), null));
        zzne[] zzneVarArr = this.zzs.zzi;
        ArrayList arrayList = new ArrayList();
        for (zzne zzneVar : zzneVarArr) {
            if (zzneVar.zzg()) {
                arrayList.add(zzneVar);
            } else {
                zzneVar.zzc();
            }
        }
        int size = arrayList.size();
        this.zzH = (zzne[]) arrayList.toArray(new zzne[size]);
        this.zzI = new ByteBuffer[size];
        zzJ();
        zznt zzntVar = this.zzq;
        if (zzntVar != null) {
            zzoy.zzU(((zzox) zzntVar).zza).zzs(z);
        }
    }

    private final void zzJ() {
        int i = 0;
        while (true) {
            zzne[] zzneVarArr = this.zzH;
            if (i >= zzneVarArr.length) {
                return;
            }
            zzne zzneVar = zzneVarArr[i];
            zzneVar.zzc();
            this.zzI[i] = zzneVar.zzb();
            i++;
        }
    }

    private final void zzK() {
        if (this.zzQ) {
            return;
        }
        this.zzQ = true;
        this.zzj.zzc(zzF());
        this.zzt.stop();
    }

    private final void zzL(long j) throws zznv {
        ByteBuffer byteBuffer;
        int length = this.zzH.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.zzI[i - 1];
            } else {
                byteBuffer = this.zzJ;
                if (byteBuffer == null) {
                    byteBuffer = zzne.zza;
                }
            }
            if (i == length) {
                zzO(byteBuffer, j);
            } else {
                zzne zzneVar = this.zzH[i];
                if (i > this.zzO) {
                    zzneVar.zze(byteBuffer);
                }
                ByteBuffer zzb2 = zzneVar.zzb();
                this.zzI[i] = zzb2;
                if (zzb2.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    private final void zzM(zzby zzbyVar, boolean z) {
        zzok zzH = zzH();
        if (zzbyVar.equals(zzH.zza) && z == zzH.zzb) {
            return;
        }
        zzok zzokVar = new zzok(zzbyVar, z, C.TIME_UNSET, C.TIME_UNSET, null);
        if (zzQ()) {
            this.zzv = zzokVar;
        } else {
            this.zzw = zzokVar;
        }
    }

    private final void zzN() {
        if (zzQ()) {
            if (zzen.zza >= 21) {
                this.zzt.setVolume(this.zzG);
                return;
            }
            AudioTrack audioTrack = this.zzt;
            float f2 = this.zzG;
            audioTrack.setStereoVolume(f2, f2);
        }
    }

    private final void zzO(ByteBuffer byteBuffer, long j) throws zznv {
        int write;
        zznt zzntVar;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.zzL;
            if (byteBuffer2 != null) {
                zzdd.zzd(byteBuffer2 == byteBuffer);
            } else {
                this.zzL = byteBuffer;
                if (zzen.zza < 21) {
                    int remaining = byteBuffer.remaining();
                    byte[] bArr = this.zzM;
                    if (bArr == null || bArr.length < remaining) {
                        this.zzM = new byte[remaining];
                    }
                    int position = byteBuffer.position();
                    byteBuffer.get(this.zzM, 0, remaining);
                    byteBuffer.position(position);
                    this.zzN = 0;
                }
            }
            int remaining2 = byteBuffer.remaining();
            if (zzen.zza < 21) {
                int zza2 = this.zzj.zza(this.zzA);
                if (zza2 > 0) {
                    write = this.zzt.write(this.zzM, this.zzN, Math.min(remaining2, zza2));
                    if (write > 0) {
                        this.zzN += write;
                        byteBuffer.position(byteBuffer.position() + write);
                    }
                } else {
                    write = 0;
                }
            } else {
                write = this.zzt.write(byteBuffer, remaining2, 1);
            }
            this.zzV = SystemClock.elapsedRealtime();
            if (write < 0) {
                if (((zzen.zza < 24 || write != -6) && write != -32) || this.zzB <= 0) {
                    r0 = false;
                }
                zznv zznvVar = new zznv(write, this.zzs.zza, r0);
                zznt zzntVar2 = this.zzq;
                if (zzntVar2 != null) {
                    zzntVar2.zza(zznvVar);
                }
                if (zznvVar.zzb) {
                    throw zznvVar;
                }
                this.zzn.zzb(zznvVar);
                return;
            }
            this.zzn.zza();
            if (zzR(this.zzt)) {
                if (this.zzB > 0) {
                    this.zzX = false;
                }
                if (this.zzR && (zzntVar = this.zzq) != null && write < remaining2 && !this.zzX) {
                    zzoy zzoyVar = ((zzox) zzntVar).zza;
                    if (zzoy.zzT(zzoyVar) != null) {
                        zzoy.zzT(zzoyVar).zza();
                    }
                }
            }
            int i = this.zzs.zzc;
            if (i == 0) {
                this.zzA += write;
            }
            if (write == remaining2) {
                if (i != 0) {
                    zzdd.zzf(byteBuffer == this.zzJ);
                    this.zzB += this.zzC * this.zzK;
                }
                this.zzL = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzP() throws com.google.android.gms.internal.ads.zznv {
        /*
            r9 = this;
            int r0 = r9.zzO
            r1 = 1
            r2 = 0
            r3 = -1
            if (r0 != r3) goto Lb
            r9.zzO = r2
        L9:
            r0 = r1
            goto Lc
        Lb:
            r0 = r2
        Lc:
            int r4 = r9.zzO
            com.google.android.gms.internal.ads.zzne[] r5 = r9.zzH
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.zzd()
        L1f:
            r9.zzL(r7)
            boolean r0 = r4.zzh()
            if (r0 != 0) goto L29
            return r2
        L29:
            int r0 = r9.zzO
            int r0 = r0 + r1
            r9.zzO = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.zzL
            if (r0 == 0) goto L3b
            r9.zzO(r0, r7)
            java.nio.ByteBuffer r0 = r9.zzL
            if (r0 == 0) goto L3b
            return r2
        L3b:
            r9.zzO = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzos.zzP():boolean");
    }

    private final boolean zzQ() {
        return this.zzt != null;
    }

    private static boolean zzR(AudioTrack audioTrack) {
        return zzen.zza >= 29 && audioTrack.isOffloadedPlayback();
    }

    private final boolean zzS() {
        if (MimeTypes.AUDIO_RAW.equals(this.zzs.zza.zzm)) {
            int i = this.zzs.zza.zzB;
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final int zza(zzaf zzafVar) {
        if (!MimeTypes.AUDIO_RAW.equals(zzafVar.zzm)) {
            if (!this.zzW) {
                int i = zzen.zza;
            }
            return this.zzd.zza(zzafVar) != null ? 2 : 0;
        } else if (zzen.zzV(zzafVar.zzB)) {
            return zzafVar.zzB != 2 ? 1 : 2;
        } else {
            int i2 = zzafVar.zzB;
            zzdw.zze("DefaultAudioSink", "Invalid PCM encoding: " + i2);
            return 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final long zzb(boolean z) {
        long zzs;
        if (!zzQ() || this.zzE) {
            return Long.MIN_VALUE;
        }
        long min = Math.min(this.zzj.zzb(z), this.zzs.zza(zzF()));
        while (!this.zzk.isEmpty() && min >= ((zzok) this.zzk.getFirst()).zzd) {
            this.zzw = (zzok) this.zzk.remove();
        }
        zzok zzokVar = this.zzw;
        long j = min - zzokVar.zzd;
        if (zzokVar.zza.equals(zzby.zza)) {
            zzs = this.zzw.zzc + j;
        } else if (this.zzk.isEmpty()) {
            zzs = this.zzY.zza(j) + this.zzw.zzc;
        } else {
            zzok zzokVar2 = (zzok) this.zzk.getFirst();
            zzs = zzokVar2.zzc - zzen.zzs(zzokVar2.zzd - min, this.zzw.zza.zzc);
        }
        return zzs + this.zzs.zza(this.zzY.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final zzby zzc() {
        return zzH().zza;
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zzd(zzaf zzafVar, int i, int[] iArr) throws zznr {
        int i2;
        zzne[] zzneVarArr;
        int intValue;
        int i3;
        int intValue2;
        int i4;
        int i5;
        int zzf;
        int[] iArr2;
        if (MimeTypes.AUDIO_RAW.equals(zzafVar.zzm)) {
            zzdd.zzd(zzen.zzV(zzafVar.zzB));
            i3 = zzen.zzo(zzafVar.zzB, zzafVar.zzz);
            int i6 = zzafVar.zzB;
            zzne[] zzneVarArr2 = this.zzg;
            this.zzf.zzq(zzafVar.zzC, zzafVar.zzD);
            if (zzen.zza < 21 && zzafVar.zzz == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i7 = 0; i7 < 6; i7++) {
                    iArr2[i7] = i7;
                }
            } else {
                iArr2 = iArr;
            }
            this.zze.zzo(iArr2);
            zznc zzncVar = new zznc(zzafVar.zzA, zzafVar.zzz, zzafVar.zzB);
            for (zzne zzneVar : zzneVarArr2) {
                try {
                    zznc zza2 = zzneVar.zza(zzncVar);
                    if (true == zzneVar.zzg()) {
                        zzncVar = zza2;
                    }
                } catch (zznd e2) {
                    throw new zznr(e2, zzafVar);
                }
            }
            int i8 = zzncVar.zzd;
            int i9 = zzncVar.zzb;
            int i10 = zzncVar.zzc;
            int zzj = zzen.zzj(i10);
            zzneVarArr = zzneVarArr2;
            i5 = zzen.zzo(i8, i10);
            i4 = i9;
            i2 = 0;
            intValue = i8;
            intValue2 = zzj;
        } else {
            zzne[] zzneVarArr3 = new zzne[0];
            int i11 = zzafVar.zzA;
            int i12 = zzen.zza;
            Pair zza3 = this.zzd.zza(zzafVar);
            if (zza3 == null) {
                throw new zznr("Unable to configure passthrough for: ".concat(String.valueOf(String.valueOf(zzafVar))), zzafVar);
            }
            i2 = 2;
            zzneVarArr = zzneVarArr3;
            intValue = ((Integer) zza3.first).intValue();
            i3 = -1;
            intValue2 = ((Integer) zza3.second).intValue();
            i4 = i11;
            i5 = -1;
        }
        int minBufferSize = AudioTrack.getMinBufferSize(i4, intValue2, intValue);
        zzdd.zzf(minBufferSize != -2);
        int i13 = 250000;
        if (i2 == 0) {
            zzf = zzen.zzf(minBufferSize * 4, zzou.zza(250000, i4, i5), zzou.zza(750000, i4, i5));
        } else if (i2 == 1) {
            zzf = zzgcz.zza((zzou.zzb(intValue) * 50000000) / 1000000);
        } else {
            int i14 = 5;
            if (intValue == 5) {
                i13 = 500000;
                intValue = 5;
            } else {
                i14 = intValue;
            }
            zzf = zzgcz.zza((i13 * zzou.zzb(intValue)) / 1000000);
            i5 = i5;
            intValue = i14;
        }
        int max = (((Math.max(minBufferSize, zzf) + i5) - 1) / i5) * i5;
        if (intValue == 0) {
            throw new zznr("Invalid output encoding (mode=" + i2 + ") for: " + String.valueOf(zzafVar), zzafVar);
        } else if (intValue2 == 0) {
            throw new zznr("Invalid output channel config (mode=" + i2 + ") for: " + String.valueOf(zzafVar), zzafVar);
        } else {
            this.zzW = false;
            zzoh zzohVar = new zzoh(zzafVar, i3, i2, i5, i4, intValue2, intValue, max, zzneVarArr);
            if (zzQ()) {
                this.zzr = zzohVar;
            } else {
                this.zzs = zzohVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zze() {
        if (zzQ()) {
            this.zzy = 0L;
            this.zzz = 0L;
            this.zzA = 0L;
            this.zzB = 0L;
            this.zzX = false;
            this.zzC = 0;
            this.zzw = new zzok(zzH().zza, zzH().zzb, 0L, 0L, null);
            this.zzF = 0L;
            this.zzv = null;
            this.zzk.clear();
            this.zzJ = null;
            this.zzK = 0;
            this.zzL = null;
            this.zzQ = false;
            this.zzP = false;
            this.zzO = -1;
            this.zzf.zzp();
            zzJ();
            if (this.zzj.zzh()) {
                this.zzt.pause();
            }
            if (zzR(this.zzt)) {
                zzoq zzoqVar = this.zzl;
                zzoqVar.getClass();
                zzoqVar.zzb(this.zzt);
            }
            if (zzen.zza < 21 && !this.zzS) {
                this.zzT = 0;
            }
            zzoh zzohVar = this.zzr;
            if (zzohVar != null) {
                this.zzs = zzohVar;
                this.zzr = null;
            }
            this.zzj.zzd();
            final AudioTrack audioTrack = this.zzt;
            final zzdg zzdgVar = this.zzi;
            zzdgVar.zzc();
            synchronized (zza) {
                if (zzb == null) {
                    zzb = zzen.zzQ("ExoPlayer:AudioTrackReleaseThread");
                }
                zzc++;
                zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzod
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzos.zzC(audioTrack, zzdgVar);
                    }
                });
            }
            this.zzt = null;
        }
        this.zzn.zza();
        this.zzm.zza();
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zzf() {
        this.zzD = true;
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zzg() {
        this.zzR = false;
        if (zzQ() && this.zzj.zzk()) {
            this.zzt.pause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zzh() {
        this.zzR = true;
        if (zzQ()) {
            this.zzj.zzf();
            this.zzt.play();
        }
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zzi() throws zznv {
        if (!this.zzP && zzQ() && zzP()) {
            zzK();
            this.zzP = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zzj() {
        zze();
        for (zzne zzneVar : this.zzg) {
            zzneVar.zzf();
        }
        zzne[] zzneVarArr = this.zzh;
        int length = zzneVarArr.length;
        for (int i = 0; i <= 0; i++) {
            zzneVarArr[i].zzf();
        }
        this.zzR = false;
        this.zzW = false;
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zzk(zzk zzkVar) {
        if (this.zzu.equals(zzkVar)) {
            return;
        }
        this.zzu = zzkVar;
        zze();
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zzl(int i) {
        if (this.zzT != i) {
            this.zzT = i;
            this.zzS = i != 0;
            zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zzm(zzl zzlVar) {
        if (this.zzU.equals(zzlVar)) {
            return;
        }
        int i = zzlVar.zza;
        float f2 = zzlVar.zzb;
        if (this.zzt != null) {
            int i2 = this.zzU.zza;
        }
        this.zzU = zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zzn(zznt zzntVar) {
        this.zzq = zzntVar;
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zzo(zzby zzbyVar) {
        zzM(new zzby(zzen.zza(zzbyVar.zzc, 0.1f, 8.0f), zzen.zza(zzbyVar.zzd, 0.1f, 8.0f)), zzH().zzb);
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zzp(zzmz zzmzVar) {
        this.zzp = zzmzVar;
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zzq(boolean z) {
        zzM(zzH().zza, z);
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zzr(float f2) {
        if (this.zzG != f2) {
            this.zzG = f2;
            zzN();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0151 A[Catch: zzns -> 0x0155, TryCatch #0 {zzns -> 0x0155, blocks: (B:36:0x0087, B:49:0x00d2, B:51:0x00da, B:53:0x00e0, B:54:0x00e7, B:55:0x00f9, B:57:0x00fd, B:59:0x0101, B:60:0x0106, B:64:0x011c, B:45:0x009c, B:47:0x00a5, B:69:0x0149, B:71:0x0151, B:72:0x0154, B:39:0x0090, B:41:0x0095), top: B:182:0x0087, inners: #2 }] */
    @Override // com.google.android.gms.internal.ads.zznw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzs(java.nio.ByteBuffer r25, long r26, int r28) throws com.google.android.gms.internal.ads.zzns, com.google.android.gms.internal.ads.zznv {
        /*
            Method dump skipped, instructions count: 936
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzos.zzs(java.nio.ByteBuffer, long, int):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final boolean zzt() {
        return zzQ() && this.zzj.zzg(zzF());
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final boolean zzu() {
        if (zzQ()) {
            return this.zzP && !zzt();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final boolean zzv(zzaf zzafVar) {
        return zza(zzafVar) != 0;
    }
}
