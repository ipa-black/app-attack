package com.google.android.gms.internal.ads;

import java.util.logging.Logger;
import javax.annotation.CheckForNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfyd {
    private static final Logger zza = Logger.getLogger(zzfyd.class.getName());
    private static final zzfyc zzb = new zzfyc(null);

    private zzfyd() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(@CheckForNull String str) {
        return str == null ? "" : str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzb(@CheckForNull String str) {
        return str == null || str.isEmpty();
    }
}
