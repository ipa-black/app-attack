package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeoz implements zzeks {
    private final Map zza = new HashMap();
    private final zzdxc zzb;

    public zzeoz(zzdxc zzdxcVar) {
        this.zzb = zzdxcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeks
    public final zzekt zza(String str, JSONObject jSONObject) throws zzfjl {
        zzekt zzektVar;
        synchronized (this) {
            zzektVar = (zzekt) this.zza.get(str);
            if (zzektVar == null) {
                zzektVar = new zzekt(this.zzb.zzc(str, jSONObject), new zzemt(), str);
                this.zza.put(str, zzektVar);
            }
        }
        return zzektVar;
    }
}
