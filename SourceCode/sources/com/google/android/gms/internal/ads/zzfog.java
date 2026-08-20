package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfog implements zzfnt {
    private final zzfod zza;
    private final zzfob zzb;

    public zzfog(zzfod zzfodVar, zzfob zzfobVar) {
        this.zza = zzfodVar;
        this.zzb = zzfobVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfnt
    public final String zza(zzfns zzfnsVar) {
        zzfod zzfodVar = this.zza;
        Map zzj = zzfnsVar.zzj();
        this.zzb.zza(zzj);
        return zzfodVar.zza(zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzfnt
    public final void zzb(zzfns zzfnsVar) {
    }
}
