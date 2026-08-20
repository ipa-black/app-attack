package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzddq implements zzdgb, zzdfi {
    private final Context zza;
    private final zzfil zzb;
    private final zzbzv zzc;

    public zzddq(Context context, zzfil zzfilVar, zzbzv zzbzvVar, byte[] bArr) {
        this.zza = context;
        this.zzb = zzfilVar;
        this.zzc = zzbzvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final void zzbr(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final void zzbt(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final void zzbu(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void zzn() {
        zzbzw zzbzwVar = this.zzb.zzae;
        if (zzbzwVar == null || !zzbzwVar.zza) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (this.zzb.zzae.zzb.isEmpty()) {
            return;
        }
        arrayList.add(this.zzb.zzae.zzb);
    }
}
