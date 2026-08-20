package com.yandex.metrica.networktasks.api;

import com.google.android.exoplayer2.C;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class DefaultResponseParser {

    /* loaded from: classes5.dex */
    public class Response {
        public final String mStatus;

        public Response(String str) {
            this.mStatus = str;
        }

        public String toString() {
            return "Response{mStatus='" + this.mStatus + "'}";
        }
    }

    public Response parse(byte[] bArr) {
        if (bArr != null) {
            try {
                if (bArr.length > 0) {
                    return new Response(new JSONObject(new String(bArr, C.UTF8_NAME)).optString("status"));
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
