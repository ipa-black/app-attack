package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zztr {
    private final zzef zza = new zzef(32);
    private zztq zzb;
    private zztq zzc;
    private zztq zzd;
    private long zze;
    private final zzwi zzf;

    public zztr(zzwi zzwiVar, byte[] bArr) {
        this.zzf = zzwiVar;
        zztq zztqVar = new zztq(0L, 65536);
        this.zzb = zztqVar;
        this.zzc = zztqVar;
        this.zzd = zztqVar;
    }

    private final int zzi(int i) {
        zztq zztqVar = this.zzd;
        if (zztqVar.zzc == null) {
            zzwb zzb = this.zzf.zzb();
            zztq zztqVar2 = new zztq(this.zzd.zzb, 65536);
            zztqVar.zzc = zzb;
            zztqVar.zzd = zztqVar2;
        }
        return Math.min(i, (int) (this.zzd.zzb - this.zze));
    }

    private static zztq zzj(zztq zztqVar, long j) {
        while (j >= zztqVar.zzb) {
            zztqVar = zztqVar.zzd;
        }
        return zztqVar;
    }

    private static zztq zzk(zztq zztqVar, long j, ByteBuffer byteBuffer, int i) {
        zztq zzj = zzj(zztqVar, j);
        while (i > 0) {
            int min = Math.min(i, (int) (zzj.zzb - j));
            byteBuffer.put(zzj.zzc.zza, zzj.zza(j), min);
            i -= min;
            j += min;
            if (j == zzj.zzb) {
                zzj = zzj.zzd;
            }
        }
        return zzj;
    }

    private static zztq zzl(zztq zztqVar, long j, byte[] bArr, int i) {
        zztq zzj = zzj(zztqVar, j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (zzj.zzb - j));
            System.arraycopy(zzj.zzc.zza, zzj.zza(j), bArr, i - i2, min);
            i2 -= min;
            j += min;
            if (j == zzj.zzb) {
                zzj = zzj.zzd;
            }
        }
        return zzj;
    }

    private static zztq zzm(zztq zztqVar, zzgi zzgiVar, zztt zzttVar, zzef zzefVar) {
        zztq zztqVar2;
        if (zzgiVar.zzk()) {
            long j = zzttVar.zzb;
            int i = 1;
            zzefVar.zzC(1);
            zztq zzl = zzl(zztqVar, j, zzefVar.zzH(), 1);
            long j2 = j + 1;
            byte b2 = zzefVar.zzH()[0];
            boolean z = (b2 & 128) != 0;
            int i2 = b2 & Byte.MAX_VALUE;
            zzgf zzgfVar = zzgiVar.zza;
            byte[] bArr = zzgfVar.zza;
            if (bArr == null) {
                zzgfVar.zza = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            zztqVar2 = zzl(zzl, j2, zzgfVar.zza, i2);
            long j3 = j2 + i2;
            if (z) {
                zzefVar.zzC(2);
                zztqVar2 = zzl(zztqVar2, j3, zzefVar.zzH(), 2);
                j3 += 2;
                i = zzefVar.zzo();
            }
            int i3 = i;
            int[] iArr = zzgfVar.zzd;
            if (iArr == null || iArr.length < i3) {
                iArr = new int[i3];
            }
            int[] iArr2 = iArr;
            int[] iArr3 = zzgfVar.zze;
            if (iArr3 == null || iArr3.length < i3) {
                iArr3 = new int[i3];
            }
            int[] iArr4 = iArr3;
            if (z) {
                int i4 = i3 * 6;
                zzefVar.zzC(i4);
                zztqVar2 = zzl(zztqVar2, j3, zzefVar.zzH(), i4);
                j3 += i4;
                zzefVar.zzF(0);
                for (int i5 = 0; i5 < i3; i5++) {
                    iArr2[i5] = zzefVar.zzo();
                    iArr4[i5] = zzefVar.zzn();
                }
            } else {
                iArr2[0] = 0;
                iArr4[0] = zzttVar.zza - ((int) (j3 - zzttVar.zzb));
            }
            zzaap zzaapVar = zzttVar.zzc;
            int i6 = zzen.zza;
            zzgfVar.zzc(i3, iArr2, iArr4, zzaapVar.zzb, zzgfVar.zza, zzaapVar.zza, zzaapVar.zzc, zzaapVar.zzd);
            long j4 = zzttVar.zzb;
            int i7 = (int) (j3 - j4);
            zzttVar.zzb = j4 + i7;
            zzttVar.zza -= i7;
        } else {
            zztqVar2 = zztqVar;
        }
        if (zzgiVar.zze()) {
            zzefVar.zzC(4);
            zztq zzl2 = zzl(zztqVar2, zzttVar.zzb, zzefVar.zzH(), 4);
            int zzn = zzefVar.zzn();
            zzttVar.zzb += 4;
            zzttVar.zza -= 4;
            zzgiVar.zzi(zzn);
            zztq zzk = zzk(zzl2, zzttVar.zzb, zzgiVar.zzb, zzn);
            zzttVar.zzb += zzn;
            int i8 = zzttVar.zza - zzn;
            zzttVar.zza = i8;
            ByteBuffer byteBuffer = zzgiVar.zze;
            if (byteBuffer == null || byteBuffer.capacity() < i8) {
                zzgiVar.zze = ByteBuffer.allocate(i8);
            } else {
                zzgiVar.zze.clear();
            }
            return zzk(zzk, zzttVar.zzb, zzgiVar.zze, zzttVar.zza);
        }
        zzgiVar.zzi(zzttVar.zza);
        return zzk(zztqVar2, zzttVar.zzb, zzgiVar.zzb, zzttVar.zza);
    }

    private final void zzn(int i) {
        long j = this.zze + i;
        this.zze = j;
        zztq zztqVar = this.zzd;
        if (j == zztqVar.zzb) {
            this.zzd = zztqVar.zzd;
        }
    }

    public final int zza(zzr zzrVar, int i, boolean z) throws IOException {
        int zzi = zzi(i);
        zztq zztqVar = this.zzd;
        int zza = zzrVar.zza(zztqVar.zzc.zza, zztqVar.zza(this.zze), zzi);
        if (zza != -1) {
            zzn(zza);
            return zza;
        } else if (z) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    public final long zzb() {
        return this.zze;
    }

    public final void zzc(long j) {
        zztq zztqVar;
        if (j != -1) {
            while (true) {
                zztqVar = this.zzb;
                if (j < zztqVar.zzb) {
                    break;
                }
                this.zzf.zzc(zztqVar.zzc);
                this.zzb = this.zzb.zzb();
            }
            if (this.zzc.zza < zztqVar.zza) {
                this.zzc = zztqVar;
            }
        }
    }

    public final void zzd(zzgi zzgiVar, zztt zzttVar) {
        zzm(this.zzc, zzgiVar, zzttVar, this.zza);
    }

    public final void zze(zzgi zzgiVar, zztt zzttVar) {
        this.zzc = zzm(this.zzc, zzgiVar, zzttVar, this.zza);
    }

    public final void zzf() {
        zztq zztqVar = this.zzb;
        if (zztqVar.zzc != null) {
            this.zzf.zzd(zztqVar);
            zztqVar.zzb();
        }
        this.zzb.zze(0L, 65536);
        zztq zztqVar2 = this.zzb;
        this.zzc = zztqVar2;
        this.zzd = zztqVar2;
        this.zze = 0L;
        this.zzf.zzg();
    }

    public final void zzg() {
        this.zzc = this.zzb;
    }

    public final void zzh(zzef zzefVar, int i) {
        while (i > 0) {
            int zzi = zzi(i);
            zztq zztqVar = this.zzd;
            zzefVar.zzB(zztqVar.zzc.zza, zztqVar.zza(this.zze), zzi);
            i -= zzi;
            zzn(zzi);
        }
    }
}
