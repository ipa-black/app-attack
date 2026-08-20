package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzbvt;
import com.google.android.gms.internal.ads.zzcat;
import com.google.android.gms.internal.ads.zzchq;
import com.google.android.gms.internal.ads.zzchr;
import com.google.android.gms.internal.ads.zzchs;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzac extends zzax {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzbvt zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzac(zzaw zzawVar, Context context, zzbvt zzbvtVar) {
        this.zza = context;
        this.zzb = zzbvtVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    protected final /* bridge */ /* synthetic */ Object zza() {
        zzaw.zzt(this.zza, "out_of_context_tester");
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zzb(zzce zzceVar) throws RemoteException {
        IObjectWrapper wrap = ObjectWrapper.wrap(this.zza);
        zzbjj.zzc(this.zza);
        if (((Boolean) zzba.zzc().zzb(zzbjj.zziu)).booleanValue()) {
            return zzceVar.zzh(wrap, this.zzb, 224400000);
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zzc() throws RemoteException {
        IObjectWrapper wrap = ObjectWrapper.wrap(this.zza);
        zzbjj.zzc(this.zza);
        if (((Boolean) zzba.zzc().zzb(zzbjj.zziu)).booleanValue()) {
            try {
                return ((zzdk) zzchs.zzb(this.zza, "com.google.android.gms.ads.DynamiteOutOfContextTesterCreatorImpl", new zzchq() { // from class: com.google.android.gms.ads.internal.client.zzab
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // com.google.android.gms.internal.ads.zzchq
                    public final Object zza(Object obj) {
                        if (obj == 0) {
                            return null;
                        }
                        IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTesterCreator");
                        return queryLocalInterface instanceof zzdk ? (zzdk) queryLocalInterface : new zzdk(obj);
                    }
                })).zze(wrap, this.zzb, 224400000);
            } catch (RemoteException | zzchr | NullPointerException e2) {
                zzcat.zza(this.zza).zzf(e2, "ClientApiBroker.getOutOfContextTester");
                return null;
            }
        }
        return null;
    }
}
