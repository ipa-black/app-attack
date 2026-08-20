package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcej implements zzgen {
    final /* synthetic */ zzgfb zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcej(zzcek zzcekVar, zzgfb zzgfbVar) {
        this.zza = zzgfbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        List list;
        list = zzcek.zzc;
        list.remove(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        List list;
        Void r2 = (Void) obj;
        list = zzcek.zzc;
        list.remove(this.zza);
    }
}
