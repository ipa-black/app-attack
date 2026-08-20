package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbar {
    public byte[] zza;
    private int zzb;
    private int zzc;

    public zzbar() {
    }

    public zzbar(int i) {
        this.zza = new byte[i];
        this.zzc = i;
    }

    public final int zza() {
        return this.zzc - this.zzb;
    }

    public final int zzb() {
        byte[] bArr = this.zza;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
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
        this.zzb = i + 2;
        return ((bArr[i + 1] & 255) << 8) | (b2 & 255);
    }

    public final int zzg() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        this.zzb = i + 1;
        return bArr[i] & 255;
    }

    public final int zzh() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        this.zzb = i + 4;
        return (b3 & 255) | ((b2 & 255) << 8);
    }

    public final int zzi() {
        int zze = zze();
        if (zze >= 0) {
            return zze;
        }
        throw new IllegalStateException("Top bit not zero: " + zze);
    }

    public final int zzj() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        this.zzb = i + 2;
        return (bArr[i + 1] & 255) | ((b2 & 255) << 8);
    }

    public final long zzk() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        int i2 = i + 3;
        byte b4 = bArr[i + 2];
        this.zzb = i + 4;
        return ((b3 & 255) << 8) | (b2 & 255) | ((b4 & 255) << 16) | ((bArr[i2] & 255) << 24);
    }

    public final long zzl() {
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

    public final long zzm() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        int i2 = i + 3;
        byte b4 = bArr[i + 2];
        this.zzb = i + 4;
        return ((b3 & 255) << 16) | ((b2 & 255) << 24) | ((b4 & 255) << 8) | (bArr[i2] & 255);
    }

    public final long zzn() {
        long zzl = zzl();
        if (zzl >= 0) {
            return zzl;
        }
        throw new IllegalStateException("Top bit not zero: " + zzl);
    }

    public final String zzo(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.zzb;
        int i3 = i2 + i;
        int i4 = i3 - 1;
        if (i4 < this.zzc && this.zza[i4] == 0) {
            i--;
        }
        String str = new String(this.zza, i2, i);
        this.zzb = i3;
        return str;
    }

    public final short zzp() {
        byte[] bArr = this.zza;
        int i = this.zzb;
        byte b2 = bArr[i];
        this.zzb = i + 2;
        return (short) ((bArr[i + 1] & 255) | ((b2 & 255) << 8));
    }

    public final void zzq(byte[] bArr, int i, int i2) {
        System.arraycopy(this.zza, this.zzb, bArr, i, i2);
        this.zzb += i2;
    }

    public final void zzr() {
        this.zzb = 0;
        this.zzc = 0;
    }

    public final void zzs(int i) {
        zzt(zzb() < i ? new byte[i] : this.zza, i);
    }

    public final void zzt(byte[] bArr, int i) {
        this.zza = bArr;
        this.zzc = i;
        this.zzb = 0;
    }

    public final void zzu(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.zza.length) {
            z = true;
        }
        zzbaj.zzc(z);
        this.zzc = i;
    }

    public final void zzv(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.zzc) {
            z = true;
        }
        zzbaj.zzc(z);
        this.zzb = i;
    }

    public final void zzw(int i) {
        zzv(this.zzb + i);
    }

    public zzbar(byte[] bArr) {
        this.zza = bArr;
        this.zzc = bArr.length;
    }
}
