package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbfr extends zzgyd implements zzgzo {
    private static final zzbfr zzb;
    private zzgym zzd = zzaL();

    static {
        zzbfr zzbfrVar = new zzbfr();
        zzb = zzbfrVar;
        zzgyd.zzaS(zzbfr.class, zzbfrVar);
    }

    private zzbfr() {
    }

    public static zzbfl zza() {
        return (zzbfl) zzb.zzaz();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzd(zzbfr zzbfrVar, zzbfk zzbfkVar) {
        zzbfkVar.getClass();
        zzgym zzgymVar = zzbfrVar.zzd;
        if (!zzgymVar.zzc()) {
            zzbfrVar.zzd = zzgyd.zzaM(zzgymVar);
        }
        zzbfrVar.zzd.add(zzbfkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", zzbfk.class});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbfl(null);
            } else {
                return new zzbfr();
            }
        }
        return (byte) 1;
    }
}
