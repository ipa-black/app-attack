package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgsw extends zzgyd implements zzgzo {
    private static final zzgsw zzb;
    private String zzd = "";
    private zzgwv zze = zzgwv.zzb;
    private int zzf;

    static {
        zzgsw zzgswVar = new zzgsw();
        zzb = zzgswVar;
        zzgyd.zzaS(zzgsw.class, zzgswVar);
    }

    private zzgsw() {
    }

    public static zzgst zza() {
        return (zzgst) zzb.zzaz();
    }

    public static zzgsw zze() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzd", "zze", "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgst(null);
            } else {
                return new zzgsw();
            }
        }
        return (byte) 1;
    }

    public final zzgsv zzc() {
        zzgsv zzb2 = zzgsv.zzb(this.zzf);
        return zzb2 == null ? zzgsv.UNRECOGNIZED : zzb2;
    }

    public final zzgwv zzf() {
        return this.zze;
    }

    public final String zzg() {
        return this.zzd;
    }
}
