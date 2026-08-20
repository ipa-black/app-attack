package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzanq extends zzgyd implements zzgzo {
    private static final zzanq zzb;
    private int zzd;
    private String zze = "";

    static {
        zzanq zzanqVar = new zzanq();
        zzb = zzanqVar;
        zzgyd.zzaS(zzanq.class, zzanqVar);
    }

    private zzanq() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzanp(null);
            } else {
                return new zzanq();
            }
        }
        return (byte) 1;
    }
}
