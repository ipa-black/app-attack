package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzemg extends zzbxd {
    final /* synthetic */ zzemh zza;
    private final zzekt zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzemg(zzemh zzemhVar, zzekt zzektVar, zzemf zzemfVar) {
        this.zza = zzemhVar;
        this.zzb = zzektVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxe
    public final void zze(String str) throws RemoteException {
        ((zzems) this.zzb.zzc).zzi(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbxe
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        ((zzems) this.zzb.zzc).zzh(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbxe
    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzemh.zze(this.zza, (View) ObjectWrapper.unwrap(iObjectWrapper));
        ((zzems) this.zzb.zzc).zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzbxe
    public final void zzh(zzbwc zzbwcVar) throws RemoteException {
        zzemh.zzd(this.zza, zzbwcVar);
        ((zzems) this.zzb.zzc).zzo();
    }
}
