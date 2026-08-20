package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeaw implements zzeag {
    private final long zza;
    private final zzeal zzb;
    private final zzfic zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeaw(long j, Context context, zzeal zzealVar, zzcpj zzcpjVar, String str) {
        this.zza = j;
        this.zzb = zzealVar;
        zzfie zzv = zzcpjVar.zzv();
        zzv.zzb(context);
        zzv.zza(str);
        this.zzc = zzv.zzc().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    public final void zzb(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        try {
            this.zzc.zzf(zzlVar, new zzeau(this));
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzl("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    public final void zzc() {
        try {
            this.zzc.zzk(new zzeav(this));
            this.zzc.zzm(ObjectWrapper.wrap(null));
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzl("#007 Could not call remote method.", e2);
        }
    }
}
