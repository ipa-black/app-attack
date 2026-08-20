package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzef {
    private byte[] zza;
    private int zzb;
    private int zzc;

    public zzef() {
        this.zza = zzen.zzf;
    }

    public zzef(byte[] bArr, int i) {
        this.zza = bArr;
        this.zzc = i;
    }

    public final void zzA(zzee zzeeVar, int i) {
        zzB(zzeeVar.zza, 0, i);
        zzeeVar.zzh(0);
    }

    public final void zzB(byte[] bArr, int i, int i2) {
        System.arraycopy(this.zza, this.zzb, bArr, i, i2);
        this.zzb += i2;
    }

    public final void zzC(int i) {
        byte[] bArr = this.zza;
        if (bArr.length < i) {
            bArr = new byte[i];
        }
        zzD(bArr, i);
    }

    public final void zzD(byte[] bArr, int i) {
        this.zza = bArr;
        this.zzc = i;
        this.zzb = 0;
    }

    public final void zzE(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.zza.length) {
            z = true;
        }
        zzdd.zzd(z);
        this.zzc = i;
    }

    public final void zzF(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.zzc) {
            z = true;
        }
        zzdd.zzd(z);
        this.zzb = i;
    }

    public final void zzG(int i) {
        zzF(this.zzb + i);
    }

    public final byte[] zzH() {
        return this.zza;
    }

    public final int zza() {
        return this.zzc - this.zzb;
    }

    public final int zzb() {
        return this.zza.length;
    }

    public final int zzc() {
        return this.zzb;
    }

    public final int zzd() {
        return this.zzc;
    }

    public final int zze() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        byte b4 = bArr[i + 2];
        this.zzb = i + 4;
        return (bArr[i + 3] & 255) | ((b2 & 255) << 24) | ((b3 & 255) << 16) | ((b4 & 255) << 8);
    }

    public final int zzf() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        this.zzb = i + 3;
        return (bArr[i + 2] & 255) | (((b2 & 255) << 24) >> 8) | ((b3 & 255) << 8);
    }

    public final int zzg() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        byte b4 = bArr[i + 2];
        this.zzb = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (b2 & 255) | ((b3 & 255) << 8) | ((b4 & 255) << 16);
    }

    public final int zzh() {
        int zzg = zzg();
        if (zzg >= 0) {
            return zzg;
        }
        throw new IllegalStateException("Top bit not zero: " + zzg);
    }

    public final int zzi() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        this.zzb = i + 2;
        return ((bArr[i + 1] & 255) << 8) | (b2 & 255);
    }

    public final int zzj() {
        return (zzk() << 21) | (zzk() << 14) | (zzk() << 7) | zzk();
    }

    public final int zzk() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        this.zzb = i + 1;
        return bArr[i] & 255;
    }

    public final int zzl() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        this.zzb = i + 4;
        return (b3 & 255) | ((b2 & 255) << 8);
    }

    public final int zzm() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        this.zzb = i + 3;
        return (bArr[i + 2] & 255) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    public final int zzn() {
        int zze = zze();
        if (zze >= 0) {
            return zze;
        }
        throw new IllegalStateException("Top bit not zero: " + zze);
    }

    public final int zzo() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        this.zzb = i + 2;
        return (bArr[i + 1] & 255) | ((b2 & 255) << 8);
    }

    public final long zzp() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        byte b4 = bArr[i + 2];
        byte b5 = bArr[i + 3];
        byte b6 = bArr[i + 4];
        byte b7 = bArr[i + 5];
        int i2 = i + 7;
        byte b8 = bArr[i + 6];
        this.zzb = i + 8;
        return ((b3 & 255) << 8) | (b2 & 255) | ((b4 & 255) << 16) | ((b5 & 255) << 24) | ((b6 & 255) << 32) | ((b7 & 255) << 40) | ((b8 & 255) << 48) | ((bArr[i2] & 255) << 56);
    }

    public final long zzq() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        int i2 = i + 3;
        byte b4 = bArr[i + 2];
        this.zzb = i + 4;
        return ((b3 & 255) << 8) | (b2 & 255) | ((b4 & 255) << 16) | ((bArr[i2] & 255) << 24);
    }

    public final long zzr() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        byte b4 = bArr[i + 2];
        byte b5 = bArr[i + 3];
        byte b6 = bArr[i + 4];
        byte b7 = bArr[i + 5];
        int i2 = i + 7;
        byte b8 = bArr[i + 6];
        this.zzb = i + 8;
        return ((b3 & 255) << 48) | ((b2 & 255) << 56) | ((b4 & 255) << 40) | ((b5 & 255) << 32) | ((b6 & 255) << 24) | ((b7 & 255) << 16) | ((b8 & 255) << 8) | (bArr[i2] & 255);
    }

    public final long zzs() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        int i2 = i + 3;
        byte b4 = bArr[i + 2];
        this.zzb = i + 4;
        return ((b3 & 255) << 16) | ((b2 & 255) << 24) | ((b4 & 255) << 8) | (bArr[i2] & 255);
    }

    public final long zzt() {
        long zzr = zzr();
        if (zzr >= 0) {
            return zzr;
        }
        throw new IllegalStateException("Top bit not zero: " + zzr);
    }

    public final long zzu() {
        int i;
        int i2;
        byte b2;
        int i3;
        long j = this.zza[this.zzb];
        int i4 = 7;
        while (true) {
            i = 0;
            if (i4 < 0) {
                break;
            }
            if (((1 << i4) & j) != 0) {
                i4--;
            } else if (i4 < 6) {
                j &= i3 - 1;
                i = 7 - i4;
            } else if (i4 == 7) {
                i = 1;
            }
        }
        if (i == 0) {
            throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j);
        }
        for (i2 = 1; i2 < i; i2++) {
            if ((this.zza[this.zzb + i2] & 192) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j);
            }
            j = (j << 6) | (b2 & 63);
        }
        this.zzb += i;
        return j;
    }

    public final String zzv(char c2) {
        int i = this.zzc;
        int i2 = this.zzb;
        if (i - i2 != 0) {
            while (i2 < this.zzc && this.zza[i2] != 0) {
                i2++;
            }
            byte[] bArr = this.zza;
            int i3 = this.zzb;
            String zzJ = zzen.zzJ(bArr, i3, i2 - i3);
            this.zzb = i2;
            if (i2 < this.zzc) {
                this.zzb = i2 + 1;
            }
            return zzJ;
        }
        return null;
    }

    public final String zzw(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.zzb;
        int i3 = (i2 + i) - 1;
        String zzJ = zzen.zzJ(this.zza, i2, (i3 >= this.zzc || this.zza[i3] != 0) ? i : i - 1);
        this.zzb += i;
        return zzJ;
    }

    public final String zzx(int i, Charset charset) {
        byte[] bArr = this.zza;
        int i2 = this.zzb;
        String str = new String(bArr, i2, i, charset);
        this.zzb = i2 + i;
        return str;
    }

    public final short zzy() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        this.zzb = i + 2;
        return (short) ((bArr[i + 1] & 255) | ((b2 & 255) << 8));
    }

    public final void zzz(int i) {
        byte[] bArr = this.zza;
        if (i > bArr.length) {
            this.zza = Arrays.copyOf(bArr, i);
        }
    }

    public zzef(int i) {
        this.zza = new byte[i];
        this.zzc = i;
    }

    public zzef(byte[] bArr) {
        this.zza = bArr;
        this.zzc = bArr.length;
    }
}
