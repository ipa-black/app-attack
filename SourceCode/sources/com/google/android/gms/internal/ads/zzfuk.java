package com.google.android.gms.internal.ads;

import java.io.Closeable;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzfuk implements Closeable {
    public static zzfuw zza() {
        return new zzfuw();
    }

    public static zzfuw zzb(final int i, zzfuv zzfuvVar) {
        return new zzfuw(new zzfyu() { // from class: com.google.android.gms.internal.ads.zzfui
            @Override // com.google.android.gms.internal.ads.zzfyu
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        }, new zzfyu() { // from class: com.google.android.gms.internal.ads.zzfuj
            @Override // com.google.android.gms.internal.ads.zzfyu
            public final Object zza() {
                return zzfuk.zze();
            }
        }, zzfuvVar);
    }

    public static zzfuw zzc(zzfyu<Integer> zzfyuVar, zzfyu<Integer> zzfyuVar2, zzfuv zzfuvVar) {
        return new zzfuw(zzfyuVar, zzfyuVar2, zzfuvVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Integer zze() {
        return -1;
    }
}
