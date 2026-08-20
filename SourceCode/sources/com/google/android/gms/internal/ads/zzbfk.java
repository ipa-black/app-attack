package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbfk extends zzgyd implements zzgzo {
    private static final zzbfk zzb;
    private int zzd;
    private int zze;
    private zzbfo zzf;
    private zzbfq zzg;

    static {
        zzbfk zzbfkVar = new zzbfk();
        zzb = zzbfkVar;
        zzgyd.zzaS(zzbfk.class, zzbfkVar);
    }

    private zzbfk() {
    }

    public static zzbfj zza() {
        return (zzbfj) zzb.zzaz();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzd(zzbfk zzbfkVar, zzbfo zzbfoVar) {
        zzbfoVar.getClass();
        zzbfkVar.zzf = zzbfoVar;
        zzbfkVar.zzd |= 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zze(zzbfk zzbfkVar, zzbfq zzbfqVar) {
        zzbfqVar.getClass();
        zzbfkVar.zzg = zzbfqVar;
        zzbfkVar.zzd |= 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzf(zzbfk zzbfkVar, int i) {
        zzbfkVar.zze = 1;
        zzbfkVar.zzd = 1 | zzbfkVar.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", zzbfm.zza, "zzf", "zzg"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbfj(null);
            } else {
                return new zzbfk();
            }
        }
        return (byte) 1;
    }
}
