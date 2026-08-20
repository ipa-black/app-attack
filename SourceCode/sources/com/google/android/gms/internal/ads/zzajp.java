package com.google.android.gms.internal.ads;

import java.util.concurrent.BlockingQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzajp implements Runnable {
    final /* synthetic */ zzake zza;
    final /* synthetic */ zzajq zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajp(zzajq zzajqVar, zzake zzakeVar) {
        this.zzb = zzajqVar;
        this.zza = zzakeVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BlockingQueue blockingQueue;
        try {
            blockingQueue = this.zzb.zzc;
            blockingQueue.put(this.zza);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
