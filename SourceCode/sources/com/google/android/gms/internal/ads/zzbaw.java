package com.google.android.gms.internal.ads;

import android.os.Trace;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbaw {
    public static void zza(String str) {
        if (zzbay.zza >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void zzb() {
        if (zzbay.zza >= 18) {
            Trace.endSection();
        }
    }
}
