package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.extractor.ogg.OggPageHeader;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzagh {
    private final zzagi zza = new zzagi();
    private final zzef zzb = new zzef(new byte[OggPageHeader.MAX_PAGE_PAYLOAD], 0);
    private int zzc = -1;
    private int zzd;
    private boolean zze;

    private final int zzf(int i) {
        int i2;
        int i3 = 0;
        this.zzd = 0;
        do {
            int i4 = this.zzd;
            int i5 = i + i4;
            zzagi zzagiVar = this.zza;
            if (i5 >= zzagiVar.zzc) {
                break;
            }
            int[] iArr = zzagiVar.zzf;
            this.zzd = i4 + 1;
            i2 = iArr[i5];
            i3 += i2;
        } while (i2 == 255);
        return i3;
    }

    public final zzef zza() {
        return this.zzb;
    }

    public final zzagi zzb() {
        return this.zza;
    }

    public final void zzc() {
        this.zza.zza();
        this.zzb.zzC(0);
        this.zzc = -1;
        this.zze = false;
    }

    public final void zzd() {
        zzef zzefVar = this.zzb;
        if (zzefVar.zzH().length == 65025) {
            return;
        }
        zzefVar.zzD(Arrays.copyOf(zzefVar.zzH(), Math.max((int) OggPageHeader.MAX_PAGE_PAYLOAD, zzefVar.zzd())), this.zzb.zzd());
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x004d, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zze(com.google.android.gms.internal.ads.zzzk r7) throws java.io.IOException {
        /*
            r6 = this;
            boolean r0 = r6.zze
            r1 = 0
            if (r0 != 0) goto L6
            goto Ld
        L6:
            r6.zze = r1
            com.google.android.gms.internal.ads.zzef r0 = r6.zzb
            r0.zzC(r1)
        Ld:
            boolean r0 = r6.zze
            r2 = 1
            if (r0 != 0) goto L99
            int r0 = r6.zzc
            if (r0 >= 0) goto L4e
            com.google.android.gms.internal.ads.zzagi r0 = r6.zza
            r3 = -1
            boolean r0 = r0.zzc(r7, r3)
            if (r0 == 0) goto L4d
            com.google.android.gms.internal.ads.zzagi r0 = r6.zza
            boolean r0 = r0.zzb(r7, r2)
            if (r0 != 0) goto L29
            goto L4d
        L29:
            com.google.android.gms.internal.ads.zzagi r0 = r6.zza
            int r3 = r0.zzd
            int r0 = r0.zza
            r0 = r0 & r2
            if (r0 != r2) goto L42
            com.google.android.gms.internal.ads.zzef r0 = r6.zzb
            int r0 = r0.zzd()
            if (r0 != 0) goto L42
            int r0 = r6.zzf(r1)
            int r3 = r3 + r0
            int r0 = r6.zzd
            goto L43
        L42:
            r0 = r1
        L43:
            boolean r3 = com.google.android.gms.internal.ads.zzzn.zze(r7, r3)
            if (r3 != 0) goto L4a
            return r1
        L4a:
            r6.zzc = r0
            goto L4e
        L4d:
            return r1
        L4e:
            int r0 = r6.zzf(r0)
            int r3 = r6.zzc
            int r4 = r6.zzd
            int r3 = r3 + r4
            if (r0 <= 0) goto L8e
            com.google.android.gms.internal.ads.zzef r4 = r6.zzb
            int r5 = r4.zzd()
            int r5 = r5 + r0
            r4.zzz(r5)
            com.google.android.gms.internal.ads.zzef r4 = r6.zzb
            byte[] r5 = r4.zzH()
            int r4 = r4.zzd()
            boolean r4 = com.google.android.gms.internal.ads.zzzn.zzd(r7, r5, r4, r0)
            if (r4 != 0) goto L74
            return r1
        L74:
            com.google.android.gms.internal.ads.zzef r4 = r6.zzb
            int r5 = r4.zzd()
            int r5 = r5 + r0
            r4.zzE(r5)
            com.google.android.gms.internal.ads.zzagi r0 = r6.zza
            int[] r0 = r0.zzf
            int r4 = r3 + (-1)
            r0 = r0[r4]
            r4 = 255(0xff, float:3.57E-43)
            if (r0 == r4) goto L8b
            goto L8c
        L8b:
            r2 = r1
        L8c:
            r6.zze = r2
        L8e:
            com.google.android.gms.internal.ads.zzagi r0 = r6.zza
            int r0 = r0.zzc
            if (r3 != r0) goto L95
            r3 = -1
        L95:
            r6.zzc = r3
            goto Ld
        L99:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagh.zze(com.google.android.gms.internal.ads.zzzk):boolean");
    }
}
