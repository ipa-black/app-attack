package com.google.android.gms.internal.p002firebaseiid;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
/* renamed from: com.google.android.gms.internal.firebase-iid.zzc  reason: invalid package */
/* loaded from: classes4.dex */
final class zzc implements zzb {
    private zzc() {
    }

    @Override // com.google.android.gms.internal.p002firebaseiid.zzb
    public final ScheduledExecutorService zza(int i, ThreadFactory threadFactory, int i2) {
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, threadFactory));
    }
}
