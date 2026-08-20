package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzdpe implements zzbqd {
    private final WeakReference zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdpe(zzdpf zzdpfVar, zzdpd zzdpdVar) {
        this.zza = new WeakReference(zzdpfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final void zza(Object obj, Map map) {
        zzdpf zzdpfVar = (zzdpf) this.zza.get();
        if (zzdpfVar == null) {
            return;
        }
        zzdpf.zzc(zzdpfVar).zza();
    }
}
