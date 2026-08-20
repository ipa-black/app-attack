package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeas implements zzeag {
    private final long zza;
    private final zzesj zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeas(long j, Context context, zzeal zzealVar, zzcpj zzcpjVar, String str) {
        this.zza = j;
        zzfgq zzu = zzcpjVar.zzu();
        zzu.zzc(context);
        zzu.zza(new com.google.android.gms.ads.internal.client.zzq());
        zzu.zzb(str);
        zzesj zza = zzu.zzd().zza();
        this.zzb = zza;
        zza.zzD(new zzear(this, zzealVar));
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    public final void zza() {
        this.zzb.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    public final void zzb(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        this.zzb.zzaa(zzlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    public final void zzc() {
        this.zzb.zzW(ObjectWrapper.wrap(null));
    }
}
