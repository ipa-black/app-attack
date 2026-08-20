package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzamb extends zzgyd implements zzgzo {
    private static final zzamb zzb;
    private int zzd;
    private long zzf;
    private long zzj;
    private long zzk;
    private long zzm;
    private int zzq;
    private String zze = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private String zzl = "";
    private String zzn = "";
    private String zzo = "";
    private zzgym zzp = zzaL();

    static {
        zzamb zzambVar = new zzamb();
        zzb = zzambVar;
        zzgyd.zzaS(zzamb.class, zzambVar);
    }

    private zzamb() {
    }

    public static zzalx zza() {
        return (zzalx) zzb.zzaz();
    }

    public static /* synthetic */ void zzd(zzamb zzambVar, long j) {
        zzambVar.zzd |= 2;
        zzambVar.zzf = j;
    }

    public static /* synthetic */ void zze(zzamb zzambVar, String str) {
        str.getClass();
        zzambVar.zzd |= 4;
        zzambVar.zzg = str;
    }

    public static /* synthetic */ void zzf(zzamb zzambVar, String str) {
        str.getClass();
        zzambVar.zzd |= 8;
        zzambVar.zzh = str;
    }

    public static /* synthetic */ void zzg(zzamb zzambVar, String str) {
        zzambVar.zzd |= 16;
        zzambVar.zzi = str;
    }

    public static /* synthetic */ void zzh(zzamb zzambVar, String str) {
        zzambVar.zzd |= 1024;
        zzambVar.zzo = str;
    }

    public static /* synthetic */ void zzi(zzamb zzambVar, String str) {
        str.getClass();
        zzambVar.zzd |= 1;
        zzambVar.zze = str;
    }

    public static /* synthetic */ void zzj(zzamb zzambVar, int i) {
        zzambVar.zzq = i - 1;
        zzambVar.zzd |= 2048;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\rဌ\u000b", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", zzalz.class, "zzq", zzama.zza});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzalx(null);
            } else {
                return new zzamb();
            }
        }
        return (byte) 1;
    }
}
