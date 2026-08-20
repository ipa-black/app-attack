package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzayu implements zzavp {
    private zzays zze;
    private zzays zzf;
    private zzatd zzg;
    private zzatd zzh;
    private long zzi;
    private zzayt zzk;
    private final zzazw zzl;
    private final zzayr zza = new zzayr();
    private final zzayq zzb = new zzayq();
    private final zzbar zzc = new zzbar(32);
    private final AtomicInteger zzd = new AtomicInteger();
    private int zzj = 65536;

    public zzayu(zzazw zzazwVar, byte[] bArr) {
        this.zzl = zzazwVar;
        zzays zzaysVar = new zzays(0L, 65536);
        this.zze = zzaysVar;
        this.zzf = zzaysVar;
    }

    private final int zzo(int i) {
        if (this.zzj == 65536) {
            this.zzj = 0;
            zzays zzaysVar = this.zzf;
            if (zzaysVar.zzc) {
                this.zzf = zzaysVar.zze;
            }
            zzays zzaysVar2 = this.zzf;
            zzazq zzb = this.zzl.zzb();
            zzays zzaysVar3 = new zzays(this.zzf.zzb, 65536);
            zzaysVar2.zzd = zzb;
            zzaysVar2.zze = zzaysVar3;
            zzaysVar2.zzc = true;
        }
        return Math.min(i, 65536 - this.zzj);
    }

    private final void zzp() {
        this.zza.zzg();
        zzays zzaysVar = this.zze;
        if (zzaysVar.zzc) {
            zzays zzaysVar2 = this.zzf;
            int i = (zzaysVar2.zzc ? 1 : 0) + (((int) (zzaysVar2.zza - zzaysVar.zza)) / 65536);
            zzazq[] zzazqVarArr = new zzazq[i];
            for (int i2 = 0; i2 < i; i2++) {
                zzazqVarArr[i2] = zzaysVar.zzd;
                zzaysVar.zzd = null;
                zzaysVar = zzaysVar.zze;
            }
            this.zzl.zzd(zzazqVarArr);
        }
        zzays zzaysVar3 = new zzays(0L, 65536);
        this.zze = zzaysVar3;
        this.zzf = zzaysVar3;
        this.zzi = 0L;
        this.zzj = 65536;
        this.zzl.zzg();
    }

    private final void zzq(long j) {
        while (true) {
            zzays zzaysVar = this.zze;
            if (j < zzaysVar.zzb) {
                return;
            }
            this.zzl.zzc(zzaysVar.zzd);
            zzays zzaysVar2 = this.zze;
            zzaysVar2.zzd = null;
            this.zze = zzaysVar2.zze;
        }
    }

    private final void zzr() {
        if (this.zzd.compareAndSet(1, 0)) {
            return;
        }
        zzp();
    }

    private final void zzs(long j, byte[] bArr, int i) {
        zzq(j);
        int i2 = 0;
        while (i2 < i) {
            int i3 = (int) (j - this.zze.zza);
            int min = Math.min(i - i2, 65536 - i3);
            zzazq zzazqVar = this.zze.zzd;
            System.arraycopy(zzazqVar.zza, i3, bArr, i2, min);
            j += min;
            i2 += min;
            if (j == this.zze.zzb) {
                this.zzl.zzc(zzazqVar);
                zzays zzaysVar = this.zze;
                zzaysVar.zzd = null;
                this.zze = zzaysVar.zze;
            }
        }
    }

    private final boolean zzt() {
        return this.zzd.compareAndSet(0, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final void zza(zzatd zzatdVar) {
        zzatd zzatdVar2 = zzatdVar == null ? null : zzatdVar;
        boolean zzk = this.zza.zzk(zzatdVar2);
        this.zzh = zzatdVar;
        zzayt zzaytVar = this.zzk;
        if (zzaytVar == null || !zzk) {
            return;
        }
        zzaytVar.zzv(zzatdVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final void zzb(zzbar zzbarVar, int i) {
        if (zzt()) {
            while (i > 0) {
                int zzo = zzo(i);
                zzbarVar.zzq(this.zzf.zzd.zza, this.zzj, zzo);
                this.zzj += zzo;
                this.zzi += zzo;
                i -= zzo;
            }
            zzr();
            return;
        }
        zzbarVar.zzw(i);
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final void zzc(long j, int i, int i2, int i3, zzavo zzavoVar) {
        if (zzt()) {
            try {
                this.zza.zzh(j, i, this.zzi - i2, i2, zzavoVar);
                return;
            } finally {
                zzr();
            }
        }
        this.zza.zzi(j);
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final int zzd(zzavf zzavfVar, int i, boolean z) throws IOException, InterruptedException {
        if (!zzt()) {
            int zzb = zzavfVar.zzb(i);
            if (zzb != -1) {
                return zzb;
            }
            throw new EOFException();
        }
        try {
            int zza = zzavfVar.zza(this.zzf.zzd.zza, this.zzj, zzo(i));
            if (zza != -1) {
                this.zzj += zza;
                this.zzi += zza;
                return zza;
            }
            throw new EOFException();
        } finally {
            zzr();
        }
    }

    public final int zze() {
        return this.zza.zza();
    }

    public final int zzf(zzate zzateVar, zzauy zzauyVar, boolean z, boolean z2, long j) {
        int zzb = this.zza.zzb(zzateVar, zzauyVar, z, z2, this.zzg, this.zzb);
        if (zzb == -5) {
            this.zzg = zzateVar.zza;
            return -5;
        } else if (zzb != -4) {
            return -3;
        } else {
            if (!zzauyVar.zzf()) {
                if (zzauyVar.zzc < j) {
                    zzauyVar.zza(Integer.MIN_VALUE);
                }
                if (zzauyVar.zzi()) {
                    zzayq zzayqVar = this.zzb;
                    long j2 = zzayqVar.zzb;
                    int i = 1;
                    this.zzc.zzs(1);
                    zzs(j2, this.zzc.zza, 1);
                    long j3 = j2 + 1;
                    byte b2 = this.zzc.zza[0];
                    boolean z3 = (b2 & 128) != 0;
                    int i2 = b2 & Byte.MAX_VALUE;
                    zzauw zzauwVar = zzauyVar.zza;
                    if (zzauwVar.zza == null) {
                        zzauwVar.zza = new byte[16];
                    }
                    zzs(j3, zzauwVar.zza, i2);
                    long j4 = j3 + i2;
                    if (z3) {
                        this.zzc.zzs(2);
                        zzs(j4, this.zzc.zza, 2);
                        j4 += 2;
                        i = this.zzc.zzj();
                    }
                    int i3 = i;
                    zzauw zzauwVar2 = zzauyVar.zza;
                    int[] iArr = zzauwVar2.zzd;
                    if (iArr == null || iArr.length < i3) {
                        iArr = new int[i3];
                    }
                    int[] iArr2 = iArr;
                    int[] iArr3 = zzauwVar2.zze;
                    if (iArr3 == null || iArr3.length < i3) {
                        iArr3 = new int[i3];
                    }
                    int[] iArr4 = iArr3;
                    if (z3) {
                        int i4 = i3 * 6;
                        this.zzc.zzs(i4);
                        zzs(j4, this.zzc.zza, i4);
                        j4 += i4;
                        this.zzc.zzv(0);
                        for (int i5 = 0; i5 < i3; i5++) {
                            iArr2[i5] = this.zzc.zzj();
                            iArr4[i5] = this.zzc.zzi();
                        }
                    } else {
                        iArr2[0] = 0;
                        iArr4[0] = zzayqVar.zza - ((int) (j4 - zzayqVar.zzb));
                    }
                    zzavo zzavoVar = zzayqVar.zzd;
                    zzauw zzauwVar3 = zzauyVar.zza;
                    byte[] bArr = zzavoVar.zzb;
                    byte[] bArr2 = zzauwVar3.zza;
                    int i6 = zzavoVar.zza;
                    zzauwVar3.zzb(i3, iArr2, iArr4, bArr, bArr2, 1);
                    long j5 = zzayqVar.zzb;
                    int i7 = (int) (j4 - j5);
                    zzayqVar.zzb = j5 + i7;
                    zzayqVar.zza -= i7;
                }
                zzauyVar.zzh(this.zzb.zza);
                zzayq zzayqVar2 = this.zzb;
                long j6 = zzayqVar2.zzb;
                ByteBuffer byteBuffer = zzauyVar.zzb;
                int i8 = zzayqVar2.zza;
                zzq(j6);
                while (i8 > 0) {
                    int i9 = (int) (j6 - this.zze.zza);
                    int min = Math.min(i8, 65536 - i9);
                    zzazq zzazqVar = this.zze.zzd;
                    byteBuffer.put(zzazqVar.zza, i9, min);
                    j6 += min;
                    i8 -= min;
                    if (j6 == this.zze.zzb) {
                        this.zzl.zzc(zzazqVar);
                        zzays zzaysVar = this.zze;
                        zzaysVar.zzd = null;
                        this.zze = zzaysVar.zze;
                    }
                }
                zzq(this.zzb.zzc);
            }
            return -4;
        }
    }

    public final long zzg() {
        return this.zza.zzc();
    }

    public final zzatd zzh() {
        return this.zza.zzf();
    }

    public final void zzi() {
        if (this.zzd.getAndSet(2) == 0) {
            zzp();
        }
    }

    public final void zzj(boolean z) {
        int andSet = this.zzd.getAndSet(true != z ? 2 : 0);
        zzp();
        this.zza.zzj();
        if (andSet == 2) {
            this.zzg = null;
        }
    }

    public final void zzk(zzayt zzaytVar) {
        this.zzk = zzaytVar;
    }

    public final void zzl() {
        long zzd = this.zza.zzd();
        if (zzd != -1) {
            zzq(zzd);
        }
    }

    public final boolean zzm() {
        return this.zza.zzl();
    }

    public final boolean zzn(long j, boolean z) {
        long zze = this.zza.zze(j, z);
        if (zze == -1) {
            return false;
        }
        zzq(zze);
        return true;
    }
}
