package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbqp implements zzbqq {
    final /* synthetic */ zzcig zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbqp(zzbqr zzbqrVar, zzcig zzcigVar) {
        this.zza = zzcigVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqq
    public final void zza(String str) {
        this.zza.zze(new zzbui(str));
    }

    @Override // com.google.android.gms.internal.ads.zzbqq
    public final void zzb(JSONObject jSONObject) {
        this.zza.zzd(jSONObject);
    }
}
