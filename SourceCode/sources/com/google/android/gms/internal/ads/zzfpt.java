package com.google.android.gms.internal.ads;

import android.view.View;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzfpt {
    public abstract void zzb(View view, zzfpz zzfpzVar, String str);

    public abstract void zzc();

    public abstract void zzd(View view);

    public abstract void zze();

    public static zzfpt zza(zzfpu zzfpuVar, zzfpv zzfpvVar) {
        if (zzfpr.zzb()) {
            return new zzfpx(zzfpuVar, zzfpvVar);
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }
}
