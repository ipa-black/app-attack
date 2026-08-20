package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcte implements zzfie {
    private final zzcre zza;
    private Context zzb;
    private String zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcte(zzcre zzcreVar, zzctd zzctdVar) {
        this.zza = zzcreVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfie
    public final /* synthetic */ zzfie zza(String str) {
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfie
    public final /* synthetic */ zzfie zzb(Context context) {
        context.getClass();
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfie
    public final zzfif zzc() {
        zzhex.zzc(this.zzb, Context.class);
        return new zzctg(this.zza, this.zzb, this.zzc, null);
    }
}
