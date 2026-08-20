package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbve implements zzbqq {
    final /* synthetic */ zzbvf zza;
    private final zzcig zzb;

    public zzbve(zzbvf zzbvfVar, zzcig zzcigVar) {
        this.zza = zzbvfVar;
        this.zzb = zzcigVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqq
    public final void zza(String str) {
        try {
            if (str == null) {
                this.zzb.zze(new zzbui());
            } else {
                this.zzb.zze(new zzbui(str));
            }
        } catch (IllegalStateException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqq
    public final void zzb(JSONObject jSONObject) {
        try {
            this.zzb.zzd(jSONObject);
        } catch (IllegalStateException unused) {
        } catch (JSONException e2) {
            this.zzb.zze(e2);
        }
    }
}
