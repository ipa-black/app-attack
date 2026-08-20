package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzqe {
    private long zza;
    private long zzb;
    private boolean zzc;

    private final long zzd(long j) {
        return this.zza + Math.max(0L, ((this.zzb - 529) * 1000000) / j);
    }

    public final long zza(zzaf zzafVar) {
        return zzd(zzafVar.zzA);
    }

    public final long zzb(zzaf zzafVar, zzgi zzgiVar) {
        if (this.zzb == 0) {
            this.zza = zzgiVar.zzd;
        }
        if (this.zzc) {
            return zzgiVar.zzd;
        }
        ByteBuffer byteBuffer = zzgiVar.zzb;
        byteBuffer.getClass();
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i = (i << 8) | (byteBuffer.get(i2) & 255);
        }
        int zzc = zzaad.zzc(i);
        if (zzc == -1) {
            this.zzc = true;
            this.zzb = 0L;
            this.zza = zzgiVar.zzd;
            zzdw.zze("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
            return zzgiVar.zzd;
        }
        long zzd = zzd(zzafVar.zzA);
        this.zzb += zzc;
        return zzd;
    }

    public final void zzc() {
        this.zza = 0L;
        this.zzb = 0L;
        this.zzc = false;
    }
}
