package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzana extends zzgyd implements zzgzo {
    private static final zzana zzb;
    private int zzd;
    private long zze = -1;
    private int zzf = 1000;

    static {
        zzana zzanaVar = new zzana();
        zzb = zzanaVar;
        zzgyd.zzaS(zzana.class, zzanaVar);
    }

    private zzana() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဌ\u0001", new Object[]{"zzd", "zze", "zzf", zzanl.zza});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzamz(null);
            } else {
                return new zzana();
            }
        }
        return (byte) 1;
    }
}
