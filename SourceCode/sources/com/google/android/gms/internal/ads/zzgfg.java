package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgdf;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzgfg extends zzgdf.zzi implements Runnable {
    private final Runnable zza;

    public zzgfg(Runnable runnable) {
        runnable.getClass();
        this.zza = runnable;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgdf
    public final String zza() {
        String valueOf = String.valueOf(this.zza);
        return "task=[" + valueOf + "]";
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zza.run();
        } catch (Error | RuntimeException e2) {
            zze(e2);
            throw e2;
        }
    }
}
