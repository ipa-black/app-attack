package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcvc {
    private final Map zza;
    private final Map zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcvc(Map map, Map map2) {
        this.zza = map;
        this.zzb = map2;
    }

    public final void zza(zzfix zzfixVar) throws Exception {
        for (zzfiv zzfivVar : zzfixVar.zzb.zzc) {
            if (this.zza.containsKey(zzfivVar.zza)) {
                ((zzcvf) this.zza.get(zzfivVar.zza)).zza(zzfivVar.zzb);
            } else if (this.zzb.containsKey(zzfivVar.zza)) {
                zzcve zzcveVar = (zzcve) this.zzb.get(zzfivVar.zza);
                JSONObject jSONObject = zzfivVar.zzb;
                HashMap hashMap = new HashMap();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    String optString = jSONObject.optString(next);
                    if (optString != null) {
                        hashMap.put(next, optString);
                    }
                }
                zzcveVar.zza(hashMap);
            }
        }
    }
}
