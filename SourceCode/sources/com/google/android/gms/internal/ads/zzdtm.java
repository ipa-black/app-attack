package com.google.android.gms.internal.ads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdtm {
    private final Executor zza;
    private final zzdth zzb;

    public zzdtm(Executor executor, zzdth zzdthVar) {
        this.zza = executor;
        this.zzb = zzdthVar;
    }

    public final zzgfb zza(JSONObject jSONObject, String str) {
        zzgfb zzi;
        JSONArray optJSONArray = jSONObject.optJSONArray("custom_assets");
        if (optJSONArray == null) {
            return zzger.zzi(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject == null) {
                zzi = zzger.zzi(null);
            } else {
                final String optString = optJSONObject.optString("name");
                if (optString == null) {
                    zzi = zzger.zzi(null);
                } else {
                    String optString2 = optJSONObject.optString(SessionDescription.ATTR_TYPE);
                    if (TypedValues.Custom.S_STRING.equals(optString2)) {
                        zzi = zzger.zzi(new zzdtl(optString, optJSONObject.optString("string_value")));
                    } else if ("image".equals(optString2)) {
                        zzi = zzger.zzm(this.zzb.zze(optJSONObject, "image_value"), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzdtj
                            @Override // com.google.android.gms.internal.ads.zzfxt
                            public final Object apply(Object obj) {
                                return new zzdtl(optString, (zzblx) obj);
                            }
                        }, this.zza);
                    } else {
                        zzi = zzger.zzi(null);
                    }
                }
            }
            arrayList.add(zzi);
        }
        return zzger.zzm(zzger.zze(arrayList), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzdtk
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                ArrayList arrayList2 = new ArrayList();
                for (zzdtl zzdtlVar : (List) obj) {
                    if (zzdtlVar != null) {
                        arrayList2.add(zzdtlVar);
                    }
                }
                return arrayList2;
            }
        }, this.zza);
    }
}
