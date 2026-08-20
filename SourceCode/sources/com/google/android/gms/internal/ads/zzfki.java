package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfki implements zzhep {
    private final zzfkh zza;

    public zzfki(zzfkh zzfkhVar) {
        this.zza = zzfkhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* synthetic */ Object zzb() {
        Clock defaultClock = DefaultClock.getInstance();
        zzhex.zzb(defaultClock);
        return defaultClock;
    }
}
