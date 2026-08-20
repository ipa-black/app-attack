package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbov implements zzbqd {
    private final zzbow zza;

    public zzbov(zzbow zzbowVar) {
        this.zza = zzbowVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final void zza(Object obj, Map map) {
        if (this.zza == null) {
            return;
        }
        String str = (String) map.get("name");
        if (str == null) {
            com.google.android.gms.ads.internal.util.zze.zzi("Ad metadata with no name parameter.");
            str = "";
        }
        Bundle bundle = null;
        if (map.containsKey("info")) {
            try {
                bundle = com.google.android.gms.ads.internal.util.zzbu.zza(new JSONObject((String) map.get("info")));
            } catch (JSONException e2) {
                com.google.android.gms.ads.internal.util.zze.zzh("Failed to convert ad metadata to JSON.", e2);
            }
        }
        if (bundle == null) {
            com.google.android.gms.ads.internal.util.zze.zzg("Failed to convert ad metadata to Bundle.");
        } else {
            this.zza.zza(str, bundle);
        }
    }
}
