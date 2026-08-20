package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzduk implements zzbly {
    final /* synthetic */ zzdul zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzduk(zzdul zzdulVar) {
        this.zza = zzdulVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbly
    public final JSONObject zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbly
    public final JSONObject zzb() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbly
    public final void zzc() {
        zzdqb zzdqbVar;
        zzdqb zzdqbVar2;
        zzdul zzdulVar = this.zza;
        zzdqbVar = zzdulVar.zzd;
        if (zzdqbVar != null) {
            zzdqbVar2 = zzdulVar.zzd;
            zzdqbVar2.zzB("_videoMediaView");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbly
    public final void zzd(MotionEvent motionEvent) {
    }
}
