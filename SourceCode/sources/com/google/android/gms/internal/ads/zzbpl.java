package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbpl implements zzbqd {
    @Override // com.google.android.gms.internal.ads.zzbqd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        JSONObject zzb;
        zzcno zzcnoVar = (zzcno) obj;
        zzbly zzM = zzcnoVar.zzM();
        if (zzM == null || (zzb = zzM.zzb()) == null) {
            zzcnoVar.zze("nativeClickMetaReady", new JSONObject());
        } else {
            zzcnoVar.zze("nativeClickMetaReady", zzb);
        }
    }
}
