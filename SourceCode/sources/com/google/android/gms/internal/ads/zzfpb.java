package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfpb extends zzgyd implements zzgzo {
    private static final zzfpb zzb;
    private int zzd;
    private boolean zze;
    private long zzf;
    private int zzg;
    private int zzk;
    private int zzl;
    private int zzm;
    private long zzn;
    private int zzo;
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";
    private String zzp = "";
    private String zzq = "";
    private String zzr = "";
    private String zzs = "";
    private String zzt = "";
    private String zzu = "";
    private String zzv = "";
    private String zzw = "";

    static {
        zzfpb zzfpbVar = new zzfpb();
        zzb = zzfpbVar;
        zzgyd.zzaS(zzfpb.class, zzfpbVar);
    }

    private zzfpb() {
    }

    public static zzfpa zza() {
        return (zzfpa) zzb.zzaz();
    }

    public static /* synthetic */ void zzd(zzfpb zzfpbVar, String str) {
        str.getClass();
        zzfpbVar.zzh = str;
    }

    public static /* synthetic */ void zze(zzfpb zzfpbVar, String str) {
        str.getClass();
        zzfpbVar.zzi = str;
    }

    public static /* synthetic */ void zzf(zzfpb zzfpbVar, String str) {
        str.getClass();
        zzfpbVar.zzj = str;
    }

    public static /* synthetic */ void zzj(zzfpb zzfpbVar, String str) {
        str.getClass();
        zzfpbVar.zzp = str;
    }

    public static /* synthetic */ void zzk(zzfpb zzfpbVar, String str) {
        str.getClass();
        zzfpbVar.zzq = str;
    }

    public static /* synthetic */ void zzl(zzfpb zzfpbVar, String str) {
        str.getClass();
        zzfpbVar.zzr = str;
    }

    public static /* synthetic */ void zzo(zzfpb zzfpbVar, String str) {
        str.getClass();
        zzfpbVar.zzt = str;
    }

    public static /* synthetic */ void zzp(zzfpb zzfpbVar, String str) {
        str.getClass();
        zzfpbVar.zzu = str;
    }

    public static /* synthetic */ void zzq(zzfpb zzfpbVar, String str) {
        str.getClass();
        zzfpbVar.zzv = str;
    }

    public static /* synthetic */ void zzr(zzfpb zzfpbVar, String str) {
        str.getClass();
        zzfpbVar.zzw = str;
    }

    public static /* synthetic */ void zzu(zzfpb zzfpbVar, int i) {
        if (i == 1) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        zzfpbVar.zzl = i - 2;
    }

    public static /* synthetic */ void zzv(zzfpb zzfpbVar, int i) {
        if (i == 1) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        zzfpbVar.zzo = i - 2;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0014\u0000\u0000\u0001\u0014\u0014\u0000\u0000\u0000\u0001\f\u0002\u0007\u0003\u0002\u0004\f\u0005Ȉ\u0006Ȉ\u0007Ȉ\b\u0004\t\f\n\u0004\u000b\u0002\f\f\rȈ\u000eȈ\u000fȈ\u0010Ȉ\u0011Ȉ\u0012Ȉ\u0013Ȉ\u0014Ȉ", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzfpa(null);
            } else {
                return new zzfpb();
            }
        }
        return (byte) 1;
    }
}
