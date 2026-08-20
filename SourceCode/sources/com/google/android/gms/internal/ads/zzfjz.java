package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfjz {
    private static zzfjz zza;
    private final Context zzb;
    private final com.google.android.gms.ads.internal.client.zzcl zzc;
    private final AtomicReference zzd = new AtomicReference();

    zzfjz(Context context, com.google.android.gms.ads.internal.client.zzcl zzclVar) {
        this.zzb = context;
        this.zzc = zzclVar;
    }

    static com.google.android.gms.ads.internal.client.zzcl zza(Context context) {
        try {
            return com.google.android.gms.ads.internal.client.zzck.asInterface((IBinder) context.getClassLoader().loadClass("com.google.android.gms.ads.internal.client.LiteSdkInfo").getConstructor(Context.class).newInstance(context));
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            com.google.android.gms.ads.internal.util.zze.zzh("Failed to retrieve lite SDK info.", e2);
            return null;
        }
    }

    public static zzfjz zzd(Context context) {
        synchronized (zzfjz.class) {
            zzfjz zzfjzVar = zza;
            if (zzfjzVar != null) {
                return zzfjzVar;
            }
            Context applicationContext = context.getApplicationContext();
            long longValue = ((Long) zzblb.zzb.zze()).longValue();
            com.google.android.gms.ads.internal.client.zzcl zzclVar = null;
            if (longValue > 0 && longValue <= 224400003) {
                zzclVar = zza(applicationContext);
            }
            zzfjz zzfjzVar2 = new zzfjz(applicationContext, zzclVar);
            zza = zzfjzVar2;
            return zzfjzVar2;
        }
    }

    public final zzbvt zzb() {
        return (zzbvt) this.zzd.get();
    }

    public final zzchu zzc(int i, boolean z, int i2) {
        com.google.android.gms.ads.internal.zzt.zzp();
        boolean zzA = com.google.android.gms.ads.internal.util.zzs.zzA(this.zzb);
        zzchu zzchuVar = new zzchu(224400000, i2, true, zzA);
        if (((Boolean) zzblb.zzc.zze()).booleanValue()) {
            com.google.android.gms.ads.internal.client.zzcl zzclVar = this.zzc;
            com.google.android.gms.ads.internal.client.zzen zzenVar = null;
            if (zzclVar != null) {
                try {
                    zzenVar = zzclVar.getLiteSdkVersion();
                } catch (RemoteException unused) {
                }
            }
            return zzenVar == null ? zzchuVar : new zzchu(224400000, zzenVar.zza(), true, zzA);
        }
        return zzchuVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(com.google.android.gms.internal.ads.zzbvt r4) {
        /*
            r3 = this;
            com.google.android.gms.internal.ads.zzbkl r0 = com.google.android.gms.internal.ads.zzblb.zza
            java.lang.Object r0 = r0.zze()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 0
            if (r0 == 0) goto L23
            com.google.android.gms.ads.internal.client.zzcl r0 = r3.zzc
            if (r0 != 0) goto L15
        L13:
            r0 = r1
            goto L19
        L15:
            com.google.android.gms.internal.ads.zzbvt r0 = r0.getAdapterCreator()     // Catch: android.os.RemoteException -> L13
        L19:
            java.util.concurrent.atomic.AtomicReference r2 = r3.zzd
            if (r0 != 0) goto L1e
            goto L1f
        L1e:
            r4 = r0
        L1f:
            com.google.android.gms.internal.ads.zzfjy.zza(r2, r1, r4)
            return
        L23:
            java.util.concurrent.atomic.AtomicReference r0 = r3.zzd
            com.google.android.gms.internal.ads.zzfjy.zza(r0, r1, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfjz.zze(com.google.android.gms.internal.ads.zzbvt):void");
    }
}
