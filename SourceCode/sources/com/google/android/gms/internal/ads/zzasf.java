package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzasf extends zzgyd implements zzgzo {
    private static final zzasf zzb;
    private int zzd;
    private String zze = "";
    private String zzf = "";
    private long zzg;
    private long zzh;
    private long zzi;

    static {
        zzasf zzasfVar = new zzasf();
        zzb = zzasfVar;
        zzgyd.zzaS(zzasf.class, zzasfVar);
    }

    private zzasf() {
    }

    public static zzase zze() {
        return (zzase) zzb.zzaz();
    }

    public static zzasf zzg() {
        return zzb;
    }

    public static zzasf zzh(zzgwv zzgwvVar) throws zzgyp {
        return (zzasf) zzgyd.zzaD(zzb, zzgwvVar);
    }

    public static zzasf zzi(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzasf) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzl(zzasf zzasfVar, String str) {
        str.getClass();
        zzasfVar.zzd |= 1;
        zzasfVar.zze = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzm(zzasf zzasfVar, long j) {
        zzasfVar.zzd |= 16;
        zzasfVar.zzi = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzn(zzasf zzasfVar, String str) {
        str.getClass();
        zzasfVar.zzd |= 2;
        zzasfVar.zzf = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzo(zzasf zzasfVar, long j) {
        zzasfVar.zzd |= 4;
        zzasfVar.zzg = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzp(zzasf zzasfVar, long j) {
        zzasfVar.zzd |= 8;
        zzasfVar.zzh = j;
    }

    public final long zza() {
        return this.zzh;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzase(null);
            } else {
                return new zzasf();
            }
        }
        return (byte) 1;
    }

    public final long zzc() {
        return this.zzg;
    }

    public final long zzd() {
        return this.zzi;
    }

    public final String zzj() {
        return this.zzf;
    }

    public final String zzk() {
        return this.zze;
    }
}
