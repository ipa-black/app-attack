package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcme extends zzcma {
    public zzcme(zzcjx zzcjxVar) {
        super(zzcjxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcma
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzcma
    public final boolean zzq(String str) {
        String zze = zzchh.zze(str);
        zzcjx zzcjxVar = (zzcjx) this.zzc.get();
        if (zzcjxVar != null && zze != null) {
            zzcjxVar.zzv(zze, this);
        }
        com.google.android.gms.ads.internal.util.zze.zzj("VideoStreamNoopCache is doing nothing.");
        zzc(str, zze, "noop", "Noop cache is a noop.");
        return false;
    }
}
