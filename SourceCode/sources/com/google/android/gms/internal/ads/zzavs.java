package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Stack;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzavs {
    private final byte[] zza = new byte[8];
    private final Stack zzb = new Stack();
    private final zzawa zzc = new zzawa();
    private int zzd;
    private int zze;
    private long zzf;
    private zzavv zzg;

    private final long zzd(zzavf zzavfVar, int i) throws IOException, InterruptedException {
        zzavfVar.zzh(this.zza, 0, i, false);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.zza[i2] & 255);
        }
        return j;
    }

    public final void zza() {
        this.zzd = 0;
        this.zzb.clear();
        this.zzc.zzd();
    }

    public final void zzb(zzavv zzavvVar) {
        this.zzg = zzavvVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x008b, code lost:
        if (r0 == 1) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zzavf r13) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzavs.zzc(com.google.android.gms.internal.ads.zzavf):boolean");
    }
}
