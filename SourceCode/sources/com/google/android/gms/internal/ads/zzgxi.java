package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.OutputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgxi extends zzgxf {
    private final OutputStream zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgxi(OutputStream outputStream, int i) {
        super(i);
        this.zzf = outputStream;
    }

    private final void zzL() throws IOException {
        this.zzf.write(this.zza, 0, this.zzc);
        this.zzc = 0;
    }

    private final void zzM(int i) throws IOException {
        if (this.zzb - this.zzc < i) {
            zzL();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzN() throws IOException {
        if (this.zzc > 0) {
            zzL();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzO(byte b2) throws IOException {
        if (this.zzc == this.zzb) {
            zzL();
        }
        zzc(b2);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzP(int i, boolean z) throws IOException {
        zzM(11);
        zzf(i << 3);
        zzc(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzQ(int i, zzgwv zzgwvVar) throws IOException {
        zzs((i << 3) | 2);
        zzs(zzgwvVar.zzd());
        zzgwvVar.zzo(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk, com.google.android.gms.internal.ads.zzgwk
    public final void zza(byte[] bArr, int i, int i2) throws IOException {
        zzp(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzh(int i, int i2) throws IOException {
        zzM(14);
        zzf((i << 3) | 5);
        zzd(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzi(int i) throws IOException {
        zzM(4);
        zzd(i);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzj(int i, long j) throws IOException {
        zzM(18);
        zzf((i << 3) | 1);
        zze(j);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzk(long j) throws IOException {
        zzM(8);
        zze(j);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzl(int i, int i2) throws IOException {
        zzM(20);
        zzf(i << 3);
        if (i2 >= 0) {
            zzf(i2);
        } else {
            zzg(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzm(int i) throws IOException {
        if (i >= 0) {
            zzs(i);
        } else {
            zzu(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzn(int i, zzgzn zzgznVar, zzhag zzhagVar) throws IOException {
        zzs((i << 3) | 2);
        zzs(((zzgwe) zzgznVar).zzas(zzhagVar));
        zzhagVar.zzn(zzgznVar, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzo(int i, String str) throws IOException {
        zzs((i << 3) | 2);
        zzv(str);
    }

    public final void zzp(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.zzb;
        int i4 = this.zzc;
        int i5 = i3 - i4;
        if (i5 >= i2) {
            System.arraycopy(bArr, i, this.zza, i4, i2);
            this.zzc += i2;
            this.zzd += i2;
            return;
        }
        System.arraycopy(bArr, i, this.zza, i4, i5);
        int i6 = i + i5;
        int i7 = i2 - i5;
        this.zzc = this.zzb;
        this.zzd += i5;
        zzL();
        if (i7 <= this.zzb) {
            System.arraycopy(bArr, i6, this.zza, 0, i7);
            this.zzc = i7;
        } else {
            this.zzf.write(bArr, i6, i7);
        }
        this.zzd += i7;
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzq(int i, int i2) throws IOException {
        zzs((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzr(int i, int i2) throws IOException {
        zzM(20);
        zzf(i << 3);
        zzf(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzs(int i) throws IOException {
        zzM(5);
        zzf(i);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzt(int i, long j) throws IOException {
        zzM(20);
        zzf(i << 3);
        zzg(j);
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final void zzu(long j) throws IOException {
        zzM(10);
        zzg(j);
    }

    public final void zzv(String str) throws IOException {
        int zze;
        try {
            int length = str.length() * 3;
            int zzE = zzE(length);
            int i = zzE + length;
            int i2 = this.zzb;
            if (i <= i2) {
                if (i > i2 - this.zzc) {
                    zzL();
                }
                int zzE2 = zzE(str.length());
                int i3 = this.zzc;
                try {
                    if (zzE2 == zzE) {
                        int i4 = i3 + zzE2;
                        this.zzc = i4;
                        int zzd = zzhbm.zzd(str, this.zza, i4, this.zzb - i4);
                        this.zzc = i3;
                        zze = (zzd - i3) - zzE2;
                        zzf(zze);
                        this.zzc = zzd;
                    } else {
                        zze = zzhbm.zze(str);
                        zzf(zze);
                        this.zzc = zzhbm.zzd(str, this.zza, this.zzc, zze);
                    }
                    this.zzd += zze;
                    return;
                } catch (zzhbl e2) {
                    this.zzd -= this.zzc - i3;
                    this.zzc = i3;
                    throw e2;
                } catch (ArrayIndexOutOfBoundsException e3) {
                    throw new zzgxh(e3);
                }
            }
            byte[] bArr = new byte[length];
            int zzd2 = zzhbm.zzd(str, bArr, 0, length);
            zzs(zzd2);
            zzp(bArr, 0, zzd2);
        } catch (zzhbl e4) {
            zzJ(str, e4);
        }
    }
}
