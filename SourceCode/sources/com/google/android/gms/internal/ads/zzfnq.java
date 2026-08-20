package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfnq {
    private final Executor zza;
    private final zzcht zzb;

    public zzfnq(Executor executor, zzcht zzchtVar) {
        this.zza = executor;
        this.zzb = zzchtVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(String str) {
        this.zzb.zza(str);
    }

    public final void zzb(final String str) {
        this.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfnp
            @Override // java.lang.Runnable
            public final void run() {
                zzfnq.this.zza(str);
            }
        });
    }
}
