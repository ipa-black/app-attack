package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@Deprecated
/* loaded from: classes4.dex */
public final class zzguf extends zzgyd implements zzgzo {
    private static final zzguf zzb;
    private String zzd = "";
    private zzgym zze = zzaL();

    static {
        zzguf zzgufVar = new zzguf();
        zzb = zzgufVar;
        zzgyd.zzaS(zzguf.class, zzgufVar);
    }

    private zzguf() {
    }

    public static zzguf zzc() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzd", "zze", zzgte.class});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgue(null);
            } else {
                return new zzguf();
            }
        }
        return (byte) 1;
    }

    public final List zzd() {
        return this.zze;
    }
}
