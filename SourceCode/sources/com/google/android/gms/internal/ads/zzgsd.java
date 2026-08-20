package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgsd extends zzgyd implements zzgzo {
    private static final zzgsd zzb;
    private int zzd;
    private int zze;

    static {
        zzgsd zzgsdVar = new zzgsd();
        zzb = zzgsdVar;
        zzgyd.zzaS(zzgsd.class, zzgsdVar);
    }

    private zzgsd() {
    }

    public static zzgsc zzc() {
        return (zzgsc) zzb.zzaz();
    }

    public static zzgsd zze() {
        return zzb;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzd", "zze"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgsc(null);
            } else {
                return new zzgsd();
            }
        }
        return (byte) 1;
    }

    public final int zzg() {
        int zzb2 = zzgru.zzb(this.zzd);
        if (zzb2 == 0) {
            return 1;
        }
        return zzb2;
    }
}
