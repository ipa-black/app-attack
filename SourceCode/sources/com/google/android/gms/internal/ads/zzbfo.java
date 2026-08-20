package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbfo extends zzgyd implements zzgzo {
    private static final zzbfo zzb;
    private int zzd;
    private boolean zze;
    private int zzf;

    static {
        zzbfo zzbfoVar = new zzbfo();
        zzb = zzbfoVar;
        zzgyd.zzaS(zzbfo.class, zzbfoVar);
    }

    private zzbfo() {
    }

    public static zzbfn zza() {
        return (zzbfn) zzb.zzaz();
    }

    public static zzbfo zzd() {
        return zzb;
    }

    public static /* synthetic */ void zze(zzbfo zzbfoVar, boolean z) {
        zzbfoVar.zzd |= 1;
        zzbfoVar.zze = z;
    }

    public static /* synthetic */ void zzf(zzbfo zzbfoVar, int i) {
        zzbfoVar.zzd |= 2;
        zzbfoVar.zzf = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဋ\u0001", new Object[]{"zzd", "zze", "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbfn(null);
            } else {
                return new zzbfo();
            }
        }
        return (byte) 1;
    }
}
