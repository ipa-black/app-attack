package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzzi implements zzaaq {
    private final byte[] zza = new byte[4096];

    @Override // com.google.android.gms.internal.ads.zzaaq
    public final /* synthetic */ int zze(zzr zzrVar, int i, boolean z) {
        return zzaao.zza(this, zzrVar, i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    public final int zzf(zzr zzrVar, int i, boolean z, int i2) throws IOException {
        int zza = zzrVar.zza(this.zza, 0, Math.min(4096, i));
        if (zza == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    public final void zzk(zzaf zzafVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    public final /* synthetic */ void zzq(zzef zzefVar, int i) {
        zzaao.zzb(this, zzefVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    public final void zzr(zzef zzefVar, int i, int i2) {
        zzefVar.zzG(i);
    }

    @Override // com.google.android.gms.internal.ads.zzaaq
    public final void zzs(long j, int i, int i2, int i3, zzaap zzaapVar) {
    }
}
