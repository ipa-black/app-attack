package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbeb implements zzbcq {
    final /* synthetic */ zzbee zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbeb(zzbee zzbeeVar) {
        this.zza = zzbeeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbcq
    public final void zza(boolean z) {
        if (z) {
            this.zza.zzl();
        } else {
            zzbee.zzh(this.zza);
        }
    }
}
