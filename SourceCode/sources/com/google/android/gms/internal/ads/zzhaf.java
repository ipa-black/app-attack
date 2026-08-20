package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhaf extends zzgwv {
    static final int[] zza = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    private final int zzc;
    private final zzgwv zzd;
    private final zzgwv zze;
    private final int zzf;
    private final int zzg;

    private zzhaf(zzgwv zzgwvVar, zzgwv zzgwvVar2) {
        this.zzd = zzgwvVar;
        this.zze = zzgwvVar2;
        int zzd = zzgwvVar.zzd();
        this.zzf = zzd;
        this.zzc = zzd + zzgwvVar2.zzd();
        this.zzg = Math.max(zzgwvVar.zzf(), zzgwvVar2.zzf()) + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgwv zzG(zzgwv zzgwvVar, zzgwv zzgwvVar2) {
        if (zzgwvVar2.zzd() == 0) {
            return zzgwvVar;
        }
        if (zzgwvVar.zzd() == 0) {
            return zzgwvVar2;
        }
        int zzd = zzgwvVar.zzd() + zzgwvVar2.zzd();
        if (zzd < 128) {
            return zzH(zzgwvVar, zzgwvVar2);
        }
        if (zzgwvVar instanceof zzhaf) {
            zzhaf zzhafVar = (zzhaf) zzgwvVar;
            if (zzhafVar.zze.zzd() + zzgwvVar2.zzd() < 128) {
                return new zzhaf(zzhafVar.zzd, zzH(zzhafVar.zze, zzgwvVar2));
            } else if (zzhafVar.zzd.zzf() > zzhafVar.zze.zzf() && zzhafVar.zzg > zzgwvVar2.zzf()) {
                return new zzhaf(zzhafVar.zzd, new zzhaf(zzhafVar.zze, zzgwvVar2));
            }
        }
        if (zzd >= zzc(Math.max(zzgwvVar.zzf(), zzgwvVar2.zzf()) + 1)) {
            return new zzhaf(zzgwvVar, zzgwvVar2);
        }
        return zzhab.zza(new zzhab(null), zzgwvVar, zzgwvVar2);
    }

    private static zzgwv zzH(zzgwv zzgwvVar, zzgwv zzgwvVar2) {
        int zzd = zzgwvVar.zzd();
        int zzd2 = zzgwvVar2.zzd();
        byte[] bArr = new byte[zzd + zzd2];
        zzgwvVar.zzC(bArr, 0, 0, zzd);
        zzgwvVar2.zzC(bArr, 0, zzd, zzd2);
        return new zzgwr(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i) {
        int[] iArr = zza;
        int length = iArr.length;
        if (i >= 47) {
            return Integer.MAX_VALUE;
        }
        return iArr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    public final boolean equals(Object obj) {
        boolean zzg;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgwv)) {
            return false;
        }
        zzgwv zzgwvVar = (zzgwv) obj;
        if (this.zzc != zzgwvVar.zzd()) {
            return false;
        }
        if (this.zzc == 0) {
            return true;
        }
        int zzr = zzr();
        int zzr2 = zzgwvVar.zzr();
        if (zzr != 0 && zzr2 != 0 && zzr != zzr2) {
            return false;
        }
        zzhad zzhadVar = new zzhad(this, null);
        zzgwq next = zzhadVar.next();
        zzhad zzhadVar2 = new zzhad(zzgwvVar, null);
        zzgwq next2 = zzhadVar2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int zzd = next.zzd() - i;
            int zzd2 = next2.zzd() - i2;
            int min = Math.min(zzd, zzd2);
            if (i == 0) {
                zzg = next.zzg(next2, i2, min);
            } else {
                zzg = next2.zzg(next, i, min);
            }
            if (!zzg) {
                return false;
            }
            i3 += min;
            int i4 = this.zzc;
            if (i3 >= i4) {
                if (i3 == i4) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (min == zzd) {
                next = zzhadVar.next();
                i = 0;
            } else {
                i += min;
            }
            if (min == zzd2) {
                next2 = zzhadVar2.next();
                i2 = 0;
            } else {
                i2 += min;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgwv, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzgzz(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    public final byte zza(int i) {
        zzB(i, this.zzc);
        return zzb(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgwv
    public final byte zzb(int i) {
        int i2 = this.zzf;
        return i < i2 ? this.zzd.zzb(i) : this.zze.zzb(i - i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    public final int zzd() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgwv
    public final void zze(byte[] bArr, int i, int i2, int i3) {
        int i4 = this.zzf;
        if (i + i3 <= i4) {
            this.zzd.zze(bArr, i, i2, i3);
        } else if (i >= i4) {
            this.zze.zze(bArr, i - i4, i2, i3);
        } else {
            int i5 = i4 - i;
            this.zzd.zze(bArr, i, i2, i5);
            this.zze.zze(bArr, 0, i2 + i5, i3 - i5);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgwv
    public final int zzf() {
        return this.zzg;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgwv
    public final boolean zzh() {
        return this.zzc >= zzc(this.zzg);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgwv
    public final int zzi(int i, int i2, int i3) {
        int i4 = this.zzf;
        if (i2 + i3 <= i4) {
            return this.zzd.zzi(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.zze.zzi(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.zze.zzi(this.zzd.zzi(i, i2, i5), 0, i3 - i5);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgwv
    public final int zzj(int i, int i2, int i3) {
        int i4 = this.zzf;
        if (i2 + i3 <= i4) {
            return this.zzd.zzj(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.zze.zzj(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.zze.zzj(this.zzd.zzj(i, i2, i5), 0, i3 - i5);
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    public final zzgwv zzk(int i, int i2) {
        int zzq = zzq(i, i2, this.zzc);
        if (zzq == 0) {
            return zzgwv.zzb;
        }
        if (zzq == this.zzc) {
            return this;
        }
        int i3 = this.zzf;
        if (i2 <= i3) {
            return this.zzd.zzk(i, i2);
        }
        if (i >= i3) {
            return this.zze.zzk(i - i3, i2 - i3);
        }
        zzgwv zzgwvVar = this.zzd;
        return new zzhaf(zzgwvVar.zzk(i, zzgwvVar.zzd()), this.zze.zzk(0, i2 - this.zzf));
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    public final zzgxd zzl() {
        ArrayList<ByteBuffer> arrayList = new ArrayList();
        zzhad zzhadVar = new zzhad(this, null);
        while (zzhadVar.hasNext()) {
            arrayList.add(zzhadVar.next().zzn());
        }
        int i = zzgxd.zzd;
        boolean z = false;
        int i2 = 0;
        for (ByteBuffer byteBuffer : arrayList) {
            i2 += byteBuffer.remaining();
            if (byteBuffer.hasArray()) {
                z |= true;
            } else {
                z = byteBuffer.isDirect() ? z | true : z | true;
            }
        }
        if (z) {
            return new zzgwz(arrayList, i2, true, null);
        }
        return zzgxd.zzH(new zzgyq(arrayList), 4096);
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    protected final String zzm(Charset charset) {
        return new String(zzE(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    public final ByteBuffer zzn() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgwv
    public final void zzo(zzgwk zzgwkVar) throws IOException {
        this.zzd.zzo(zzgwkVar);
        this.zze.zzo(zzgwkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    public final boolean zzp() {
        int zzj = this.zzd.zzj(0, 0, this.zzf);
        zzgwv zzgwvVar = this.zze;
        return zzgwvVar.zzj(zzj, 0, zzgwvVar.zzd()) == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgwv
    public final zzgwp zzs() {
        return new zzgzz(this);
    }
}
