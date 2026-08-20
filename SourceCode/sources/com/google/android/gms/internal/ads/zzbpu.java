package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbpu implements zzbqd {
    @Override // com.google.android.gms.internal.ads.zzbqd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcno zzcnoVar = (zzcno) obj;
        if (zzcnoVar.zzL() != null) {
            zzcnoVar.zzL().zza();
        }
        com.google.android.gms.ads.internal.overlay.zzl zzN = zzcnoVar.zzN();
        if (zzN != null) {
            zzN.zzb();
            return;
        }
        com.google.android.gms.ads.internal.overlay.zzl zzO = zzcnoVar.zzO();
        if (zzO != null) {
            zzO.zzb();
        } else {
            com.google.android.gms.ads.internal.util.zze.zzj("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
