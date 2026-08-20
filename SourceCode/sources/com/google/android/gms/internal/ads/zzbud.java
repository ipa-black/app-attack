package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbud implements zzcik {
    final /* synthetic */ zzbue zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbud(zzbue zzbueVar) {
        this.zza = zzbueVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcik
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        final zzbta zzbtaVar = (zzbta) obj;
        zzcib.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbuc
            @Override // java.lang.Runnable
            public final void run() {
                zzbta zzbtaVar2 = zzbtaVar;
                zzbtaVar2.zzr("/result", zzbqc.zzo);
                zzbtaVar2.zzc();
            }
        });
    }
}
