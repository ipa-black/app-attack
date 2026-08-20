package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzdvd implements zzbqd {
    final /* synthetic */ zzdve zza;
    private final WeakReference zzb;
    private final String zzc;
    private final zzbqd zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdvd(zzdve zzdveVar, WeakReference weakReference, String str, zzbqd zzbqdVar, zzdvc zzdvcVar) {
        this.zza = zzdveVar;
        this.zzb = weakReference;
        this.zzc = str;
        this.zzd = zzbqdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final void zza(Object obj, Map map) {
        Object obj2 = this.zzb.get();
        if (obj2 == null) {
            this.zza.zzk(this.zzc, this);
        } else {
            this.zzd.zza(obj2, map);
        }
    }
}
