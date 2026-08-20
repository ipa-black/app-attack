package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhdh extends zzgyd implements zzgzo {
    private static final zzhdh zzb;
    private int zzd;
    private long zzf;
    private boolean zzg;
    private int zzh;
    private String zze = "";
    private String zzi = "";
    private String zzj = "";

    static {
        zzhdh zzhdhVar = new zzhdh();
        zzb = zzhdhVar;
        zzgyd.zzaS(zzhdh.class, zzhdhVar);
    }

    private zzhdh() {
    }

    public static zzhdg zza() {
        return (zzhdg) zzb.zzaz();
    }

    public static /* synthetic */ void zzd(zzhdh zzhdhVar, String str) {
        zzhdhVar.zzd |= 1;
        zzhdhVar.zze = str;
    }

    public static /* synthetic */ void zze(zzhdh zzhdhVar, long j) {
        zzhdhVar.zzd |= 2;
        zzhdhVar.zzf = j;
    }

    public static /* synthetic */ void zzf(zzhdh zzhdhVar, boolean z) {
        zzhdhVar.zzd |= 4;
        zzhdhVar.zzg = z;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဇ\u0002\u0004ဌ\u0003\u0005ဈ\u0004\u0006ဈ\u0005", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", zzhdi.zza, "zzi", "zzj"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzhdg(null);
            } else {
                return new zzhdh();
            }
        }
        return (byte) 1;
    }
}
