package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbfq extends zzgyd implements zzgzo {
    private static final zzbfq zzb;
    private int zzd;
    private boolean zze;
    private boolean zzf;
    private int zzg;

    static {
        zzbfq zzbfqVar = new zzbfq();
        zzb = zzbfqVar;
        zzgyd.zzaS(zzbfq.class, zzbfqVar);
    }

    private zzbfq() {
    }

    public static zzbfp zza() {
        return (zzbfp) zzb.zzaz();
    }

    public static /* synthetic */ void zzd(zzbfq zzbfqVar, boolean z) {
        zzbfqVar.zzd |= 1;
        zzbfqVar.zze = z;
    }

    public static /* synthetic */ void zze(zzbfq zzbfqVar, boolean z) {
        zzbfqVar.zzd |= 2;
        zzbfqVar.zzf = z;
    }

    public static /* synthetic */ void zzf(zzbfq zzbfqVar, int i) {
        zzbfqVar.zzd |= 4;
        zzbfqVar.zzg = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဋ\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbfp(null);
            } else {
                return new zzbfq();
            }
        }
        return (byte) 1;
    }
}
