package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgxk extends zzgwk {
    private static final Logger zza = Logger.getLogger(zzgxk.class.getName());
    private static final boolean zzb = zzhbh.zzA();
    zzgxl zze;

    private zzgxk() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgxk(zzgxj zzgxjVar) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzA(zzgzn zzgznVar, zzhag zzhagVar) {
        int zzas = ((zzgwe) zzgznVar).zzas(zzhagVar);
        return zzE(zzas) + zzas;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzB(int i) {
        if (i > 4096) {
            return 4096;
        }
        return i;
    }

    public static int zzC(String str) {
        int length;
        try {
            length = zzhbm.zze(str);
        } catch (zzhbl unused) {
            length = str.getBytes(zzgyn.zzb).length;
        }
        return zzE(length) + length;
    }

    public static int zzD(int i) {
        return zzE(i << 3);
    }

    public static int zzE(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int zzF(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            j >>>= 28;
            i = 6;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    public static zzgxk zzG(byte[] bArr) {
        return new zzgxg(bArr, 0, bArr.length);
    }

    public static zzgxk zzH(OutputStream outputStream, int i) {
        return new zzgxi(outputStream, i);
    }

    public static int zzw(zzgwv zzgwvVar) {
        int zzd = zzgwvVar.zzd();
        return zzE(zzd) + zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int zzx(int i, zzgzn zzgznVar, zzhag zzhagVar) {
        int zzE = zzE(i << 3);
        return zzE + zzE + ((zzgwe) zzgznVar).zzas(zzhagVar);
    }

    public static int zzy(int i) {
        if (i >= 0) {
            return zzE(i);
        }
        return 10;
    }

    public static int zzz(zzgyt zzgytVar) {
        int zza2 = zzgytVar.zza();
        return zzE(zza2) + zza2;
    }

    public final void zzI() {
        if (zzb() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzJ(String str, zzhbl zzhblVar) throws IOException {
        zza.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzhblVar);
        byte[] bytes = str.getBytes(zzgyn.zzb);
        try {
            int length = bytes.length;
            zzs(length);
            zza(bytes, 0, length);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgxh(e2);
        }
    }

    public abstract void zzN() throws IOException;

    public abstract void zzO(byte b2) throws IOException;

    public abstract void zzP(int i, boolean z) throws IOException;

    public abstract void zzQ(int i, zzgwv zzgwvVar) throws IOException;

    @Override // com.google.android.gms.internal.ads.zzgwk
    public abstract void zza(byte[] bArr, int i, int i2) throws IOException;

    public abstract int zzb();

    public abstract void zzh(int i, int i2) throws IOException;

    public abstract void zzi(int i) throws IOException;

    public abstract void zzj(int i, long j) throws IOException;

    public abstract void zzk(long j) throws IOException;

    public abstract void zzl(int i, int i2) throws IOException;

    public abstract void zzm(int i) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzn(int i, zzgzn zzgznVar, zzhag zzhagVar) throws IOException;

    public abstract void zzo(int i, String str) throws IOException;

    public abstract void zzq(int i, int i2) throws IOException;

    public abstract void zzr(int i, int i2) throws IOException;

    public abstract void zzs(int i) throws IOException;

    public abstract void zzt(int i, long j) throws IOException;

    public abstract void zzu(long j) throws IOException;
}
