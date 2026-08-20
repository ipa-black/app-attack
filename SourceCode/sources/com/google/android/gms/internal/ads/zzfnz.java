package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfnz implements zzfnt {
    private final zzfod zza;
    private final zzfob zzb;
    private final zzfnq zzc;

    public zzfnz(zzfnq zzfnqVar, zzfod zzfodVar, zzfob zzfobVar, byte[] bArr) {
        this.zzc = zzfnqVar;
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
        this.zzc.zzb(zza(zzfnsVar));
    }
}
