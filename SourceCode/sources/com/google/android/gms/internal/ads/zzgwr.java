package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzgwr extends zzgwq {
    protected final byte[] zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgwr(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzgwv) && zzd() == ((zzgwv) obj).zzd()) {
            if (zzd() == 0) {
                return true;
            }
            if (obj instanceof zzgwr) {
                zzgwr zzgwrVar = (zzgwr) obj;
                int zzr = zzr();
                int zzr2 = zzgwrVar.zzr();
                if (zzr == 0 || zzr2 == 0 || zzr == zzr2) {
                    return zzg(zzgwrVar, 0, zzd());
                }
                return false;
            }
            return obj.equals(this);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    public byte zza(int i) {
        return this.zza[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgwv
    public byte zzb(int i) {
        return this.zza[i];
    }

    protected int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    public int zzd() {
        return this.zza.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgwv
    public void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzgwq
    final boolean zzg(zzgwv zzgwvVar, int i, int i2) {
        if (i2 > zzgwvVar.zzd()) {
            int zzd = zzd();
            throw new IllegalArgumentException("Length too large: " + i2 + zzd);
        }
        int i3 = i + i2;
        if (i3 > zzgwvVar.zzd()) {
            int zzd2 = zzgwvVar.zzd();
            throw new IllegalArgumentException("Ran off end of other: " + i + ", " + i2 + ", " + zzd2);
        } else if (zzgwvVar instanceof zzgwr) {
            zzgwr zzgwrVar = (zzgwr) zzgwvVar;
            byte[] bArr = this.zza;
            byte[] bArr2 = zzgwrVar.zza;
            int zzc = zzc() + i2;
            int zzc2 = zzc();
            int zzc3 = zzgwrVar.zzc() + i;
            while (zzc2 < zzc) {
                if (bArr[zzc2] != bArr2[zzc3]) {
                    return false;
                }
                zzc2++;
                zzc3++;
            }
            return true;
        } else {
            return zzgwvVar.zzk(i, i3).equals(zzk(0, i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgwv
    public final int zzi(int i, int i2, int i3) {
        return zzgyn.zzd(i, this.zza, zzc() + i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgwv
    public final int zzj(int i, int i2, int i3) {
        int zzc = zzc() + i2;
        return zzhbm.zzf(i, this.zza, zzc, i3 + zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    public final zzgwv zzk(int i, int i2) {
        int zzq = zzq(i, i2, zzd());
        return zzq == 0 ? zzgwv.zzb : new zzgwo(this.zza, zzc() + i, zzq);
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    public final zzgxd zzl() {
        return zzgxd.zzI(this.zza, zzc(), zzd(), true);
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    protected final String zzm(Charset charset) {
        return new String(this.zza, zzc(), zzd(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    public final ByteBuffer zzn() {
        return ByteBuffer.wrap(this.zza, zzc(), zzd()).asReadOnlyBuffer();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgwv
    public final void zzo(zzgwk zzgwkVar) throws IOException {
        zzgwkVar.zza(this.zza, zzc(), zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    public final boolean zzp() {
        int zzc = zzc();
        return zzhbm.zzj(this.zza, zzc, zzd() + zzc);
    }
}
