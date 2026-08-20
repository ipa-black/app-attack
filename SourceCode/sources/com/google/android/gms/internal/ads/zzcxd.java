package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcxd implements zzhep {
    private final zzhfc zza;

    public zzcxd(zzhfc zzhfcVar) {
        this.zza = zzhfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        try {
            return new JSONObject(((zzdbd) this.zza).zza().zzA);
        } catch (JSONException unused) {
            return null;
        }
    }
}
