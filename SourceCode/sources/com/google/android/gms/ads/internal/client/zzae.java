package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbvt;
import com.google.android.gms.internal.ads.zzcgh;
import com.google.android.gms.internal.ads.zzcgi;
import com.google.android.gms.internal.ads.zzchq;
import com.google.android.gms.internal.ads.zzchr;
import com.google.android.gms.internal.ads.zzchs;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzae extends zzax {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzbvt zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzae(zzaw zzawVar, Context context, zzbvt zzbvtVar) {
        this.zza = context;
        this.zzb = zzbvtVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    protected final /* bridge */ /* synthetic */ Object zza() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zzb(zzce zzceVar) throws RemoteException {
        return zzceVar.zzp(ObjectWrapper.wrap(this.zza), this.zzb, 224400000);
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zzc() throws RemoteException {
        try {
            return ((zzcgi) zzchs.zzb(this.zza, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", new zzchq() { // from class: com.google.android.gms.ads.internal.client.zzad
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzchq
                public final Object zza(Object obj) {
                    return zzcgh.zzb(obj);
                }
            })).zze(ObjectWrapper.wrap(this.zza), this.zzb, 224400000);
        } catch (RemoteException | zzchr | NullPointerException unused) {
            return null;
        }
    }
}
