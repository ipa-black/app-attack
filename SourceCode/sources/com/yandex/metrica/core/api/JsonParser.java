package com.yandex.metrica.core.api;

import com.yandex.metrica.core.api.Parser;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public interface JsonParser extends Parser {

    /* loaded from: classes3.dex */
    public final class DefaultImpls {
        public static Object parseOrNull(JsonParser jsonParser, JSONObject rawData) {
            Intrinsics.checkNotNullParameter(rawData, "rawData");
            return Parser.DefaultImpls.parseOrNull(jsonParser, rawData);
        }
    }
}
