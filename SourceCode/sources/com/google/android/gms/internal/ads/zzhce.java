package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhce extends zzgyd implements zzgzo {
    private static final zzhce zzb;
    private int zzd;
    private String zze = "";

    static {
        zzhce zzhceVar = new zzhce();
        zzb = zzhceVar;
        zzgyd.zzaS(zzhce.class, zzhceVar);
    }

    private zzhce() {
    }

    public static zzhcd zza() {
        return (zzhcd) zzb.zzaz();
    }

    public static /* synthetic */ void zzd(zzhce zzhceVar, String str) {
        zzhceVar.zzd |= 1;
        zzhceVar.zze = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzhcd(null);
            } else {
                return new zzhce();
            }
        }
        return (byte) 1;
    }
}
