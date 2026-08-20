package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhaw extends RuntimeException {
    public zzhaw(zzgzn zzgznVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final zzgyp zza() {
        return new zzgyp(getMessage());
    }
}
