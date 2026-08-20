package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgrq extends zzgyd implements zzgzo {
    private static final zzgrq zzb;
    private int zzd;
    private int zze;
    private zzgwv zzf = zzgwv.zzb;

    static {
        zzgrq zzgrqVar = new zzgrq();
        zzb = zzgrqVar;
        zzgyd.zzaS(zzgrq.class, zzgrqVar);
    }

    private zzgrq() {
    }

    public static zzgrp zza() {
        return (zzgrp) zzb.zzaz();
    }

    public static zzgrq zzd() {
        return zzb;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u000b\n", new Object[]{"zzd", "zze", "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgrp(null);
            } else {
                return new zzgrq();
            }
        }
        return (byte) 1;
    }

    public final zzgwv zze() {
        return this.zzf;
    }

    public final int zzg() {
        int i = this.zzd;
        int i2 = i != 0 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? 0 : 7 : 6 : 5 : 4 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final int zzh() {
        int zzb2 = zzgru.zzb(this.zze);
        if (zzb2 == 0) {
            return 1;
        }
        return zzb2;
    }
}
