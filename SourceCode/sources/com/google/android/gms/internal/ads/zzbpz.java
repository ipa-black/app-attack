package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbpz implements zzbqd {
    @Override // com.google.android.gms.internal.ads.zzbqd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcno zzcnoVar = (zzcno) obj;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            zzcnoVar.zzbn();
        } else if ("resume".equals(str)) {
            zzcnoVar.zzbo();
        }
    }
}
