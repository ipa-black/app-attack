package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbps implements zzbqd {
    @Override // com.google.android.gms.internal.ads.zzbqd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcno zzcnoVar = (zzcno) obj;
        try {
            String str = (String) map.get("enabled");
            if (!zzfxl.zzc("true", str) && !zzfxl.zzc("false", str)) {
                return;
            }
            zzfvg.zzi(zzcnoVar.getContext()).zzm(Boolean.parseBoolean(str));
        } catch (IOException e2) {
            com.google.android.gms.ads.internal.zzt.zzo().zzu(e2, "DefaultGmsgHandlers.SetPaidv2PersonalizationEnabled");
        }
    }
}
