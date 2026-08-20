package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbgm extends zzgyd implements zzgzo {
    private static final zzbgm zzb;
    private int zzd;
    private int zze;
    private int zzg;
    private zzbhw zzi;
    private zzbge zzk;
    private zzbgh zzl;
    private zzbha zzm;
    private zzbfi zzn;
    private zzbhk zzo;
    private zzbir zzp;
    private zzbfr zzq;
    private String zzf = "";
    private int zzh = 1000;
    private zzgyl zzj = zzaK();

    static {
        zzbgm zzbgmVar = new zzbgm();
        zzb = zzbgmVar;
        zzgyd.zzaS(zzbgm.class, zzbgmVar);
    }

    private zzbgm() {
    }

    public static zzbgl zzd() {
        return (zzbgl) zzb.zzaz();
    }

    public static /* synthetic */ void zzg(zzbgm zzbgmVar, String str) {
        str.getClass();
        zzbgmVar.zzd |= 2;
        zzbgmVar.zzf = str;
    }

    public static /* synthetic */ void zzh(zzbgm zzbgmVar, Iterable iterable) {
        zzgyl zzgylVar = zzbgmVar.zzj;
        if (!zzgylVar.zzc()) {
            int size = zzgylVar.size();
            zzbgmVar.zzj = zzgylVar.zza(size == 0 ? 10 : size + size);
        }
        zzgwe.zzau(iterable, zzbgmVar.zzj);
    }

    public static /* synthetic */ void zzj(zzbgm zzbgmVar, zzbge zzbgeVar) {
        zzbgeVar.getClass();
        zzbgmVar.zzk = zzbgeVar;
        zzbgmVar.zzd |= 32;
    }

    public static /* synthetic */ void zzk(zzbgm zzbgmVar, zzbfi zzbfiVar) {
        zzbfiVar.getClass();
        zzbgmVar.zzn = zzbfiVar;
        zzbgmVar.zzd |= 256;
    }

    public static /* synthetic */ void zzl(zzbgm zzbgmVar, zzbhk zzbhkVar) {
        zzbhkVar.getClass();
        zzbgmVar.zzo = zzbhkVar;
        zzbgmVar.zzd |= 512;
    }

    public static /* synthetic */ void zzm(zzbgm zzbgmVar, zzbir zzbirVar) {
        zzbirVar.getClass();
        zzbgmVar.zzp = zzbirVar;
        zzbgmVar.zzd |= 1024;
    }

    public static /* synthetic */ void zzn(zzbgm zzbgmVar, zzbfr zzbfrVar) {
        zzbfrVar.getClass();
        zzbgmVar.zzq = zzbfrVar;
        zzbgmVar.zzd |= 2048;
    }

    public final zzbfi zza() {
        zzbfi zzbfiVar = this.zzn;
        return zzbfiVar == null ? zzbfi.zzc() : zzbfiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\tင\u0000\nဈ\u0001\u000bဋ\u0002\fဌ\u0003\rဉ\u0004\u000e\u0015\u000fဉ\u0005\u0010ဉ\u0006\u0011ဉ\u0007\u0012ဉ\b\u0013ဉ\t\u0014ဉ\n\u0015ဉ\u000b", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", zzbgj.zza, "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbgl(null);
            } else {
                return new zzbgm();
            }
        }
        return (byte) 1;
    }

    public final zzbge zzc() {
        zzbge zzbgeVar = this.zzk;
        return zzbgeVar == null ? zzbge.zzc() : zzbgeVar;
    }

    public final String zzf() {
        return this.zzf;
    }
}
