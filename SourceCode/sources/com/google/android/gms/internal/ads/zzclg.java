package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzclg implements zzazt {
    private final zzazt zza;
    private final long zzb;
    private final zzazt zzc;
    private long zzd;
    private Uri zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzclg(zzazt zzaztVar, int i, zzazt zzaztVar2) {
        this.zza = zzaztVar;
        this.zzb = i;
        this.zzc = zzaztVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        long j = this.zzd;
        long j2 = this.zzb;
        if (j < j2) {
            int zza = this.zza.zza(bArr, i, (int) Math.min(i2, j2 - j));
            long j3 = this.zzd + zza;
            this.zzd = j3;
            i3 = zza;
            j = j3;
        } else {
            i3 = 0;
        }
        if (j >= this.zzb) {
            int zza2 = this.zzc.zza(bArr, i + i3, i2 - i3);
            this.zzd += zza2;
            return i3 + zza2;
        }
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final Uri zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final void zzd() throws IOException {
        this.zza.zzd();
        this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final long zzb(zzazv zzazvVar) throws IOException {
        zzazv zzazvVar2;
        this.zze = zzazvVar.zza;
        long j = zzazvVar.zzc;
        long j2 = this.zzb;
        zzazv zzazvVar3 = null;
        if (j >= j2) {
            zzazvVar2 = null;
        } else {
            long j3 = zzazvVar.zzd;
            zzazvVar2 = new zzazv(zzazvVar.zza, null, j, j, j3 != -1 ? Math.min(j3, j2 - j) : j2 - j, null, 0);
        }
        long j4 = zzazvVar.zzd;
        if (j4 == -1 || zzazvVar.zzc + j4 > this.zzb) {
            long max = Math.max(this.zzb, zzazvVar.zzc);
            long j5 = zzazvVar.zzd;
            zzazvVar3 = new zzazv(zzazvVar.zza, null, max, max, j5 != -1 ? Math.min(j5, (zzazvVar.zzc + j5) - this.zzb) : -1L, null, 0);
        }
        long zzb = zzazvVar2 != null ? this.zza.zzb(zzazvVar2) : 0L;
        long zzb2 = zzazvVar3 != null ? this.zzc.zzb(zzazvVar3) : 0L;
        this.zzd = zzazvVar.zzc;
        if (zzb2 == -1) {
            return -1L;
        }
        return zzb + zzb2;
    }
}
