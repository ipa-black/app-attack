package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IInterface;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbls {
    private final Context zza;

    public zzbls(Context context) {
        this.zza = context;
    }

    public final void zza(zzcba zzcbaVar) {
        try {
            ((zzblt) zzchs.zzb(this.zza, "com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy", new zzchq() { // from class: com.google.android.gms.internal.ads.zzblr
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzchq
                public final Object zza(Object obj) {
                    if (obj == 0) {
                        return null;
                    }
                    IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.flags.IFlagRetrieverSupplierProxy");
                    return queryLocalInterface instanceof zzblt ? (zzblt) queryLocalInterface : new zzblt(obj);
                }
            })).zze(zzcbaVar);
        } catch (RemoteException e2) {
            zzcho.zzj("Error calling setFlagsAccessedBeforeInitializedListener: ".concat(String.valueOf(e2.getMessage())));
        } catch (zzchr e3) {
            zzcho.zzj("Could not load com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy:".concat(String.valueOf(e3.getMessage())));
        }
    }
}
