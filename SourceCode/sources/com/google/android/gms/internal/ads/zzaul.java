package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaul {
    private Method zzA;
    private int zzB;
    private long zzC;
    private long zzD;
    private int zzE;
    private long zzF;
    private long zzG;
    private int zzH;
    private int zzI;
    private long zzJ;
    private long zzK;
    private long zzL;
    private float zzM;
    private zzats[] zzN;
    private ByteBuffer[] zzO;
    private ByteBuffer zzP;
    private ByteBuffer zzQ;
    private byte[] zzR;
    private int zzS;
    private int zzT;
    private boolean zzU;
    private boolean zzV;
    private int zzW;
    private boolean zzX;
    private long zzY;
    private final zzaum zza;
    private final zzaus zzb;
    private final zzats[] zzc;
    private final zzauh zzd;
    private final ConditionVariable zze = new ConditionVariable(true);
    private final long[] zzf;
    private final zzaud zzg;
    private final LinkedList zzh;
    private AudioTrack zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private boolean zzn;
    private int zzo;
    private long zzp;
    private zzath zzq;
    private zzath zzr;
    private long zzs;
    private long zzt;
    private int zzu;
    private int zzv;
    private long zzw;
    private long zzx;
    private boolean zzy;
    private long zzz;

    public zzaul(zzatq zzatqVar, zzats[] zzatsVarArr, zzauh zzauhVar) {
        this.zzd = zzauhVar;
        if (zzbay.zza >= 18) {
            try {
                Class[] clsArr = null;
                this.zzA = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        if (zzbay.zza >= 19) {
            this.zzg = new zzaue();
        } else {
            this.zzg = new zzaud(null);
        }
        zzaum zzaumVar = new zzaum();
        this.zza = zzaumVar;
        zzaus zzausVar = new zzaus();
        this.zzb = zzausVar;
        this.zzc = r1;
        System.arraycopy(zzatsVarArr, 0, r1, 2, 0);
        zzats[] zzatsVarArr2 = {new zzauq(), zzaumVar, zzausVar};
        this.zzf = new long[10];
        this.zzM = 1.0f;
        this.zzI = 0;
        this.zzW = 0;
        this.zzr = zzath.zza;
        this.zzT = -1;
        this.zzN = new zzats[0];
        this.zzO = new ByteBuffer[0];
        this.zzh = new LinkedList();
    }

    private final long zzp(long j) {
        return (j * this.zzj) / 1000000;
    }

    private final long zzq(long j) {
        return (j * 1000000) / this.zzj;
    }

    private final long zzr() {
        return this.zzn ? this.zzG : this.zzF / this.zzE;
    }

    private final void zzs(long j) throws zzauk {
        ByteBuffer byteBuffer;
        int length = this.zzN.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.zzO[i - 1];
            } else {
                byteBuffer = this.zzP;
                if (byteBuffer == null) {
                    byteBuffer = zzats.zza;
                }
            }
            if (i == length) {
                zzz(byteBuffer, j);
            } else {
                zzats zzatsVar = this.zzN[i];
                zzatsVar.zzf(byteBuffer);
                ByteBuffer zzc = zzatsVar.zzc();
                this.zzO[i] = zzc;
                if (zzc.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    private final void zzt() {
        ArrayList arrayList = new ArrayList();
        zzats[] zzatsVarArr = this.zzc;
        for (int i = 0; i < 3; i++) {
            zzats zzatsVar = zzatsVarArr[i];
            if (zzatsVar.zzi()) {
                arrayList.add(zzatsVar);
            } else {
                zzatsVar.zzd();
            }
        }
        int size = arrayList.size();
        this.zzN = (zzats[]) arrayList.toArray(new zzats[size]);
        this.zzO = new ByteBuffer[size];
        for (int i2 = 0; i2 < size; i2++) {
            zzats zzatsVar2 = this.zzN[i2];
            zzatsVar2.zzd();
            this.zzO[i2] = zzatsVar2.zzc();
        }
    }

    private final void zzu() {
        this.zzw = 0L;
        this.zzv = 0;
        this.zzu = 0;
        this.zzx = 0L;
        this.zzy = false;
        this.zzz = 0L;
    }

    private final void zzv() {
        if (zzx()) {
            if (zzbay.zza >= 21) {
                this.zzi.setVolume(this.zzM);
                return;
            }
            AudioTrack audioTrack = this.zzi;
            float f2 = this.zzM;
            audioTrack.setStereoVolume(f2, f2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0032 -> B:9:0x0012). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzw() throws com.google.android.gms.internal.ads.zzauk {
        /*
            r9 = this;
            int r0 = r9.zzT
            r1 = 1
            r2 = 0
            r3 = -1
            if (r0 != r3) goto L14
            boolean r0 = r9.zzn
            if (r0 == 0) goto Lf
            com.google.android.gms.internal.ads.zzats[] r0 = r9.zzN
            int r0 = r0.length
            goto L10
        Lf:
            r0 = r2
        L10:
            r9.zzT = r0
        L12:
            r0 = r1
            goto L15
        L14:
            r0 = r2
        L15:
            int r4 = r9.zzT
            com.google.android.gms.internal.ads.zzats[] r5 = r9.zzN
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L38
            r4 = r5[r4]
            if (r0 == 0) goto L28
            r4.zze()
        L28:
            r9.zzs(r7)
            boolean r0 = r4.zzj()
            if (r0 != 0) goto L32
            return r2
        L32:
            int r0 = r9.zzT
            int r0 = r0 + r1
            r9.zzT = r0
            goto L12
        L38:
            java.nio.ByteBuffer r0 = r9.zzQ
            if (r0 == 0) goto L44
            r9.zzz(r0, r7)
            java.nio.ByteBuffer r0 = r9.zzQ
            if (r0 == 0) goto L44
            return r2
        L44:
            r9.zzT = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaul.zzw():boolean");
    }

    private final boolean zzx() {
        return this.zzi != null;
    }

    private final boolean zzy() {
        if (zzbay.zza < 23) {
            int i = this.zzm;
            return i == 5 || i == 6;
        }
        return false;
    }

    private final boolean zzz(ByteBuffer byteBuffer, long j) throws zzauk {
        int write;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.zzQ;
            if (byteBuffer2 != null) {
                zzbaj.zzc(byteBuffer2 == byteBuffer);
            } else {
                this.zzQ = byteBuffer;
                if (zzbay.zza < 21) {
                    int remaining = byteBuffer.remaining();
                    byte[] bArr = this.zzR;
                    if (bArr == null || bArr.length < remaining) {
                        this.zzR = new byte[remaining];
                    }
                    int position = byteBuffer.position();
                    byteBuffer.get(this.zzR, 0, remaining);
                    byteBuffer.position(position);
                    this.zzS = 0;
                }
            }
            int remaining2 = byteBuffer.remaining();
            if (zzbay.zza < 21) {
                int zza = this.zzo - ((int) (this.zzF - (this.zzg.zza() * this.zzE)));
                if (zza > 0) {
                    write = this.zzi.write(this.zzR, this.zzS, Math.min(remaining2, zza));
                    if (write > 0) {
                        this.zzS += write;
                        byteBuffer.position(byteBuffer.position() + write);
                    }
                } else {
                    write = 0;
                }
            } else {
                write = this.zzi.write(byteBuffer, remaining2, 1);
            }
            this.zzY = SystemClock.elapsedRealtime();
            if (write >= 0) {
                boolean z = this.zzn;
                if (!z) {
                    this.zzF += write;
                }
                if (write == remaining2) {
                    if (z) {
                        this.zzG += this.zzH;
                    }
                    this.zzQ = null;
                    return true;
                }
                return false;
            }
            throw new zzauk(write);
        }
        return true;
    }

    public final long zza(boolean z) {
        long zzb;
        long j;
        long j2;
        zzath zzathVar;
        long j3;
        long j4;
        Method method;
        if (!zzx() || this.zzI == 0) {
            return Long.MIN_VALUE;
        }
        if (this.zzi.getPlayState() == 3) {
            long zzb2 = this.zzg.zzb();
            if (zzb2 != 0) {
                long nanoTime = System.nanoTime() / 1000;
                if (nanoTime - this.zzx >= 30000) {
                    long[] jArr = this.zzf;
                    int i = this.zzu;
                    jArr[i] = zzb2 - nanoTime;
                    this.zzu = (i + 1) % 10;
                    int i2 = this.zzv;
                    if (i2 < 10) {
                        this.zzv = i2 + 1;
                    }
                    this.zzx = nanoTime;
                    this.zzw = 0L;
                    int i3 = 0;
                    while (true) {
                        int i4 = this.zzv;
                        if (i3 >= i4) {
                            break;
                        }
                        this.zzw += this.zzf[i3] / i4;
                        i3++;
                    }
                }
                if (!zzy() && nanoTime - this.zzz >= 500000) {
                    boolean zzh = this.zzg.zzh();
                    this.zzy = zzh;
                    if (zzh) {
                        long zzd = this.zzg.zzd() / 1000;
                        long zzc = this.zzg.zzc();
                        if (zzd < this.zzK) {
                            this.zzy = false;
                        } else if (Math.abs(zzd - nanoTime) > 5000000) {
                            Log.w("AudioTrack", "Spurious audio timestamp (system clock mismatch): " + zzc + ", " + zzd + ", " + nanoTime + ", " + zzb2);
                            this.zzy = false;
                        } else if (Math.abs(zzq(zzc) - zzb2) > 5000000) {
                            Log.w("AudioTrack", "Spurious audio timestamp (frame position mismatch): " + zzc + ", " + zzd + ", " + nanoTime + ", " + zzb2);
                            this.zzy = false;
                        }
                    }
                    if (this.zzA != null && !this.zzn) {
                        try {
                            Object[] objArr = null;
                            long intValue = (((Integer) method.invoke(this.zzi, null)).intValue() * 1000) - this.zzp;
                            this.zzL = intValue;
                            long max = Math.max(intValue, 0L);
                            this.zzL = max;
                            if (max > 5000000) {
                                Log.w("AudioTrack", "Ignoring impossibly large audio latency: " + max);
                                this.zzL = 0L;
                            }
                        } catch (Exception unused) {
                            this.zzA = null;
                        }
                    }
                    this.zzz = nanoTime;
                }
            }
        }
        long nanoTime2 = System.nanoTime() / 1000;
        if (this.zzy) {
            zzb = zzq(this.zzg.zzc() + zzp(nanoTime2 - (this.zzg.zzd() / 1000)));
        } else {
            zzb = this.zzv == 0 ? this.zzg.zzb() : nanoTime2 + this.zzw;
            if (!z) {
                zzb -= this.zzL;
            }
        }
        long j5 = this.zzJ;
        while (!this.zzh.isEmpty()) {
            j2 = ((zzauj) this.zzh.getFirst()).zzc;
            if (zzb < j2) {
                break;
            }
            zzauj zzaujVar = (zzauj) this.zzh.remove();
            zzathVar = zzaujVar.zza;
            this.zzr = zzathVar;
            j3 = zzaujVar.zzc;
            this.zzt = j3;
            j4 = zzaujVar.zzb;
            this.zzs = j4 - this.zzJ;
        }
        if (this.zzr.zzb == 1.0f) {
            j = (zzb + this.zzs) - this.zzt;
        } else {
            if (this.zzh.isEmpty()) {
                zzaus zzausVar = this.zzb;
                if (zzausVar.zzn() >= 1024) {
                    j = zzbay.zzj(zzb - this.zzt, zzausVar.zzm(), zzausVar.zzn()) + this.zzs;
                }
            }
            j = ((long) (this.zzr.zzb * (zzb - this.zzt))) + this.zzs;
        }
        return j5 + j;
    }

    public final zzath zzc() {
        return this.zzr;
    }

    public final zzath zzd(zzath zzathVar) {
        if (this.zzn) {
            zzath zzathVar2 = zzath.zza;
            this.zzr = zzathVar2;
            return zzathVar2;
        }
        float zzl = this.zzb.zzl(zzathVar.zzb);
        zzaus zzausVar = this.zzb;
        float f2 = zzathVar.zzc;
        zzausVar.zzk(1.0f);
        zzath zzathVar3 = new zzath(zzl, 1.0f);
        zzath zzathVar4 = this.zzq;
        if (zzathVar4 == null) {
            if (!this.zzh.isEmpty()) {
                zzathVar4 = ((zzauj) this.zzh.getLast()).zza;
            } else {
                zzathVar4 = this.zzr;
            }
        }
        if (!zzathVar3.equals(zzathVar4)) {
            if (zzx()) {
                this.zzq = zzathVar3;
            } else {
                this.zzr = zzathVar3;
            }
        }
        return this.zzr;
    }

    public final void zzf() {
        if (this.zzI == 1) {
            this.zzI = 2;
        }
    }

    public final void zzg() {
        this.zzV = false;
        if (zzx()) {
            zzu();
            this.zzg.zzf();
        }
    }

    public final void zzh() {
        this.zzV = true;
        if (zzx()) {
            this.zzK = System.nanoTime() / 1000;
            this.zzi.play();
        }
    }

    public final void zzi() throws zzauk {
        if (!this.zzU && zzx() && zzw()) {
            this.zzg.zze(zzr());
            this.zzU = true;
        }
    }

    public final void zzj() {
        zzk();
        zzats[] zzatsVarArr = this.zzc;
        for (int i = 0; i < 3; i++) {
            zzatsVarArr[i].zzg();
        }
        this.zzW = 0;
        this.zzV = false;
    }

    public final void zzl(float f2) {
        if (this.zzM != f2) {
            this.zzM = f2;
            zzv();
        }
    }

    public final boolean zzm(ByteBuffer byteBuffer, long j) throws zzaug, zzauk {
        int i;
        zzatz zzatzVar;
        zzatz zzatzVar2;
        ByteBuffer byteBuffer2 = this.zzP;
        zzbaj.zzc(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (!zzx()) {
            this.zze.block();
            int i2 = this.zzW;
            if (i2 == 0) {
                this.zzi = new AudioTrack(3, this.zzj, this.zzk, this.zzm, this.zzo, 1);
            } else {
                this.zzi = new AudioTrack(3, this.zzj, this.zzk, this.zzm, this.zzo, 1, i2);
            }
            int state = this.zzi.getState();
            if (state == 1) {
                int audioSessionId = this.zzi.getAudioSessionId();
                if (this.zzW != audioSessionId) {
                    this.zzW = audioSessionId;
                    zzatzVar2 = ((zzauo) this.zzd).zza.zzb;
                    zzatzVar2.zzb(audioSessionId);
                }
                this.zzg.zzg(this.zzi, zzy());
                zzv();
                this.zzX = false;
                if (this.zzV) {
                    zzh();
                }
            } else {
                try {
                    this.zzi.release();
                } catch (Exception unused) {
                } finally {
                    this.zzi = null;
                }
                throw new zzaug(state, this.zzj, this.zzk, this.zzo);
            }
        }
        if (zzy()) {
            if (this.zzi.getPlayState() == 2) {
                this.zzX = false;
                return false;
            } else if (this.zzi.getPlayState() == 1 && this.zzg.zza() != 0) {
                return false;
            }
        }
        boolean z = this.zzX;
        boolean zzn = zzn();
        this.zzX = zzn;
        if (z && !zzn && this.zzi.getPlayState() != 1) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = this.zzY;
            zzauh zzauhVar = this.zzd;
            int i3 = this.zzo;
            long zzb = zzaso.zzb(this.zzp);
            zzatzVar = ((zzauo) zzauhVar).zza.zzb;
            zzatzVar.zzc(i3, zzb, elapsedRealtime - j2);
        }
        if (this.zzP == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.zzn && this.zzH == 0) {
                int i4 = this.zzm;
                if (i4 == 7 || i4 == 8) {
                    int position = byteBuffer.position();
                    i = ((((byteBuffer.get(position + 5) & 252) >> 2) | ((byteBuffer.get(position + 4) & 1) << 6)) + 1) * 32;
                } else if (i4 == 5) {
                    int i5 = zzatp.zza;
                    i = 1536;
                } else if (i4 == 6) {
                    i = zzatp.zza(byteBuffer);
                } else {
                    throw new IllegalStateException("Unexpected audio encoding: " + i4);
                }
                this.zzH = i;
            }
            if (this.zzq != null) {
                if (!zzw()) {
                    return false;
                }
                this.zzh.add(new zzauj(this.zzq, Math.max(0L, j), zzq(zzr()), null));
                this.zzq = null;
                zzt();
            }
            if (this.zzI == 0) {
                this.zzJ = Math.max(0L, j);
                this.zzI = 1;
            } else {
                long zzq = this.zzJ + zzq(this.zzn ? this.zzD : this.zzC / this.zzB);
                if (this.zzI == 1 && Math.abs(zzq - j) > 200000) {
                    Log.e("AudioTrack", "Discontinuity detected [expected " + zzq + ", got " + j + "]");
                    this.zzI = 2;
                }
                if (this.zzI == 2) {
                    this.zzJ += j - zzq;
                    this.zzI = 1;
                    ((zzauo) this.zzd).zza.zzh = true;
                }
            }
            if (this.zzn) {
                this.zzD += this.zzH;
            } else {
                this.zzC += byteBuffer.remaining();
            }
            this.zzP = byteBuffer;
        }
        if (this.zzn) {
            zzz(this.zzP, j);
        } else {
            zzs(j);
        }
        if (this.zzP.hasRemaining()) {
            return false;
        }
        this.zzP = null;
        return true;
    }

    public final boolean zzn() {
        if (zzx()) {
            if (zzr() <= this.zzg.zza()) {
                return zzy() && this.zzi.getPlayState() == 2 && this.zzi.getPlaybackHeadPosition() == 0;
            }
            return true;
        }
        return false;
    }

    public final boolean zzo() {
        if (zzx()) {
            return this.zzU && !zzn();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(java.lang.String r6, int r7, int r8, int r9, int r10, int[] r11) throws com.google.android.gms.internal.ads.zzauf {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaul.zze(java.lang.String, int, int, int, int, int[]):void");
    }

    public final void zzk() {
        zzath zzathVar;
        if (zzx()) {
            this.zzC = 0L;
            this.zzD = 0L;
            this.zzF = 0L;
            this.zzG = 0L;
            this.zzH = 0;
            zzath zzathVar2 = this.zzq;
            if (zzathVar2 != null) {
                this.zzr = zzathVar2;
                this.zzq = null;
            } else if (!this.zzh.isEmpty()) {
                zzathVar = ((zzauj) this.zzh.getLast()).zza;
                this.zzr = zzathVar;
            }
            this.zzh.clear();
            this.zzs = 0L;
            this.zzt = 0L;
            this.zzP = null;
            this.zzQ = null;
            int i = 0;
            while (true) {
                zzats[] zzatsVarArr = this.zzN;
                if (i >= zzatsVarArr.length) {
                    break;
                }
                zzats zzatsVar = zzatsVarArr[i];
                zzatsVar.zzd();
                this.zzO[i] = zzatsVar.zzc();
                i++;
            }
            this.zzU = false;
            this.zzT = -1;
            this.zzI = 0;
            this.zzL = 0L;
            zzu();
            if (this.zzi.getPlayState() == 3) {
                this.zzi.pause();
            }
            AudioTrack audioTrack = this.zzi;
            this.zzi = null;
            this.zzg.zzg(null, false);
            this.zze.close();
            new zzaub(this, audioTrack).start();
        }
    }
}
