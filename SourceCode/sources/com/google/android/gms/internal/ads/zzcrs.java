package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcrs implements zzfdj {
    private final zzcre zza;
    private Context zzb;
    private String zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcrs(zzcre zzcreVar, zzcrr zzcrrVar) {
        this.zza = zzcreVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfdj
    public final /* synthetic */ zzfdj zza(String str) {
        str.getClass();
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfdj
    public final /* synthetic */ zzfdj zzb(Context context) {
        context.getClass();
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfdj
    public final zzfdk zzc() {
        zzhex.zzc(this.zzb, Context.class);
        zzhex.zzc(this.zzc, String.class);
        return new zzcru(this.zza, this.zzb, this.zzc, null);
    }
}
