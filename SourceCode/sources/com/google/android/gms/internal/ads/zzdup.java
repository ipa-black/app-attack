package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdup implements zzbqd {
    private final zzbnp zza;
    private final zzdve zzb;
    private final zzhej zzc;

    public zzdup(zzdqr zzdqrVar, zzdqg zzdqgVar, zzdve zzdveVar, zzhej zzhejVar) {
        this.zza = zzdqrVar.zzc(zzdqgVar.zzy());
        this.zzb = zzdveVar;
        this.zzc = zzhejVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final void zza(Object obj, Map map) {
        String str = (String) map.get("asset");
        try {
            this.zza.zze((zzbnf) this.zzc.zzb(), str);
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzk("Failed to call onCustomClick for asset " + str + ".", e2);
        }
    }

    public final void zzb() {
        if (this.zza == null) {
            return;
        }
        this.zzb.zzi("/nativeAdCustomClick", this);
    }
}
