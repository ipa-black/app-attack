package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final /* synthetic */ class zzbsx {
    public static void zza(zzbsy zzbsyVar, String str, Map map) {
        try {
            zzbsyVar.zze(str, com.google.android.gms.ads.internal.client.zzay.zzb().zzj(map));
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.zzj("Could not convert parameters to JSON.");
        }
    }

    public static void zzb(zzbsy zzbsyVar, String str, JSONObject jSONObject) {
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(jSONObject2);
        sb.append(");");
        com.google.android.gms.ads.internal.util.zze.zze("Dispatching AFMA event: ".concat(sb.toString()));
        zzbsyVar.zza(sb.toString());
    }

    public static void zzc(zzbsy zzbsyVar, String str, String str2) {
        zzbsyVar.zza(str + "(" + str2 + ");");
    }

    public static void zzd(zzbsy zzbsyVar, String str, JSONObject jSONObject) {
        zzbsyVar.zzb(str, jSONObject.toString());
    }
}
