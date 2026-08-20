package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzamg extends zzgyd implements zzgzo {
    private static final zzamg zzb;
    private int zzd;
    private int zze = 2;

    static {
        zzamg zzamgVar = new zzamg();
        zzb = zzamgVar;
        zzgyd.zzaS(zzamg.class, zzamgVar);
    }

    private zzamg() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0001\u0000\u0001\u001b\u001b\u0001\u0000\u0000\u0000\u001bဌ\u0000", new Object[]{"zzd", "zze", zzamh.zza});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzamf(null);
            } else {
                return new zzamg();
            }
        }
        return (byte) 1;
    }
}
