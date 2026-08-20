package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeyb implements zzezm {
    private final Context zza;
    private final zzgfc zzb;
    private final zzfjg zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeyb(Context context, zzgfc zzgfcVar, zzfjg zzfjgVar) {
        this.zza = context;
        this.zzb = zzgfcVar;
        this.zzc = zzfjgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 53;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeya
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeyb.this.zzc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0054, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(com.google.android.gms.internal.ads.zzbjj.zzcz)).booleanValue() != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0056, code lost:
        r1 = com.google.android.gms.internal.ads.zzfvf.zzj(r0).zzh(((java.lang.Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(com.google.android.gms.internal.ads.zzbjj.zzcI)).longValue(), com.google.android.gms.ads.internal.zzt.zzo().zzh().zzP());
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x008c, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(com.google.android.gms.internal.ads.zzbjj.zzcy)).booleanValue() == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a0, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(com.google.android.gms.internal.ads.zzbjj.zzcA)).booleanValue() != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a2, code lost:
        r0 = com.google.android.gms.internal.ads.zzfvg.zzi(r0);
        r2 = r0.zzh(((java.lang.Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(com.google.android.gms.internal.ads.zzbjj.zzcJ)).longValue(), com.google.android.gms.ads.internal.zzt.zzo().zzh().zzP());
        r3 = r0.zzo();
        r6 = r0.zzp();
        r4 = r2;
        r5 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0040, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(com.google.android.gms.internal.ads.zzbjj.zzcx)).booleanValue() == false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzeyc zzc() throws java.lang.Exception {
        /*
            r8 = this;
            android.content.Context r0 = r8.zza     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzfjg r1 = r8.zzc     // Catch: java.io.IOException -> Ldd
            boolean r7 = r1.zzb()     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzfvc r1 = new com.google.android.gms.internal.ads.zzfvc     // Catch: java.io.IOException -> Ldd
            r1.<init>()     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzfvc r2 = new com.google.android.gms.internal.ads.zzfvc     // Catch: java.io.IOException -> Ldd
            r2.<init>()     // Catch: java.io.IOException -> Ldd
            r3 = 1
            if (r7 == 0) goto L2e
            com.google.android.gms.internal.ads.zzbjb r4 = com.google.android.gms.internal.ads.zzbjj.zzcB     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzbjh r5 = com.google.android.gms.ads.internal.client.zzba.zzc()     // Catch: java.io.IOException -> Ldd
            java.lang.Object r4 = r5.zzb(r4)     // Catch: java.io.IOException -> Ldd
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch: java.io.IOException -> Ldd
            boolean r4 = r4.booleanValue()     // Catch: java.io.IOException -> Ldd
            if (r4 != 0) goto L2e
            com.google.android.gms.internal.ads.zzeyc r0 = new com.google.android.gms.internal.ads.zzeyc     // Catch: java.io.IOException -> Ldd
            r0.<init>(r3)     // Catch: java.io.IOException -> Ldd
            goto Ldc
        L2e:
            if (r7 != 0) goto L42
            com.google.android.gms.internal.ads.zzbjb r4 = com.google.android.gms.internal.ads.zzbjj.zzcx     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzbjh r5 = com.google.android.gms.ads.internal.client.zzba.zzc()     // Catch: java.io.IOException -> Ldd
            java.lang.Object r4 = r5.zzb(r4)     // Catch: java.io.IOException -> Ldd
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch: java.io.IOException -> Ldd
            boolean r4 = r4.booleanValue()     // Catch: java.io.IOException -> Ldd
            if (r4 != 0) goto L56
        L42:
            if (r7 == 0) goto L7a
            com.google.android.gms.internal.ads.zzbjb r4 = com.google.android.gms.internal.ads.zzbjj.zzcz     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzbjh r5 = com.google.android.gms.ads.internal.client.zzba.zzc()     // Catch: java.io.IOException -> Ldd
            java.lang.Object r4 = r5.zzb(r4)     // Catch: java.io.IOException -> Ldd
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch: java.io.IOException -> Ldd
            boolean r4 = r4.booleanValue()     // Catch: java.io.IOException -> Ldd
            if (r4 == 0) goto L7a
        L56:
            com.google.android.gms.internal.ads.zzfvf r1 = com.google.android.gms.internal.ads.zzfvf.zzj(r0)     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzbjb r4 = com.google.android.gms.internal.ads.zzbjj.zzcI     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzbjh r5 = com.google.android.gms.ads.internal.client.zzba.zzc()     // Catch: java.io.IOException -> Ldd
            java.lang.Object r4 = r5.zzb(r4)     // Catch: java.io.IOException -> Ldd
            java.lang.Long r4 = (java.lang.Long) r4     // Catch: java.io.IOException -> Ldd
            long r4 = r4.longValue()     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzcgx r6 = com.google.android.gms.ads.internal.zzt.zzo()     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.ads.internal.util.zzg r6 = r6.zzh()     // Catch: java.io.IOException -> Ldd
            boolean r6 = r6.zzP()     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzfvc r1 = r1.zzh(r4, r6)     // Catch: java.io.IOException -> Ldd
        L7a:
            if (r7 != 0) goto L8e
            com.google.android.gms.internal.ads.zzbjb r4 = com.google.android.gms.internal.ads.zzbjj.zzcy     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzbjh r5 = com.google.android.gms.ads.internal.client.zzba.zzc()     // Catch: java.io.IOException -> Ldd
            java.lang.Object r4 = r5.zzb(r4)     // Catch: java.io.IOException -> Ldd
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch: java.io.IOException -> Ldd
            boolean r4 = r4.booleanValue()     // Catch: java.io.IOException -> Ldd
            if (r4 != 0) goto La2
        L8e:
            if (r7 == 0) goto Ld2
            com.google.android.gms.internal.ads.zzbjb r4 = com.google.android.gms.internal.ads.zzbjj.zzcA     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzbjh r5 = com.google.android.gms.ads.internal.client.zzba.zzc()     // Catch: java.io.IOException -> Ldd
            java.lang.Object r4 = r5.zzb(r4)     // Catch: java.io.IOException -> Ldd
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch: java.io.IOException -> Ldd
            boolean r4 = r4.booleanValue()     // Catch: java.io.IOException -> Ldd
            if (r4 == 0) goto Ld2
        La2:
            com.google.android.gms.internal.ads.zzfvg r0 = com.google.android.gms.internal.ads.zzfvg.zzi(r0)     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzbjb r2 = com.google.android.gms.internal.ads.zzbjj.zzcJ     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzbjh r3 = com.google.android.gms.ads.internal.client.zzba.zzc()     // Catch: java.io.IOException -> Ldd
            java.lang.Object r2 = r3.zzb(r2)     // Catch: java.io.IOException -> Ldd
            java.lang.Long r2 = (java.lang.Long) r2     // Catch: java.io.IOException -> Ldd
            long r2 = r2.longValue()     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzcgx r4 = com.google.android.gms.ads.internal.zzt.zzo()     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.ads.internal.util.zzg r4 = r4.zzh()     // Catch: java.io.IOException -> Ldd
            boolean r4 = r4.zzP()     // Catch: java.io.IOException -> Ldd
            com.google.android.gms.internal.ads.zzfvc r2 = r0.zzh(r2, r4)     // Catch: java.io.IOException -> Ldd
            boolean r3 = r0.zzo()     // Catch: java.io.IOException -> Ldd
            boolean r0 = r0.zzp()     // Catch: java.io.IOException -> Ldd
            r6 = r0
            r4 = r2
            r5 = r3
            goto Ld5
        Ld2:
            r4 = r2
            r5 = r3
            r6 = r5
        Ld5:
            com.google.android.gms.internal.ads.zzeyc r0 = new com.google.android.gms.internal.ads.zzeyc     // Catch: java.io.IOException -> Ldd
            r2 = r0
            r3 = r1
            r2.<init>(r3, r4, r5, r6, r7)     // Catch: java.io.IOException -> Ldd
        Ldc:
            return r0
        Ldd:
            r0 = move-exception
            com.google.android.gms.internal.ads.zzcgx r1 = com.google.android.gms.ads.internal.zzt.zzo()
            java.lang.String r2 = "PerAppIdSignal"
            r1.zzu(r0, r2)
            com.google.android.gms.internal.ads.zzeyc r0 = new com.google.android.gms.internal.ads.zzeyc
            com.google.android.gms.internal.ads.zzfjg r1 = r8.zzc
            boolean r1 = r1.zzb()
            r0.<init>(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeyb.zzc():com.google.android.gms.internal.ads.zzeyc");
    }
}
