package com.google.android.gms.internal.ads;

import java.io.Serializable;
import javax.annotation.CheckForNull;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzfya implements Serializable {
    public static zzfya zzc() {
        return zzfxj.zza;
    }

    public static zzfya zzd(@CheckForNull Object obj) {
        return obj == null ? zzfxj.zza : new zzfyj(obj);
    }

    public abstract zzfya zza(zzfxt zzfxtVar);

    public abstract Object zzb(Object obj);
}
