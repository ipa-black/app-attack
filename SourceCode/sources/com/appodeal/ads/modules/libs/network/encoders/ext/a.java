package com.appodeal.ads.modules.libs.network.encoders.ext;

import com.appodeal.ads.modules.libs.network.encoders.c;
import com.appodeal.ads.modules.libs.network.encoders.d;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class a {
    public static final byte[] a(byte[] bArr, String str, List<? extends c> decoders) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(decoders, "decoders");
        for (c cVar : decoders) {
            bArr = cVar.a(str, bArr);
        }
        return bArr;
    }

    public static final byte[] a(byte[] bArr, List<? extends d> encoders) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(encoders, "encoders");
        for (d dVar : encoders) {
            bArr = dVar.a(bArr);
        }
        return bArr;
    }
}
