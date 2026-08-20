package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdpc implements zzbqd {
    private final WeakReference zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdpc(zzdpf zzdpfVar, zzdpb zzdpbVar) {
        this.zza = new WeakReference(zzdpfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final void zza(Object obj, Map map) {
        zzdel zzdelVar;
        zzdma zzdmaVar;
        zzdma zzdmaVar2;
        zzdpf zzdpfVar = (zzdpf) this.zza.get();
        if (zzdpfVar == null) {
            return;
        }
        zzdelVar = zzdpfVar.zzh;
        zzdelVar.onAdClicked();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zziW)).booleanValue()) {
            zzdmaVar = zzdpfVar.zzi;
            zzdmaVar.zzq();
            if (TextUtils.isEmpty((CharSequence) map.get("sccg"))) {
                return;
            }
            zzdmaVar2 = zzdpfVar.zzi;
            zzdmaVar2.zzr();
        }
    }
}
