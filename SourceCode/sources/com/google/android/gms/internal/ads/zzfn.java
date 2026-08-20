package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.io.RandomAccessFile;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfn extends zzer {
    private RandomAccessFile zza;
    private Uri zzb;
    private long zzc;
    private boolean zzd;

    public zzfn() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int zza(byte[] bArr, int i, int i2) throws zzfm {
        if (i2 == 0) {
            return 0;
        }
        if (this.zzc == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.zza;
            int i3 = zzen.zza;
            int read = randomAccessFile.read(bArr, i, (int) Math.min(this.zzc, i2));
            if (read > 0) {
                this.zzc -= read;
                zzg(read);
            }
            return read;
        } catch (IOException e2) {
            throw new zzfm(e2, 2000);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0087, code lost:
        if (r1 != false) goto L33;
     */
    @Override // com.google.android.gms.internal.ads.zzex
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzb(com.google.android.gms.internal.ads.zzfc r7) throws com.google.android.gms.internal.ads.zzfm {
        /*
            r6 = this;
            android.net.Uri r0 = r7.zza
            r6.zzb = r0
            r6.zzi(r7)
            r1 = 2000(0x7d0, float:2.803E-42)
            r2 = 2006(0x7d6, float:2.811E-42)
            java.io.RandomAccessFile r3 = new java.io.RandomAccessFile     // Catch: java.lang.RuntimeException -> L52 java.lang.SecurityException -> L59 java.io.FileNotFoundException -> L60
            java.lang.String r4 = r0.getPath()     // Catch: java.lang.RuntimeException -> L52 java.lang.SecurityException -> L59 java.io.FileNotFoundException -> L60
            r4.getClass()
            java.lang.String r5 = "r"
            r3.<init>(r4, r5)     // Catch: java.lang.RuntimeException -> L52 java.lang.SecurityException -> L59 java.io.FileNotFoundException -> L60
            r6.zza = r3
            long r4 = r7.zzf     // Catch: java.io.IOException -> L4b
            r3.seek(r4)     // Catch: java.io.IOException -> L4b
            long r2 = r7.zzg     // Catch: java.io.IOException -> L4b
            r4 = -1
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 != 0) goto L31
            java.io.RandomAccessFile r0 = r6.zza     // Catch: java.io.IOException -> L4b
            long r2 = r0.length()     // Catch: java.io.IOException -> L4b
            long r4 = r7.zzf     // Catch: java.io.IOException -> L4b
            long r2 = r2 - r4
        L31:
            r6.zzc = r2     // Catch: java.io.IOException -> L4b
            r0 = 0
            int r0 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r0 < 0) goto L42
            r0 = 1
            r6.zzd = r0
            r6.zzj(r7)
            long r0 = r6.zzc
            return r0
        L42:
            com.google.android.gms.internal.ads.zzfm r7 = new com.google.android.gms.internal.ads.zzfm
            r0 = 2008(0x7d8, float:2.814E-42)
            r1 = 0
            r7.<init>(r1, r1, r0)
            throw r7
        L4b:
            r7 = move-exception
            com.google.android.gms.internal.ads.zzfm r0 = new com.google.android.gms.internal.ads.zzfm
            r0.<init>(r7, r1)
            throw r0
        L52:
            r7 = move-exception
            com.google.android.gms.internal.ads.zzfm r0 = new com.google.android.gms.internal.ads.zzfm
            r0.<init>(r7, r1)
            throw r0
        L59:
            r7 = move-exception
            com.google.android.gms.internal.ads.zzfm r0 = new com.google.android.gms.internal.ads.zzfm
            r0.<init>(r7, r2)
            throw r0
        L60:
            r7 = move-exception
            java.lang.String r1 = r0.getQuery()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 == 0) goto L8f
            java.lang.String r1 = r0.getFragment()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 == 0) goto L8f
            com.google.android.gms.internal.ads.zzfm r0 = new com.google.android.gms.internal.ads.zzfm
            int r1 = com.google.android.gms.internal.ads.zzen.zza
            r3 = 21
            r4 = 2005(0x7d5, float:2.81E-42)
            if (r1 < r3) goto L8a
            java.lang.Throwable r1 = r7.getCause()
            boolean r1 = com.google.android.gms.internal.ads.zzfl.zza(r1)
            if (r1 == 0) goto L8a
            goto L8b
        L8a:
            r2 = r4
        L8b:
            r0.<init>(r7, r2)
            throw r0
        L8f:
            com.google.android.gms.internal.ads.zzfm r1 = new com.google.android.gms.internal.ads.zzfm
            java.lang.String r2 = r0.getPath()
            java.lang.String r3 = r0.getQuery()
            java.lang.String r0 = r0.getFragment()
            java.lang.Object[] r0 = new java.lang.Object[]{r2, r3, r0}
            java.lang.String r2 = "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s"
            java.lang.String r0 = java.lang.String.format(r2, r0)
            r2 = 1004(0x3ec, float:1.407E-42)
            r1.<init>(r0, r7, r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfn.zzb(com.google.android.gms.internal.ads.zzfc):long");
    }

    @Override // com.google.android.gms.internal.ads.zzex
    public final Uri zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzex
    public final void zzd() throws zzfm {
        this.zzb = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.zza;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.zza = null;
                if (this.zzd) {
                    this.zzd = false;
                    zzh();
                }
            } catch (IOException e2) {
                throw new zzfm(e2, 2000);
            }
        } catch (Throwable th) {
            this.zza = null;
            if (this.zzd) {
                this.zzd = false;
                zzh();
            }
            throw th;
        }
    }
}
