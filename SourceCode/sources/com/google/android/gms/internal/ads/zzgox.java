package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgox extends zzgyd implements zzgzo {
    private static final zzgox zzb;
    private int zzd;
    private zzgpa zze;

    static {
        zzgox zzgoxVar = new zzgox();
        zzb = zzgoxVar;
        zzgyd.zzaS(zzgox.class, zzgoxVar);
    }

    private zzgox() {
    }

    public static zzgow zzc() {
        return (zzgow) zzb.zzaz();
    }

    public static zzgox zze(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgox) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    public static /* synthetic */ void zzh(zzgox zzgoxVar, zzgpa zzgpaVar) {
        zzgpaVar.getClass();
        zzgoxVar.zze = zzgpaVar;
    }

    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzd", "zze"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgow(null);
            } else {
                return new zzgox();
            }
        }
        return (byte) 1;
    }

    public final zzgpa zzf() {
        zzgpa zzgpaVar = this.zze;
        return zzgpaVar == null ? zzgpa.zze() : zzgpaVar;
    }
}
