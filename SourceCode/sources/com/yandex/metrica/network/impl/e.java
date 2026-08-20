package com.yandex.metrica.network.impl;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f16223a = new e();

    private e() {
    }

    public static final Map a(Map original) {
        Intrinsics.checkNotNullParameter(original, "original");
        Map unmodifiableMap = Collections.unmodifiableMap(new HashMap(original));
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "Collections.unmodifiableMap(HashMap(original))");
        return unmodifiableMap;
    }

    public final byte[] a(int i, Function0 inputStreamProvider) {
        Intrinsics.checkNotNullParameter(inputStreamProvider, "inputStreamProvider");
        try {
            InputStream inputStream = (InputStream) inputStreamProvider.invoke();
            if (inputStream != null) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[8192];
                int i2 = 0;
                while (true) {
                    int read = inputStream.read(bArr);
                    if (-1 == read || i2 > i) {
                        break;
                    } else if (read > 0) {
                        byteArrayOutputStream.write(bArr, 0, read);
                        i2 += read;
                    }
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "it.toByteArray()");
                CloseableKt.closeFinally(byteArrayOutputStream, null);
                CloseableKt.closeFinally(inputStream, null);
                return byteArray;
            }
        } catch (Throwable unused) {
        }
        return new byte[0];
    }
}
