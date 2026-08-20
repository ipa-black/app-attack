package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzepp implements zzeks {
    private final zzeqt zza;

    public zzepp(zzeqt zzeqtVar) {
        this.zza = zzeqtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeks
    public final zzekt zza(String str, JSONObject jSONObject) throws zzfjl {
        zzbxq zza = this.zza.zza(str);
        if (zza == null) {
            return null;
        }
        return new zzekt(zza, new zzems(), str);
    }
}
