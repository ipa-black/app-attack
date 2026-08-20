package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfwz extends zzfwv {
    final /* synthetic */ zzfxf zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfwz(zzfxf zzfxfVar) {
        this.zza = zzfxfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwv
    public final void zza() {
        IInterface iInterface;
        zzfwu zzfwuVar;
        Context context;
        ServiceConnection serviceConnection;
        zzfxf zzfxfVar = this.zza;
        iInterface = zzfxfVar.zzn;
        if (iInterface != null) {
            zzfwuVar = zzfxfVar.zzc;
            zzfwuVar.zzd("Unbind from service.", new Object[0]);
            zzfxf zzfxfVar2 = this.zza;
            context = zzfxfVar2.zzb;
            serviceConnection = zzfxfVar2.zzm;
            context.unbindService(serviceConnection);
            this.zza.zzh = false;
            this.zza.zzn = null;
            this.zza.zzm = null;
        }
        this.zza.zzt();
    }
}
