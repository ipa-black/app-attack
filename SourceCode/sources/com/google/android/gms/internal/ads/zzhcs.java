package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhcs extends zzgyd implements zzgzo {
    private static final zzhcs zzb;
    private int zzd;
    private zzhcr zze;
    private int zzi;
    private byte zzj = 2;
    private zzgym zzf = zzaL();
    private zzgwv zzg = zzgwv.zzb;
    private zzgwv zzh = zzgwv.zzb;

    static {
        zzhcs zzhcsVar = new zzhcs();
        zzb = zzhcsVar;
        zzgyd.zzaS(zzhcs.class, zzhcsVar);
    }

    private zzhcs() {
    }

    public static zzhcp zza() {
        return (zzhcp) zzb.zzaz();
    }

    public static /* synthetic */ void zzd(zzhcs zzhcsVar, zzhco zzhcoVar) {
        zzhcoVar.getClass();
        zzgym zzgymVar = zzhcsVar.zzf;
        if (!zzgymVar.zzc()) {
            zzhcsVar.zzf = zzgyd.zzaM(zzgymVar);
        }
        zzhcsVar.zzf.add(zzhcoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzd", "zze", "zzf", zzhco.class, "zzg", "zzh", "zzi"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 == 5) {
                        return zzb;
                    }
                    this.zzj = obj == null ? (byte) 0 : (byte) 1;
                    return null;
                }
                return new zzhcp(null);
            } else {
                return new zzhcs();
            }
        }
        return Byte.valueOf(this.zzj);
    }
}
