package com.google.android.gms.internal.auth;

import android.util.Log;
import com.google.android.exoplayer2.C;
import com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse;
import java.io.UnsupportedEncodingException;
/* loaded from: classes4.dex */
public abstract class zzaz extends FastSafeParcelableJsonResponse {
    private static String zzem = "AUTH";

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse
    public byte[] toByteArray() {
        try {
            return toString().getBytes(C.UTF8_NAME);
        } catch (UnsupportedEncodingException e2) {
            Log.e(zzem, "Error serializing object.", e2);
            return null;
        }
    }
}
