package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcsq implements zzeap {
    private final zzcre zza;
    private Context zzb;
    private zzbra zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcsq(zzcre zzcreVar, zzcsp zzcspVar) {
        this.zza = zzcreVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeap
    public final /* synthetic */ zzeap zza(zzbra zzbraVar) {
        zzbraVar.getClass();
        this.zzc = zzbraVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeap
    public final /* synthetic */ zzeap zzb(Context context) {
        context.getClass();
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeap
    public final zzeaq zzc() {
        zzhex.zzc(this.zzb, Context.class);
        zzhex.zzc(this.zzc, zzbra.class);
        return new zzcss(this.zza, this.zzb, this.zzc, null);
    }
}
