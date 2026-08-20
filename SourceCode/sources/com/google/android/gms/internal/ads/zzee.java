package com.google.android.gms.internal.ads;

import androidx.core.view.MotionEventCompat;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzee {
    public byte[] zza;
    private int zzb;
    private int zzc;
    private int zzd;

    public zzee() {
        this.zza = zzen.zzf;
    }

    public zzee(byte[] bArr, int i) {
        this.zza = bArr;
        this.zzd = i;
    }

    private final void zzm() {
        int i;
        int i2 = this.zzb;
        boolean z = false;
        if (i2 >= 0 && (i2 < (i = this.zzd) || (i2 == i && this.zzc == 0))) {
            z = true;
        }
        zzdd.zzf(z);
    }

    public final int zza() {
        return ((this.zzd - this.zzb) * 8) - this.zzc;
    }

    public final int zzb() {
        return (this.zzb * 8) + this.zzc;
    }

    public final int zzc(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
        this.zzc += i;
        int i3 = 0;
        while (true) {
            i2 = this.zzc;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.zzc = i4;
            byte[] bArr = this.zza;
            int i5 = this.zzb;
            this.zzb = i5 + 1;
            i3 |= (bArr[i5] & 255) << i4;
        }
        byte[] bArr2 = this.zza;
        int i6 = this.zzb;
        int i7 = ((-1) >>> (32 - i)) & (i3 | ((bArr2[i6] & 255) >> (8 - i2)));
        if (i2 == 8) {
            this.zzc = 0;
            this.zzb = i6 + 1;
        }
        zzm();
        return i7;
    }

    public final void zzd() {
        if (this.zzc == 0) {
            return;
        }
        this.zzc = 0;
        this.zzb++;
        zzm();
    }

    public final void zze(int i, int i2) {
        int i3;
        int i4 = i & 16383;
        int min = Math.min(8 - this.zzc, 14);
        int i5 = this.zzc;
        int i6 = (8 - i5) - min;
        byte[] bArr = this.zza;
        int i7 = this.zzb;
        byte b2 = (byte) (((MotionEventCompat.ACTION_POINTER_INDEX_MASK >> i5) | ((1 << i6) - 1)) & bArr[i7]);
        bArr[i7] = b2;
        int i8 = 14 - min;
        bArr[i7] = (byte) (b2 | ((i4 >>> i8) << i6));
        int i9 = i7 + 1;
        while (i8 > 8) {
            i8 -= 8;
            this.zza[i9] = (byte) (i4 >>> i8);
            i9++;
        }
        byte[] bArr2 = this.zza;
        byte b3 = (byte) (bArr2[i9] & ((1 << i3) - 1));
        bArr2[i9] = b3;
        bArr2[i9] = (byte) (((i4 & ((1 << i8) - 1)) << (8 - i8)) | b3);
        zzj(14);
        zzm();
    }

    public final void zzf(byte[] bArr, int i, int i2) {
        int i3 = i2 >> 3;
        for (int i4 = 0; i4 < i3; i4++) {
            byte[] bArr2 = this.zza;
            int i5 = this.zzb;
            int i6 = i5 + 1;
            this.zzb = i6;
            byte b2 = bArr2[i5];
            int i7 = this.zzc;
            byte b3 = (byte) (b2 << i7);
            bArr[i4] = b3;
            bArr[i4] = (byte) (((255 & bArr2[i6]) >> (8 - i7)) | b3);
        }
        int i8 = i2 & 7;
        if (i8 == 0) {
            return;
        }
        byte b4 = (byte) (bArr[i3] & (255 >> i8));
        bArr[i3] = b4;
        int i9 = this.zzc;
        if (i9 + i8 > 8) {
            byte[] bArr3 = this.zza;
            int i10 = this.zzb;
            this.zzb = i10 + 1;
            b4 = (byte) (b4 | ((bArr3[i10] & 255) << i9));
            bArr[i3] = b4;
            i9 -= 8;
        }
        int i11 = i9 + i8;
        this.zzc = i11;
        byte[] bArr4 = this.zza;
        int i12 = this.zzb;
        bArr[i3] = (byte) (((byte) (((255 & bArr4[i12]) >> (8 - i11)) << (8 - i8))) | b4);
        if (i11 == 8) {
            this.zzc = 0;
            this.zzb = i12 + 1;
        }
        zzm();
    }

    public final void zzg(byte[] bArr, int i) {
        this.zza = bArr;
        this.zzb = 0;
        this.zzc = 0;
        this.zzd = i;
    }

    public final void zzh(int i) {
        int i2 = i / 8;
        this.zzb = i2;
        this.zzc = i - (i2 * 8);
        zzm();
    }

    public final void zzi() {
        int i = this.zzc + 1;
        this.zzc = i;
        if (i == 8) {
            this.zzc = 0;
            this.zzb++;
        }
        zzm();
    }

    public final void zzj(int i) {
        int i2 = i / 8;
        int i3 = this.zzb + i2;
        this.zzb = i3;
        int i4 = this.zzc + (i - (i2 * 8));
        this.zzc = i4;
        if (i4 > 7) {
            this.zzb = i3 + 1;
            this.zzc = i4 - 8;
        }
        zzm();
    }

    public final void zzk(int i) {
        zzdd.zzf(this.zzc == 0);
        this.zzb += i;
        zzm();
    }

    public final boolean zzl() {
        boolean z = (this.zza[this.zzb] & (128 >> this.zzc)) != 0;
        zzi();
        return z;
    }
}
