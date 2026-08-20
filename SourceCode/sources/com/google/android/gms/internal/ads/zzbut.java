package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzbut {
    static final com.google.android.gms.ads.internal.util.zzbb zza = new zzbur();
    static final com.google.android.gms.ads.internal.util.zzbb zzb = new zzbus();
    private final zzbuf zzc;

    public zzbut(Context context, zzchu zzchuVar, String str, @Nullable zzfoy zzfoyVar) {
        this.zzc = new zzbuf(context, zzchuVar, str, zza, zzb, zzfoyVar);
    }

    public final zzbuj zza(String str, zzbum zzbumVar, zzbul zzbulVar) {
        return new zzbux(this.zzc, str, zzbumVar, zzbulVar);
    }

    public final zzbvc zzb() {
        return new zzbvc(this.zzc);
    }
}
