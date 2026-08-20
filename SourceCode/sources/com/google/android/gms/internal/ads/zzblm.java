package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.ExoPlayer;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzblm {
    public static final zzbkl zza = zzbkl.zzd("gads:always_collect_trustless_token_at_native_side", false);
    public static final zzbkl zzb = zzbkl.zzd("gms:expose_token_for_gma:enabled", true);
    public static final zzbkl zzc = zzbkl.zzb("gads:timeout_for_trustless_token:millis", ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    public static final zzbkl zzd = zzbkl.zzb("gads:cached_token:ttl_millis", 10800000);
}
