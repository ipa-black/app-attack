package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdyo implements zzfnk {
    private final Map zza;
    private final zzbew zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdyo(zzbew zzbewVar, Map map) {
        this.zza = map;
        this.zzb = zzbewVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzbH(zzfnd zzfndVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzbI(zzfnd zzfndVar, String str, Throwable th) {
        if (this.zza.containsKey(zzfndVar)) {
            this.zzb.zzc(((zzdyn) this.zza.get(zzfndVar)).zzc);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzc(zzfnd zzfndVar, String str) {
        if (this.zza.containsKey(zzfndVar)) {
            this.zzb.zzc(((zzdyn) this.zza.get(zzfndVar)).zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzd(zzfnd zzfndVar, String str) {
        if (this.zza.containsKey(zzfndVar)) {
            this.zzb.zzc(((zzdyn) this.zza.get(zzfndVar)).zzb);
        }
    }
}
