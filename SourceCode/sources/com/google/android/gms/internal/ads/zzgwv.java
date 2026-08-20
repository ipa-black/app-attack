package com.google.android.gms.internal.ads;

import com.amazon.aps.shared.util.APSSharedUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import org.slf4j.Marker;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgwv implements Iterable, Serializable {
    private static final Comparator zza;
    public static final zzgwv zzb = new zzgwr(zzgyn.zzd);
    private static final zzgwu zzd;
    private int zzc = 0;

    static {
        int i = zzgwg.zza;
        zzd = new zzgwu(null);
        zza = new zzgwm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzB(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i + ", " + i2);
        }
    }

    public static zzgws zzt() {
        return new zzgws(128);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzgwv zzu(Iterable iterable) {
        int size;
        if (!(iterable instanceof Collection)) {
            Iterator it = iterable.iterator();
            size = 0;
            while (it.hasNext()) {
                it.next();
                size++;
            }
        } else {
            size = iterable.size();
        }
        if (size == 0) {
            return zzb;
        }
        return zzc(iterable.iterator(), size);
    }

    public static zzgwv zzv(byte[] bArr) {
        return zzw(bArr, 0, bArr.length);
    }

    public static zzgwv zzw(byte[] bArr, int i, int i2) {
        zzq(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzgwr(bArr2);
    }

    public static zzgwv zzx(String str) {
        return new zzgwr(str.getBytes(zzgyn.zzb));
    }

    public static zzgwv zzy(InputStream inputStream) throws IOException {
        ArrayList arrayList = new ArrayList();
        int i = 256;
        while (true) {
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (i2 < i) {
                int read = inputStream.read(bArr, i2, i - i2);
                if (read == -1) {
                    break;
                }
                i2 += read;
            }
            zzgwv zzw = i2 == 0 ? null : zzw(bArr, 0, i2);
            if (zzw != null) {
                arrayList.add(zzw);
                i = Math.min(i + i, 8192);
            } else {
                return zzu(arrayList);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgwv zzz(byte[] bArr) {
        return new zzgwr(bArr);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzc;
        if (i == 0) {
            int zzd2 = zzd();
            i = zzi(zzd2, 0, zzd2);
            if (i == 0) {
                i = 1;
            }
            this.zzc = i;
        }
        return i;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzd()), zzd() <= 50 ? zzhav.zza(this) : zzhav.zza(zzk(0, 47)).concat(APSSharedUtil.TRUNCATE_SEPARATOR));
    }

    public final String zzA(Charset charset) {
        return zzd() == 0 ? "" : zzm(charset);
    }

    @Deprecated
    public final void zzC(byte[] bArr, int i, int i2, int i3) {
        zzq(0, i3, zzd());
        zzq(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            zze(bArr, 0, i2, i3);
        }
    }

    public final boolean zzD() {
        return zzd() == 0;
    }

    public final byte[] zzE() {
        int zzd2 = zzd();
        if (zzd2 == 0) {
            return zzgyn.zzd;
        }
        byte[] bArr = new byte[zzd2];
        zze(bArr, 0, 0, zzd2);
        return bArr;
    }

    public abstract byte zza(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte zzb(int i);

    public abstract int zzd();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void zze(byte[] bArr, int i, int i2, int i3);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int zzf();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean zzh();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int zzi(int i, int i2, int i3);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int zzj(int i, int i2, int i3);

    public abstract zzgwv zzk(int i, int i2);

    public abstract zzgxd zzl();

    protected abstract String zzm(Charset charset);

    public abstract ByteBuffer zzn();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzo(zzgwk zzgwkVar) throws IOException;

    public abstract boolean zzp();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzr() {
        return this.zzc;
    }

    @Override // java.lang.Iterable
    /* renamed from: zzs */
    public zzgwp iterator() {
        return new zzgwl(this);
    }

    private static zzgwv zzc(Iterator it, int i) {
        if (i > 0) {
            if (i == 1) {
                return (zzgwv) it.next();
            }
            int i2 = i >>> 1;
            zzgwv zzc = zzc(it, i2);
            zzgwv zzc2 = zzc(it, i - i2);
            if (Integer.MAX_VALUE - zzc.zzd() < zzc2.zzd()) {
                int zzd2 = zzc.zzd();
                int zzd3 = zzc2.zzd();
                throw new IllegalArgumentException("ByteString would be too long: " + zzd2 + Marker.ANY_NON_NULL_MARKER + zzd3);
            }
            return zzhaf.zzG(zzc, zzc2);
        }
        throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzq(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i < 0) {
                throw new IndexOutOfBoundsException("Beginning index: " + i + " < 0");
            } else if (i2 < i) {
                throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i + ", " + i2);
            } else {
                throw new IndexOutOfBoundsException("End index: " + i2 + " >= " + i3);
            }
        }
        return i4;
    }
}
