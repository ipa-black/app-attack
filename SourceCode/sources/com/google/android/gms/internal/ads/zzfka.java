package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfka {
    public static void zza(Context context, boolean z) {
        if (z) {
            com.google.android.gms.ads.internal.util.zze.zzi("This request is sent from a test device.");
            return;
        }
        com.google.android.gms.ads.internal.client.zzay.zzb();
        String zzz = zzchh.zzz(context);
        com.google.android.gms.ads.internal.util.zze.zzi("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"" + zzz + "\")) to get test ads on this device.");
    }

    public static void zzb(int i, Throwable th, String str) {
        com.google.android.gms.ads.internal.util.zze.zzi("Ad failed to load : " + i);
        com.google.android.gms.ads.internal.util.zze.zzb(str, th);
        if (i == 3) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzo().zzt(th, str);
    }
}
