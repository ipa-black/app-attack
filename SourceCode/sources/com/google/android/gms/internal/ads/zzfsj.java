package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfsj {
    public static zzfts zza(Context context, int i, int i2, String str, String str2, String str3, zzfrz zzfrzVar) {
        return new zzfsi(context, 1, i2, str, str2, IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, zzfrzVar).zzb(50000);
    }
}
