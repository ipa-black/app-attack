package com.appodeal.ads.modules.libs.network.encoders;

import android.util.Base64;
import java.util.List;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class a implements d, c {

    /* renamed from: a  reason: collision with root package name */
    public static final a f7024a = new a();

    @Override // com.appodeal.ads.modules.libs.network.encoders.d
    public final Map<String, List<String>> a() {
        return MapsKt.emptyMap();
    }

    @Override // com.appodeal.ads.modules.libs.network.encoders.c
    public final byte[] a(String str, byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        byte[] decode = Base64.decode(data, 0);
        Intrinsics.checkNotNullExpressionValue(decode, "decode(data, Base64.DEFAULT)");
        return decode;
    }

    @Override // com.appodeal.ads.modules.libs.network.encoders.d
    public final byte[] a(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        byte[] encode = Base64.encode(data, 0);
        Intrinsics.checkNotNullExpressionValue(encode, "encode(data, Base64.DEFAULT)");
        return encode;
    }
}
