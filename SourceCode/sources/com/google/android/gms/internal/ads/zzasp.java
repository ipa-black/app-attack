package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzasp extends Exception {
    private zzasp(int i, String str, Throwable th, int i2) {
        super(null, th);
    }

    public static zzasp zza(Exception exc, int i) {
        return new zzasp(1, null, exc, i);
    }

    public static zzasp zzb(IOException iOException) {
        return new zzasp(0, null, iOException, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzasp zzc(RuntimeException runtimeException) {
        return new zzasp(2, null, runtimeException, -1);
    }
}
