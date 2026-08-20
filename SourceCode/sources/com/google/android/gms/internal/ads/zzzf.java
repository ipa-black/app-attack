package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzzf {
    public final String zza;

    private zzzf(int i, int i2, String str) {
        this.zza = str;
    }

    public static zzzf zza(zzef zzefVar) {
        String str;
        zzefVar.zzG(2);
        int zzk = zzefVar.zzk();
        int i = zzk >> 1;
        int zzk2 = (zzefVar.zzk() >> 3) | ((zzk & 1) << 5);
        if (i == 4 || i == 5 || i == 7) {
            str = "dvhe";
        } else if (i == 8) {
            str = "hev1";
        } else if (i != 9) {
            return null;
        } else {
            str = "avc3";
        }
        String str2 = zzk2 < 10 ? ".0" : ".";
        return new zzzf(i, zzk2, str + ".0" + i + str2 + zzk2);
    }
}
