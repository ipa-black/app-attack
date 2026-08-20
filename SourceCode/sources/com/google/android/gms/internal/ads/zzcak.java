package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcak extends zzcae {
    final /* synthetic */ List zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcak(zzcan zzcanVar, List list) {
        this.zza = list;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zze(String str) {
        zzcho.zzg("Error recording impression urls: ".concat(String.valueOf(str)));
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzf(List list) {
        zzcho.zzi("Recorded impression urls: ".concat(this.zza.toString()));
    }
}
