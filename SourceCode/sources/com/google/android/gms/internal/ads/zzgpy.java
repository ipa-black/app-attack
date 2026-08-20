package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgpy extends zzgyd implements zzgzo {
    private static final zzgpy zzb;
    private int zzd;

    static {
        zzgpy zzgpyVar = new zzgpy();
        zzb = zzgpyVar;
        zzgyd.zzaS(zzgpy.class, zzgpyVar);
    }

    private zzgpy() {
    }

    public static zzgpx zzc() {
        return (zzgpx) zzb.zzaz();
    }

    public static zzgpy zze() {
        return zzb;
    }

    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzd"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgpx(null);
            } else {
                return new zzgpy();
            }
        }
        return (byte) 1;
    }
}
