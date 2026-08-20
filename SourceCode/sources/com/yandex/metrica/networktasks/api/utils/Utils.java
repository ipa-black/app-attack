package com.yandex.metrica.networktasks.api.utils;
/* loaded from: classes5.dex */
public final class Utils {
    public static final Utils INSTANCE = new Utils();

    private Utils() {
    }

    public static final boolean isBadRequest(int i) {
        return i == 400;
    }
}
