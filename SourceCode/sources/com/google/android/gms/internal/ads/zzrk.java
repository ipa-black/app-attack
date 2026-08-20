package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzrk implements zzta {
    private final zzzq zza;
    private zzzj zzb;
    private zzzk zzc;

    public zzrk(zzzq zzzqVar) {
        this.zza = zzzqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzta
    public final long zzb() {
        zzzk zzzkVar = this.zzc;
        if (zzzkVar != null) {
            return zzzkVar.zzf();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzta
    public final void zzc() {
        zzzj zzzjVar = this.zzb;
        if (zzzjVar instanceof zzaer) {
            ((zzaer) zzzjVar).zze();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004a, code lost:
        if (r6.zzf() != r11) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006c, code lost:
        if (r6.zzf() != r11) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006f, code lost:
        r1 = false;
     */
    @Override // com.google.android.gms.internal.ads.zzta
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(com.google.android.gms.internal.ads.zzr r8, android.net.Uri r9, java.util.Map r10, long r11, long r13, com.google.android.gms.internal.ads.zzzm r15) throws java.io.IOException {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzyz r6 = new com.google.android.gms.internal.ads.zzyz
            r0 = r6
            r1 = r8
            r2 = r11
            r4 = r13
            r0.<init>(r1, r2, r4)
            r7.zzc = r6
            com.google.android.gms.internal.ads.zzzj r8 = r7.zzb
            if (r8 == 0) goto L10
            return
        L10:
            com.google.android.gms.internal.ads.zzzq r8 = r7.zza
            com.google.android.gms.internal.ads.zzzj[] r8 = r8.zzb(r9, r10)
            int r10 = r8.length
            r13 = 0
            r14 = 1
            if (r10 != r14) goto L21
            r8 = r8[r13]
            r7.zzb = r8
            goto L7f
        L21:
            r0 = r13
        L22:
            if (r0 >= r10) goto L7b
            r1 = r8[r0]
            boolean r2 = r1.zzd(r6)     // Catch: java.lang.Throwable -> L4d java.io.EOFException -> L62
            if (r2 == 0) goto L40
            r7.zzb = r1     // Catch: java.lang.Throwable -> L4d java.io.EOFException -> L62
            if (r1 != 0) goto L38
            long r0 = r6.zzf()
            int r10 = (r0 > r11 ? 1 : (r0 == r11 ? 0 : -1))
            if (r10 != 0) goto L39
        L38:
            r13 = r14
        L39:
            com.google.android.gms.internal.ads.zzdd.zzf(r13)
            r6.zzj()
            goto L7b
        L40:
            com.google.android.gms.internal.ads.zzzj r1 = r7.zzb
            if (r1 != 0) goto L71
            long r1 = r6.zzf()
            int r1 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r1 != 0) goto L6f
            goto L71
        L4d:
            r8 = move-exception
            com.google.android.gms.internal.ads.zzzj r9 = r7.zzb
            if (r9 != 0) goto L5a
            long r9 = r6.zzf()
            int r9 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r9 != 0) goto L5b
        L5a:
            r13 = r14
        L5b:
            com.google.android.gms.internal.ads.zzdd.zzf(r13)
            r6.zzj()
            throw r8
        L62:
            com.google.android.gms.internal.ads.zzzj r1 = r7.zzb
            if (r1 != 0) goto L71
            long r1 = r6.zzf()
            int r1 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r1 != 0) goto L6f
            goto L71
        L6f:
            r1 = r13
            goto L72
        L71:
            r1 = r14
        L72:
            com.google.android.gms.internal.ads.zzdd.zzf(r1)
            r6.zzj()
            int r0 = r0 + 1
            goto L22
        L7b:
            com.google.android.gms.internal.ads.zzzj r10 = r7.zzb
            if (r10 == 0) goto L85
        L7f:
            com.google.android.gms.internal.ads.zzzj r8 = r7.zzb
            r8.zzb(r15)
            return
        L85:
            com.google.android.gms.internal.ads.zzuh r10 = new com.google.android.gms.internal.ads.zzuh
            java.lang.String r8 = com.google.android.gms.internal.ads.zzen.zzK(r8)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            java.lang.String r12 = "None of the available extractors ("
            r11.<init>(r12)
            r11.append(r8)
            java.lang.String r8 = ") could read the stream."
            r11.append(r8)
            java.lang.String r8 = r11.toString()
            r10.<init>(r8, r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrk.zzd(com.google.android.gms.internal.ads.zzr, android.net.Uri, java.util.Map, long, long, com.google.android.gms.internal.ads.zzzm):void");
    }

    @Override // com.google.android.gms.internal.ads.zzta
    public final void zze() {
        if (this.zzb != null) {
            this.zzb = null;
        }
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzta
    public final int zza(zzaaj zzaajVar) throws IOException {
        zzzj zzzjVar = this.zzb;
        zzzjVar.getClass();
        zzzk zzzkVar = this.zzc;
        zzzkVar.getClass();
        return zzzjVar.zza(zzzkVar, zzaajVar);
    }

    @Override // com.google.android.gms.internal.ads.zzta
    public final void zzf(long j, long j2) {
        zzzj zzzjVar = this.zzb;
        zzzjVar.getClass();
        zzzjVar.zzc(j, j2);
    }
}
