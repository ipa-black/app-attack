package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaye implements zzayv {
    final /* synthetic */ zzayf zza;
    private final int zzb;

    public zzaye(zzayf zzayfVar, int i) {
        this.zza = zzayfVar;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zzayv
    public final int zzb(zzate zzateVar, zzauy zzauyVar, boolean z) {
        return this.zza.zze(this.zzb, zzateVar, zzauyVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzayv
    public final void zzc() throws IOException {
        this.zza.zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzayv
    public final void zzd(long j) {
        this.zza.zzy(this.zzb, j);
    }

    @Override // com.google.android.gms.internal.ads.zzayv
    public final boolean zze() {
        return this.zza.zzA(this.zzb);
    }
}
