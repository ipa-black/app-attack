package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzacc implements zzzm {
    private final long zzb;
    private final zzzm zzc;

    public zzacc(long j, zzzm zzzmVar) {
        this.zzb = j;
        this.zzc = zzzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final void zzC() {
        this.zzc.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final void zzN(zzaam zzaamVar) {
        this.zzc.zzN(new zzacb(this, zzaamVar));
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final zzaaq zzv(int i, int i2) {
        return this.zzc.zzv(i, i2);
    }
}
