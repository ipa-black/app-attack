package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzehk implements zzbum {
    @Override // com.google.android.gms.internal.ads.zzbum
    public final /* bridge */ /* synthetic */ JSONObject zzb(Object obj) throws JSONException {
        zzehl zzehlVar = (zzehl) obj;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziq)).booleanValue()) {
            jSONObject2.put("ad_request_url", zzehlVar.zzd.zze());
            jSONObject2.put("ad_request_post_body", zzehlVar.zzd.zzd());
        }
        jSONObject2.put("base_url", zzehlVar.zzd.zzb());
        jSONObject2.put("signals", zzehlVar.zzc);
        jSONObject3.put(TtmlNode.TAG_BODY, zzehlVar.zzb.zzc);
        jSONObject3.put("headers", com.google.android.gms.ads.internal.client.zzay.zzb().zzj(zzehlVar.zzb.zzb));
        jSONObject3.put("response_code", zzehlVar.zzb.zza);
        jSONObject3.put("latency", zzehlVar.zzb.zzd);
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", zzehlVar.zzd.zzg());
        return jSONObject;
    }
}
