package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzffo {
    public static void zza(AtomicReference atomicReference, zzffn zzffnVar) {
        Object obj = atomicReference.get();
        if (obj == null) {
            return;
        }
        try {
            zzffnVar.zza(obj);
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzl("#007 Could not call remote method.", e2);
        } catch (NullPointerException e3) {
            com.google.android.gms.ads.internal.util.zze.zzk("NullPointerException occurs when invoking a method from a delegating listener.", e3);
        }
    }
}
