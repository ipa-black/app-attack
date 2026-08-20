package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcta implements zzfgq {
    private final zzcre zza;
    private Context zzb;
    private String zzc;
    private com.google.android.gms.ads.internal.client.zzq zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcta(zzcre zzcreVar, zzcsz zzcszVar) {
        this.zza = zzcreVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfgq
    public final /* synthetic */ zzfgq zza(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        zzqVar.getClass();
        this.zzd = zzqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgq
    public final /* synthetic */ zzfgq zzb(String str) {
        str.getClass();
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgq
    public final /* synthetic */ zzfgq zzc(Context context) {
        context.getClass();
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgq
    public final zzfgr zzd() {
        zzhex.zzc(this.zzb, Context.class);
        zzhex.zzc(this.zzc, String.class);
        zzhex.zzc(this.zzd, com.google.android.gms.ads.internal.client.zzq.class);
        return new zzctc(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}
