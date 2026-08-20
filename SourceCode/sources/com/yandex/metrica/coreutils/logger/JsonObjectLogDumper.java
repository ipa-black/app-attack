package com.yandex.metrica.coreutils.logger;

import org.json.JSONObject;
/* loaded from: classes3.dex */
class JsonObjectLogDumper implements IObjectLogDumper<JSONObject> {
    private static final String DUMP_EXCEPTION_MESSAGE = "Exception during dumping JSONObject";
    static final int JSON_INDENT_SPACES = 2;

    @Override // com.yandex.metrica.coreutils.logger.IObjectLogDumper
    public String dumpObject(JSONObject jSONObject) {
        try {
            return jSONObject.toString(2);
        } catch (Throwable unused) {
            return DUMP_EXCEPTION_MESSAGE;
        }
    }
}
