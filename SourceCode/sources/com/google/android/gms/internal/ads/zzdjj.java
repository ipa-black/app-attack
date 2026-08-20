package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdjj implements zzdhi {
    private int zza = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzba)).intValue();

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final synchronized void zzb(zzfix zzfixVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbb)).booleanValue()) {
            try {
                this.zza = zzfixVar.zzb.zzb.zzc;
            } catch (NullPointerException unused) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzbG(zzccb zzccbVar) {
    }

    public final synchronized int zzc() {
        return this.zza;
    }
}
