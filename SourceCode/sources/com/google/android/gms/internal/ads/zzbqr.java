package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzbqr implements zzbqd {
    private final Object zza = new Object();
    private final Map zzb = new HashMap();

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final void zza(Object obj, Map map) {
        String str = (String) map.get("id");
        String str2 = (String) map.get("fail");
        String str3 = (String) map.get("fail_reason");
        String str4 = (String) map.get("fail_stack");
        String str5 = (String) map.get(IronSourceConstants.EVENTS_RESULT);
        if (true == TextUtils.isEmpty(str4)) {
            str3 = "Unknown Fail Reason.";
        }
        String concat = TextUtils.isEmpty(str4) ? "" : "\n".concat(String.valueOf(str4));
        synchronized (this.zza) {
            zzbqq zzbqqVar = (zzbqq) this.zzb.remove(str);
            if (zzbqqVar == null) {
                com.google.android.gms.ads.internal.util.zze.zzj("Received result for unexpected method invocation: " + str);
            } else if (!TextUtils.isEmpty(str2)) {
                zzbqqVar.zza(str3 + concat);
            } else if (str5 == null) {
                zzbqqVar.zzb(null);
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(str5);
                    if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                        String jSONObject2 = jSONObject.toString(2);
                        com.google.android.gms.ads.internal.util.zze.zza("Result GMSG: " + jSONObject2);
                    }
                    zzbqqVar.zzb(jSONObject);
                } catch (JSONException e2) {
                    zzbqqVar.zza(e2.getMessage());
                }
            }
        }
    }

    public final zzgfb zzb(zzbtj zzbtjVar, String str, JSONObject jSONObject) {
        zzcig zzcigVar = new zzcig();
        com.google.android.gms.ads.internal.zzt.zzp();
        String uuid = UUID.randomUUID().toString();
        zzc(uuid, new zzbqp(this, zzcigVar));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", uuid);
            jSONObject2.put("args", jSONObject);
            zzbtjVar.zzl(str, jSONObject2);
        } catch (Exception e2) {
            zzcigVar.zze(e2);
        }
        return zzcigVar;
    }

    public final void zzc(String str, zzbqq zzbqqVar) {
        synchronized (this.zza) {
            this.zzb.put(str, zzbqqVar);
        }
    }
}
