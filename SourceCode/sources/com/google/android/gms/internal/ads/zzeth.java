package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeth implements zzezm {
    private final Clock zza;
    private final zzfjg zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeth(Clock clock, zzfjg zzfjgVar) {
        this.zza = clock;
        this.zzb = zzfjgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 4;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return zzger.zzi(new zzeti(this.zzb, this.zza.currentTimeMillis()));
    }
}
