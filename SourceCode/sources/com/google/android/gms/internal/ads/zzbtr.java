package com.google.android.gms.internal.ads;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbtr implements zzbqd {
    final /* synthetic */ zzbta zza;
    final /* synthetic */ com.google.android.gms.ads.internal.util.zzca zzb;
    final /* synthetic */ zzbuf zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbtr(zzbuf zzbufVar, zzapj zzapjVar, zzbta zzbtaVar, com.google.android.gms.ads.internal.util.zzca zzcaVar) {
        this.zzc = zzbufVar;
        this.zza = zzbtaVar;
        this.zzb = zzcaVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzbqd, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzbqd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        Object obj2;
        int i;
        zzbug zzbugVar = (zzbug) obj;
        obj2 = this.zzc.zza;
        synchronized (obj2) {
            com.google.android.gms.ads.internal.util.zze.zzi("JS Engine is requesting an update");
            i = this.zzc.zzi;
            if (i == 0) {
                com.google.android.gms.ads.internal.util.zze.zzi("Starting reload.");
                this.zzc.zzi = 2;
                this.zzc.zzd(null);
            }
            this.zza.zzr("/requestReload", this.zzb.zza());
        }
    }
}
