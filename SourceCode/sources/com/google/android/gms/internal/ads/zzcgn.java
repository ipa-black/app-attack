package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcgn implements Runnable {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzcig zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcgn(zzcgo zzcgoVar, Context context, zzcig zzcigVar) {
        this.zza = context;
        this.zzb = zzcigVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzb.zzd(AdvertisingIdClient.getAdvertisingIdInfo(this.zza));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e2) {
            this.zzb.zze(e2);
            zzcho.zzh("Exception while getting advertising Id info", e2);
        }
    }
}
