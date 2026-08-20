package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzaki;
import com.google.android.gms.internal.ads.zzakn;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzbh implements zzaki {
    final /* synthetic */ String zza;
    final /* synthetic */ zzbl zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbh(zzbo zzboVar, String str, zzbl zzblVar) {
        this.zza = str;
        this.zzb = zzblVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(zzakn zzaknVar) {
        String str = this.zza;
        String zzaknVar2 = zzaknVar.toString();
        zze.zzj("Failed to load URL: " + str + "\n" + zzaknVar2);
        this.zzb.zza((Object) null);
    }
}
