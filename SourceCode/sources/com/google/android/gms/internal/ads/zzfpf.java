package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfpf extends zzgyd implements zzgzo {
    private static final zzfpf zzb;
    private zzfpb zzd;

    static {
        zzfpf zzfpfVar = new zzfpf();
        zzb = zzfpfVar;
        zzgyd.zzaS(zzfpf.class, zzfpfVar);
    }

    private zzfpf() {
    }

    public static zzfpe zza() {
        return (zzfpe) zzb.zzaz();
    }

    public static /* synthetic */ zzfpf zzc() {
        return zzb;
    }

    public static /* synthetic */ void zzd(zzfpf zzfpfVar, zzfpb zzfpbVar) {
        zzfpbVar.getClass();
        zzfpfVar.zzd = zzfpbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0001\u0000\u0000\u0006\u0006\u0001\u0000\u0000\u0000\u0006\t", new Object[]{"zzd"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzfpe(null);
            } else {
                return new zzfpf();
            }
        }
        return (byte) 1;
    }
}
