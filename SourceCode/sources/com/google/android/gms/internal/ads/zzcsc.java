package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcsc implements zzfex {
    private final zzcre zza;
    private Context zzb;
    private String zzc;
    private com.google.android.gms.ads.internal.client.zzq zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcsc(zzcre zzcreVar, zzcsb zzcsbVar) {
        this.zza = zzcreVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfex
    public final /* synthetic */ zzfex zza(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        zzqVar.getClass();
        this.zzd = zzqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfex
    public final /* synthetic */ zzfex zzb(String str) {
        str.getClass();
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfex
    public final /* synthetic */ zzfex zzc(Context context) {
        context.getClass();
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfex
    public final zzfey zzd() {
        zzhex.zzc(this.zzb, Context.class);
        zzhex.zzc(this.zzc, String.class);
        zzhex.zzc(this.zzd, com.google.android.gms.ads.internal.client.zzq.class);
        return new zzcse(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}
