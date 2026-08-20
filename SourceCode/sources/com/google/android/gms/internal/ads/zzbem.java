package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbem extends zzcig {
    final /* synthetic */ zzbes zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbem(zzbes zzbesVar) {
        this.zza = zzbesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcig, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        zzbes.zze(this.zza);
        return super.cancel(z);
    }
}
