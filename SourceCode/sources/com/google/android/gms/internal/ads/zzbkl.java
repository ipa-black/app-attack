package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public class zzbkl {
    private final String zza;
    private final Object zzb;
    private final int zzc;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbkl(String str, Object obj, int i) {
        this.zza = str;
        this.zzb = obj;
        this.zzc = i;
    }

    public static zzbkl zza(String str, double d2) {
        return new zzbkl(str, Double.valueOf(d2), 3);
    }

    public static zzbkl zzb(String str, long j) {
        return new zzbkl(str, Long.valueOf(j), 2);
    }

    public static zzbkl zzc(String str, String str2) {
        return new zzbkl(str, str2, 4);
    }

    public static zzbkl zzd(String str, boolean z) {
        return new zzbkl(str, Boolean.valueOf(z), 1);
    }

    public final Object zze() {
        zzblo zza = zzblq.zza();
        if (zza == null) {
            if (zzblq.zzb() != null) {
                zzblq.zzb().zza();
            }
            return this.zzb;
        }
        int i = this.zzc - 1;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return zza.zzd(this.zza, (String) this.zzb);
                }
                return zza.zzb(this.zza, ((Double) this.zzb).doubleValue());
            }
            return zza.zzc(this.zza, ((Long) this.zzb).longValue());
        }
        return zza.zza(this.zza, ((Boolean) this.zzb).booleanValue());
    }
}
