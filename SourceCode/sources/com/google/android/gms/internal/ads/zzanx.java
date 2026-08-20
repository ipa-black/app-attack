package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.CountDownLatch;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzanx implements Runnable {
    private zzanx() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzanx(zzanw zzanwVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        try {
            zzany.zzc(MessageDigest.getInstance("MD5"));
            countDownLatch = zzany.zzb;
        } catch (NoSuchAlgorithmException unused) {
            countDownLatch = zzany.zzb;
        } catch (Throwable th) {
            zzany.zzb.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }
}
