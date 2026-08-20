package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbfi extends zzgyd implements zzgzo {
    private static final zzbfi zzb;
    private int zzd;
    private int zze;
    private zzbfy zzg;
    private zzbga zzh;
    private zzbgc zzj;
    private zzbhm zzk;
    private zzbhc zzl;
    private zzbgq zzm;
    private zzbgs zzn;
    private int zzf = 1000;
    private zzgym zzi = zzaL();
    private zzgym zzo = zzaL();

    static {
        zzbfi zzbfiVar = new zzbfi();
        zzb = zzbfiVar;
        zzgyd.zzaS(zzbfi.class, zzbfiVar);
    }

    private zzbfi() {
    }

    public static zzbfi zzc() {
        return zzb;
    }

    public static /* synthetic */ void zze(zzbfi zzbfiVar, zzbfg zzbfgVar) {
        zzbfiVar.zze = zzbfgVar.zza();
        zzbfiVar.zzd |= 1;
    }

    public static /* synthetic */ void zzf(zzbfi zzbfiVar, zzbga zzbgaVar) {
        zzbgaVar.getClass();
        zzbfiVar.zzh = zzbgaVar;
        zzbfiVar.zzd |= 8;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007ဌ\u0000\bဌ\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{"zzd", "zze", zzbfg.zzc(), "zzf", zzbgj.zza, "zzg", "zzh", "zzi", zzbfw.class, "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", zzbhy.class});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbfh(null);
            } else {
                return new zzbfi();
            }
        }
        return (byte) 1;
    }

    public final zzbga zzd() {
        zzbga zzbgaVar = this.zzh;
        return zzbgaVar == null ? zzbga.zzc() : zzbgaVar;
    }
}
