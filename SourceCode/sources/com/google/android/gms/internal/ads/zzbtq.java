package com.google.android.gms.internal.ads;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbtq implements zzbqd {
    final /* synthetic */ zzbue zza;
    final /* synthetic */ zzbta zzb;
    final /* synthetic */ zzbuf zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbtq(zzbuf zzbufVar, zzbue zzbueVar, zzbta zzbtaVar) {
        this.zzc = zzbufVar;
        this.zza = zzbueVar;
        this.zzb = zzbtaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        Object obj2;
        zzbug zzbugVar = (zzbug) obj;
        obj2 = this.zzc.zza;
        synchronized (obj2) {
            if (this.zza.zze() != -1 && this.zza.zze() != 1) {
                this.zzc.zzi = 0;
                zzbta zzbtaVar = this.zzb;
                zzbtaVar.zzq("/log", zzbqc.zzg);
                zzbtaVar.zzq("/result", zzbqc.zzo);
                this.zza.zzh(this.zzb);
                this.zzc.zzh = this.zza;
                com.google.android.gms.ads.internal.util.zze.zza("Successfully loaded JS Engine.");
            }
        }
    }
}
