package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbir extends zzgyd implements zzgzo {
    private static final zzbir zzb;
    private int zzd;
    private boolean zze;
    private int zzf;

    static {
        zzbir zzbirVar = new zzbir();
        zzb = zzbirVar;
        zzgyd.zzaS(zzbir.class, zzbirVar);
    }

    private zzbir() {
    }

    public static zzbiq zza() {
        return (zzbiq) zzb.zzaz();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzd(zzbir zzbirVar, boolean z) {
        zzbirVar.zzd |= 1;
        zzbirVar.zze = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zze(zzbir zzbirVar, int i) {
        zzbirVar.zzd |= 2;
        zzbirVar.zzf = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002င\u0001", new Object[]{"zzd", "zze", "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbiq(null);
            } else {
                return new zzbir();
            }
        }
        return (byte) 1;
    }

    public final boolean zzf() {
        return this.zze;
    }
}
