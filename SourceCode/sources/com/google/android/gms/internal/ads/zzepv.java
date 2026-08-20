package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdError;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzepv implements zzdfw {
    boolean zza = false;
    final /* synthetic */ zzekt zzb;
    final /* synthetic */ zzcig zzc;
    final /* synthetic */ zzepw zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzepv(zzepw zzepwVar, zzekt zzektVar, zzcig zzcigVar) {
        this.zzd = zzepwVar;
        this.zzb = zzektVar;
        this.zzc = zzcigVar;
    }

    private final synchronized void zze(com.google.android.gms.ads.internal.client.zze zzeVar) {
        int i = 1;
        if (true == ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzeT)).booleanValue()) {
            i = 3;
        }
        this.zzc.zze(new zzeku(i, zzeVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdfw
    public final synchronized void zza(int i) {
        if (this.zza) {
            return;
        }
        this.zza = true;
        zze(new com.google.android.gms.ads.internal.client.zze(i, zzepw.zze(this.zzb.zza, i), AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzdfw
    public final synchronized void zzb(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (this.zza) {
            return;
        }
        this.zza = true;
        zze(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdfw
    public final synchronized void zzc(int i, String str) {
        if (this.zza) {
            return;
        }
        this.zza = true;
        if (str == null) {
            str = zzepw.zze(this.zzb.zza, i);
        }
        zze(new com.google.android.gms.ads.internal.client.zze(i, str, AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzdfw
    public final synchronized void zzd() {
        this.zzc.zzd(null);
    }
}
