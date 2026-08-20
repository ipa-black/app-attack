package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcdw {
    public static final zzcdk zza(Context context, String str, zzbvt zzbvtVar) {
        try {
            IBinder zze = ((zzcdo) zzchs.zzb(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", new zzchq() { // from class: com.google.android.gms.internal.ads.zzcdv
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzchq
                public final Object zza(Object obj) {
                    if (obj == 0) {
                        return null;
                    }
                    IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
                    return queryLocalInterface instanceof zzcdo ? (zzcdo) queryLocalInterface : new zzcdo(obj);
                }
            })).zze(ObjectWrapper.wrap(context), str, zzbvtVar, 224400000);
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            return queryLocalInterface instanceof zzcdk ? (zzcdk) queryLocalInterface : new zzcdi(zze);
        } catch (RemoteException | zzchr e2) {
            zzcho.zzl("#007 Could not call remote method.", e2);
            return null;
        }
    }
}
