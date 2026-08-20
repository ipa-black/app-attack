package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzagq extends zzago {
    private zzagp zza;
    private int zzb;
    private boolean zzc;
    private zzaav zzd;
    private zzaat zze;

    @Override // com.google.android.gms.internal.ads.zzago
    protected final long zza(zzef zzefVar) {
        if ((zzefVar.zzH()[0] & 1) == 1) {
            return -1L;
        }
        byte b2 = zzefVar.zzH()[0];
        zzagp zzagpVar = this.zza;
        zzdd.zzb(zzagpVar);
        int i = !zzagpVar.zzd[(b2 >> 1) & (255 >>> (8 - zzagpVar.zze))].zza ? zzagpVar.zza.zze : zzagpVar.zza.zzf;
        long j = this.zzc ? (this.zzb + i) / 4 : 0;
        if (zzefVar.zzb() < zzefVar.zzd() + 4) {
            byte[] copyOf = Arrays.copyOf(zzefVar.zzH(), zzefVar.zzd() + 4);
            zzefVar.zzD(copyOf, copyOf.length);
        } else {
            zzefVar.zzE(zzefVar.zzd() + 4);
        }
        byte[] zzH = zzefVar.zzH();
        zzH[zzefVar.zzd() - 4] = (byte) (j & 255);
        zzH[zzefVar.zzd() - 3] = (byte) ((j >>> 8) & 255);
        zzH[zzefVar.zzd() - 2] = (byte) ((j >>> 16) & 255);
        zzH[zzefVar.zzd() - 1] = (byte) ((j >>> 24) & 255);
        this.zzc = true;
        this.zzb = i;
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzago
    public final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zza = null;
            this.zzd = null;
            this.zze = null;
        }
        this.zzb = 0;
        this.zzc = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzago
    public final void zzi(long j) {
        super.zzi(j);
        this.zzc = j != 0;
        zzaav zzaavVar = this.zzd;
        this.zzb = zzaavVar != null ? zzaavVar.zze : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:171:0x03f2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03f4  */
    @Override // com.google.android.gms.internal.ads.zzago
    @org.checkerframework.checker.nullness.qual.EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final boolean zzc(com.google.android.gms.internal.ads.zzef r26, long r27, com.google.android.gms.internal.ads.zzagl r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1093
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagq.zzc(com.google.android.gms.internal.ads.zzef, long, com.google.android.gms.internal.ads.zzagl):boolean");
    }
}
