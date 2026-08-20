package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdwu implements zzdfi {
    private final zzcno zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdwu(zzcno zzcnoVar) {
        this.zza = zzcnoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final void zzbr(Context context) {
        zzcno zzcnoVar = this.zza;
        if (zzcnoVar != null) {
            zzcnoVar.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final void zzbt(Context context) {
        zzcno zzcnoVar = this.zza;
        if (zzcnoVar != null) {
            zzcnoVar.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final void zzbu(Context context) {
        zzcno zzcnoVar = this.zza;
        if (zzcnoVar != null) {
            zzcnoVar.onResume();
        }
    }
}
