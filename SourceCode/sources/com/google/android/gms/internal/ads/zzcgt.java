package com.google.android.gms.internal.ads;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcgt extends com.google.android.gms.ads.internal.util.zzb {
    final /* synthetic */ zzcgx zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcgt(zzcgx zzcgxVar) {
        this.zza = zzcgxVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        Context context;
        zzchu zzchuVar;
        Object obj;
        zzbjo zzbjoVar;
        zzcgx zzcgxVar = this.zza;
        context = zzcgxVar.zze;
        zzchuVar = zzcgxVar.zzf;
        zzbjm zzbjmVar = new zzbjm(context, zzchuVar.zza);
        obj = this.zza.zza;
        synchronized (obj) {
            try {
                com.google.android.gms.ads.internal.zzt.zze();
                zzbjoVar = this.zza.zzh;
                zzbjp.zza(zzbjoVar, zzbjmVar);
            } catch (IllegalArgumentException e2) {
                com.google.android.gms.ads.internal.util.zze.zzk("Cannot config CSI reporter.", e2);
            }
        }
    }
}
