package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzevk implements zzezm {
    private final AtomicReference zza = new AtomicReference();
    private final Clock zzb;
    private final zzezm zzc;
    private final long zzd;

    public zzevk(zzezm zzezmVar, long j, Clock clock) {
        this.zzb = clock;
        this.zzc = zzezmVar;
        this.zzd = j;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 16;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        zzevj zzevjVar = (zzevj) this.zza.get();
        if (zzevjVar == null || zzevjVar.zza()) {
            zzevjVar = new zzevj(this.zzc.zzb(), this.zzd, this.zzb);
            this.zza.set(zzevjVar);
        }
        return zzevjVar.zza;
    }
}
