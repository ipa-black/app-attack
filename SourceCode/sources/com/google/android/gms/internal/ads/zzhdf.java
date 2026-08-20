package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhdf extends zzgyd implements zzgzo {
    private static final zzhdf zzb;
    private int zzd;
    private int zze;
    private zzhcs zzg;
    private zzhcw zzh;
    private int zzi;
    private int zzl;
    private byte zzn = 2;
    private String zzf = "";
    private zzgyi zzj = zzaI();
    private String zzk = "";
    private zzgym zzm = zzgyd.zzaL();

    static {
        zzhdf zzhdfVar = new zzhdf();
        zzb = zzhdfVar;
        zzgyd.zzaS(zzhdf.class, zzhdfVar);
    }

    private zzhdf() {
    }

    public static zzhde zzc() {
        return (zzhde) zzb.zzaz();
    }

    public static /* synthetic */ void zzf(zzhdf zzhdfVar, int i) {
        zzhdfVar.zzd |= 1;
        zzhdfVar.zze = i;
    }

    public static /* synthetic */ void zzg(zzhdf zzhdfVar, String str) {
        str.getClass();
        zzhdfVar.zzd |= 2;
        zzhdfVar.zzf = str;
    }

    public static /* synthetic */ void zzh(zzhdf zzhdfVar, zzhcs zzhcsVar) {
        zzhcsVar.getClass();
        zzhdfVar.zzg = zzhcsVar;
        zzhdfVar.zzd |= 4;
    }

    public static /* synthetic */ void zzi(zzhdf zzhdfVar, String str) {
        str.getClass();
        zzgym zzgymVar = zzhdfVar.zzm;
        if (!zzgymVar.zzc()) {
            zzhdfVar.zzm = zzgyd.zzaM(zzgymVar);
        }
        zzhdfVar.zzm.add(str);
    }

    public static /* synthetic */ void zzj(zzhdf zzhdfVar, int i) {
        zzhdfVar.zzl = i - 1;
        zzhdfVar.zzd |= 64;
    }

    public final int zza() {
        return this.zzm.size();
    }

    public final String zze() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001ᔄ\u0000\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\bဌ\u0006\t\u001a", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", zzhdc.zza, "zzm"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 == 5) {
                        return zzb;
                    }
                    this.zzn = obj == null ? (byte) 0 : (byte) 1;
                    return null;
                }
                return new zzhde(null);
            } else {
                return new zzhdf();
            }
        }
        return Byte.valueOf(this.zzn);
    }
}
