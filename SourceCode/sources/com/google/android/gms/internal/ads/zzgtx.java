package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgtx extends zzgyd implements zzgzo {
    private static final zzgtx zzb;
    private int zzd;
    private zzgua zze;

    static {
        zzgtx zzgtxVar = new zzgtx();
        zzb = zzgtxVar;
        zzgyd.zzaS(zzgtx.class, zzgtxVar);
    }

    private zzgtx() {
    }

    public static zzgtw zzc() {
        return (zzgtw) zzb.zzaz();
    }

    public static zzgtx zze(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgtx) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzh(zzgtx zzgtxVar, zzgua zzguaVar) {
        zzguaVar.getClass();
        zzgtxVar.zze = zzguaVar;
    }

    public final int zza() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
                return new zzgtw(null);
            } else {
                return new zzgtx();
            }
        }
        return (byte) 1;
    }

    public final zzgua zzf() {
        zzgua zzguaVar = this.zze;
        return zzguaVar == null ? zzgua.zzd() : zzguaVar;
    }
}
