package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzanc extends zzgyd implements zzgzo {
    private static final zzanc zzb;
    private int zzd;
    private long zzt;
    private long zzu;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private int zzk = 1000;
    private long zzl = -1;
    private long zzm = -1;
    private long zzn = -1;
    private int zzo = 1000;
    private long zzp = -1;
    private long zzq = -1;
    private long zzr = -1;
    private long zzs = -1;
    private long zzv = -1;
    private long zzw = -1;
    private long zzx = -1;
    private long zzy = -1;

    static {
        zzanc zzancVar = new zzanc();
        zzb = zzancVar;
        zzgyd.zzaS(zzanc.class, zzancVar);
    }

    private zzanc() {
    }

    public static zzanb zza() {
        return (zzanb) zzb.zzaz();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzd(zzanc zzancVar, long j) {
        zzancVar.zzd |= 1;
        zzancVar.zze = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zze(zzanc zzancVar, long j) {
        zzancVar.zzd |= 2;
        zzancVar.zzf = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzf(zzanc zzancVar, long j) {
        zzancVar.zzd |= 4;
        zzancVar.zzg = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzg(zzanc zzancVar, long j) {
        zzancVar.zzd |= 8;
        zzancVar.zzh = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzh(zzanc zzancVar) {
        zzancVar.zzd &= -9;
        zzancVar.zzh = -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzi(zzanc zzancVar, long j) {
        zzancVar.zzd |= 16;
        zzancVar.zzi = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzj(zzanc zzancVar, long j) {
        zzancVar.zzd |= 32;
        zzancVar.zzj = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzk(zzanc zzancVar, long j) {
        zzancVar.zzd |= 128;
        zzancVar.zzl = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzl(zzanc zzancVar, long j) {
        zzancVar.zzd |= 256;
        zzancVar.zzm = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzm(zzanc zzancVar, long j) {
        zzancVar.zzd |= 512;
        zzancVar.zzn = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzn(zzanc zzancVar, long j) {
        zzancVar.zzd |= 2048;
        zzancVar.zzp = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzo(zzanc zzancVar, long j) {
        zzancVar.zzd |= 4096;
        zzancVar.zzq = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzp(zzanc zzancVar, long j) {
        zzancVar.zzd |= 8192;
        zzancVar.zzr = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzq(zzanc zzancVar, long j) {
        zzancVar.zzd |= 16384;
        zzancVar.zzs = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzr(zzanc zzancVar, long j) {
        zzancVar.zzd |= 32768;
        zzancVar.zzt = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzs(zzanc zzancVar, long j) {
        zzancVar.zzd |= 65536;
        zzancVar.zzu = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzt(zzanc zzancVar, long j) {
        zzancVar.zzd |= 131072;
        zzancVar.zzv = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzu(zzanc zzancVar, long j) {
        zzancVar.zzd |= 262144;
        zzancVar.zzw = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzv(zzanc zzancVar, int i) {
        zzancVar.zzk = i - 1;
        zzancVar.zzd |= 64;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzw(zzanc zzancVar, int i) {
        zzancVar.zzo = i - 1;
        zzancVar.zzd |= 1024;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                zzgyh zzgyhVar = zzanl.zza;
                return zzaP(zzb, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဌ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဌ\n\fဂ\u000b\rဂ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂ\u0014", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzgyhVar, "zzl", "zzm", "zzn", "zzo", zzgyhVar, "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzanb(null);
            } else {
                return new zzanc();
            }
        }
        return (byte) 1;
    }
}
