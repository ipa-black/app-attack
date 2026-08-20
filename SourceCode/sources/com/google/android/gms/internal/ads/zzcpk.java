package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcpk {
    private zzchu zza;
    private Context zzb;
    private WeakReference zzc;

    public final zzcpk zzc(Context context) {
        this.zzc = new WeakReference(context);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        this.zzb = context;
        return this;
    }

    public final zzcpk zzd(zzchu zzchuVar) {
        this.zza = zzchuVar;
        return this;
    }
}
