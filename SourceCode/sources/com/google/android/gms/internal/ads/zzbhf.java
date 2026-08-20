package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbhf extends zzgyd implements zzgzo {
    private static final zzgyj zzb = new zzbhd();
    private static final zzbhf zzd;
    private int zze;
    private long zzf;
    private int zzg;
    private long zzh;
    private long zzi;
    private zzgyi zzj = zzaI();
    private zzbha zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private long zzr;

    static {
        zzbhf zzbhfVar = new zzbhf();
        zzd = zzbhfVar;
        zzgyd.zzaS(zzbhf.class, zzbhfVar);
    }

    private zzbhf() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzA(zzbhf zzbhfVar, int i) {
        zzbhfVar.zzm = i - 1;
        zzbhfVar.zze |= 64;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzB(zzbhf zzbhfVar, int i) {
        zzbhfVar.zzn = i - 1;
        zzbhfVar.zze |= 128;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzC(zzbhf zzbhfVar, int i) {
        zzbhfVar.zzp = i - 1;
        zzbhfVar.zze |= 512;
    }

    public static zzbhe zzg() {
        return (zzbhe) zzd.zzaz();
    }

    public static zzbhf zzi(byte[] bArr) throws zzgyp {
        return (zzbhf) zzgyd.zzaE(zzd, bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzl(zzbhf zzbhfVar, long j) {
        zzbhfVar.zze |= 1;
        zzbhfVar.zzf = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzm(zzbhf zzbhfVar, long j) {
        zzbhfVar.zze |= 4;
        zzbhfVar.zzh = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzn(zzbhf zzbhfVar, long j) {
        zzbhfVar.zze |= 8;
        zzbhfVar.zzi = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzo(zzbhf zzbhfVar, Iterable iterable) {
        zzgyi zzgyiVar = zzbhfVar.zzj;
        if (!zzgyiVar.zzc()) {
            zzbhfVar.zzj = zzgyd.zzaJ(zzgyiVar);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            zzbhfVar.zzj.zzh(((zzbfu) it.next()).zza());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzp(zzbhf zzbhfVar, zzbha zzbhaVar) {
        zzbhaVar.getClass();
        zzbhfVar.zzk = zzbhaVar;
        zzbhfVar.zze |= 16;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzq(zzbhf zzbhfVar, int i) {
        zzbhfVar.zze |= 256;
        zzbhfVar.zzo = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzr(zzbhf zzbhfVar, zzbhj zzbhjVar) {
        zzbhfVar.zzq = zzbhjVar.zza();
        zzbhfVar.zze |= 1024;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzs(zzbhf zzbhfVar, long j) {
        zzbhfVar.zze |= 2048;
        zzbhfVar.zzr = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzy(zzbhf zzbhfVar, int i) {
        zzbhfVar.zzg = i - 1;
        zzbhfVar.zze |= 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzz(zzbhf zzbhfVar, int i) {
        zzbhfVar.zzl = i - 1;
        zzbhfVar.zze |= 32;
    }

    public final int zza() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                zzgyh zzgyhVar = zzbgj.zza;
                zzgyh zzc = zzbfu.zzc();
                zzgyh zzgyhVar2 = zzbgj.zza;
                return zzaP(zzd, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဂ\u0000\u0002ဌ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005\u001e\u0006ဉ\u0004\u0007ဌ\u0005\bဌ\u0006\tဌ\u0007\nင\b\u000bဌ\t\fဌ\n\rဂ\u000b", new Object[]{"zze", "zzf", "zzg", zzgyhVar, "zzh", "zzi", "zzj", zzc, "zzk", "zzl", zzgyhVar2, "zzm", zzgyhVar2, "zzn", zzgyhVar2, "zzo", "zzp", zzgyhVar2, "zzq", zzbhj.zzc(), "zzr"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzd;
                }
                return new zzbhe(null);
            } else {
                return new zzbhf();
            }
        }
        return (byte) 1;
    }

    public final long zzc() {
        return this.zzi;
    }

    public final long zzd() {
        return this.zzh;
    }

    public final long zze() {
        return this.zzf;
    }

    public final zzbha zzf() {
        zzbha zzbhaVar = this.zzk;
        return zzbhaVar == null ? zzbha.zzd() : zzbhaVar;
    }

    public final zzbhj zzj() {
        zzbhj zzb2 = zzbhj.zzb(this.zzq);
        return zzb2 == null ? zzbhj.UNSPECIFIED : zzb2;
    }

    public final List zzk() {
        return new zzgyk(this.zzj, zzb);
    }

    public final int zzt() {
        int zza = zzbgk.zza(this.zzm);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    public final int zzu() {
        int zza = zzbgk.zza(this.zzn);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    public final int zzv() {
        int zza = zzbgk.zza(this.zzp);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    public final int zzw() {
        int zza = zzbgk.zza(this.zzg);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    public final int zzx() {
        int zza = zzbgk.zza(this.zzl);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }
}
