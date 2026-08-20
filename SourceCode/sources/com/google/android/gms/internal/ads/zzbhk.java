package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbhk extends zzgyd implements zzgzo {
    private static final zzbhk zzb;
    private int zzd;
    private int zzf;
    private int zzg;
    private long zzh;
    private long zzk;
    private int zzl;
    private zzgym zze = zzaL();
    private String zzi = "";
    private String zzj = "";

    static {
        zzbhk zzbhkVar = new zzbhk();
        zzb = zzbhkVar;
        zzgyd.zzaS(zzbhk.class, zzbhkVar);
    }

    private zzbhk() {
    }

    public static zzbhg zza() {
        return (zzbhg) zzb.zzaz();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzd(zzbhk zzbhkVar, Iterable iterable) {
        zzgym zzgymVar = zzbhkVar.zze;
        if (!zzgymVar.zzc()) {
            zzbhkVar.zze = zzgyd.zzaM(zzgymVar);
        }
        zzgwe.zzau(iterable, zzbhkVar.zze);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zze(zzbhk zzbhkVar, int i) {
        zzbhkVar.zzd |= 1;
        zzbhkVar.zzf = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzf(zzbhk zzbhkVar, int i) {
        zzbhkVar.zzd |= 2;
        zzbhkVar.zzg = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzg(zzbhk zzbhkVar, long j) {
        zzbhkVar.zzd |= 4;
        zzbhkVar.zzh = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzh(zzbhk zzbhkVar, String str) {
        str.getClass();
        zzbhkVar.zzd |= 8;
        zzbhkVar.zzi = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzi(zzbhk zzbhkVar, String str) {
        str.getClass();
        zzbhkVar.zzd |= 16;
        zzbhkVar.zzj = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzj(zzbhk zzbhkVar, long j) {
        zzbhkVar.zzd |= 32;
        zzbhkVar.zzk = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzk(zzbhk zzbhkVar, int i) {
        zzbhkVar.zzd |= 64;
        zzbhkVar.zzl = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001\u001b\u0002င\u0000\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005\bင\u0006", new Object[]{"zzd", "zze", zzbhf.class, "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbhg(null);
            } else {
                return new zzbhk();
            }
        }
        return (byte) 1;
    }
}
