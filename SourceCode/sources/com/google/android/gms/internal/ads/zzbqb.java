package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbqb implements zzbqd {
    @Override // com.google.android.gms.internal.ads.zzbqd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcno zzcnoVar = (zzcno) obj;
        if (map.keySet().contains(TtmlNode.START)) {
            zzcnoVar.zzau(true);
        }
        if (map.keySet().contains("stop")) {
            zzcnoVar.zzau(false);
        }
    }
}
