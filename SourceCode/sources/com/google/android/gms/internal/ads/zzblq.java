package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzblq {
    private static final AtomicReference zzb = new AtomicReference();
    private static final AtomicReference zzc = new AtomicReference();
    static final AtomicBoolean zza = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzblo zza() {
        return (zzblo) zzb.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzblp zzb() {
        return (zzblp) zzc.get();
    }

    public static void zzc(zzblo zzbloVar) {
        zzb.set(zzbloVar);
    }
}
