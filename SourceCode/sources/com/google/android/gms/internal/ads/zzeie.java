package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeie {
    private final zzccm zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeie(zzccm zzccmVar) {
        this.zza = zzccmVar;
    }

    public static void zza(Map map, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("pii");
        if (optJSONObject != null) {
            if (!TextUtils.isEmpty(optJSONObject.optString("doritos", ""))) {
                map.put("x-afma-drt-cookie", optJSONObject.optString("doritos", ""));
            }
            if (TextUtils.isEmpty(optJSONObject.optString("doritos_v2", ""))) {
                return;
            }
            map.put("x-afma-drt-v2-cookie", optJSONObject.optString("doritos_v2", ""));
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("DSID signal does not exist.");
    }

    public final void zzb() {
        zzcie.zza(this.zza.zza(), "persistFlags");
    }
}
