package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbwn implements InitializationCompleteCallback {
    final /* synthetic */ zzbsd zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbwn(zzbwt zzbwtVar, zzbsd zzbsdVar) {
        this.zza = zzbsdVar;
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationFailed(String str) {
        try {
            this.zza.zze(str);
        } catch (RemoteException e2) {
            zzcho.zzh("", e2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationSucceeded() {
        try {
            this.zza.zzf();
        } catch (RemoteException e2) {
            zzcho.zzh("", e2);
        }
    }
}
