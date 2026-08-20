package com.appodeal.consent.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Base64;
import com.appodeal.consent.Consent;
import com.appodeal.consent.ConsentManager;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class b {
    public static final Consent a(Consent.a aVar, Context context) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        String string = context.getSharedPreferences("stack_consent_file", 0).getString("stack_consent_data", null);
        if (string == null || string.length() == 0) {
            return null;
        }
        byte[] bytes = string.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        byte[] consentJsonByteArray = Base64.decode(bytes, 0);
        Intrinsics.checkNotNullExpressionValue(consentJsonByteArray, "consentJsonByteArray");
        return new Consent(new JSONObject(new String(consentJsonByteArray, Charsets.UTF_8)));
    }

    public static final void a(Consent consent, Context context) {
        Intrinsics.checkNotNullParameter(consent, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        String jSONObject = consent.toJson().toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "toJson().toString()");
        byte[] bytes = jSONObject.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        context.getSharedPreferences("stack_consent_file", 0).edit().putString("stack_consent_data", Base64.encodeToString(bytes, 0)).apply();
    }

    public static final void b(Consent consent, Context context) {
        float floatValue;
        Intrinsics.checkNotNullParameter(consent, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        if (ConsentManager.getStorage() != ConsentManager.Storage.SHARED_PREFERENCE) {
            return;
        }
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        Iterator<String> keys = consent.getIab().keys();
        Intrinsics.checkNotNullExpressionValue(keys, "iab.keys()");
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = consent.getIab().get(next);
            Intrinsics.checkNotNullExpressionValue(obj, "iab.get(key)");
            try {
                if (obj instanceof Boolean) {
                    edit.putBoolean(next, ((Boolean) obj).booleanValue());
                } else {
                    if (obj instanceof Double) {
                        floatValue = (float) ((Number) obj).doubleValue();
                    } else if (obj instanceof Float) {
                        floatValue = ((Number) obj).floatValue();
                    } else if (obj instanceof Integer) {
                        edit.putInt(next, ((Number) obj).intValue());
                    } else if (obj instanceof Long) {
                        edit.putLong(next, ((Number) obj).longValue());
                    } else if (obj instanceof String) {
                        edit.putString(next, (String) obj);
                    }
                    edit.putFloat(next, floatValue);
                }
            } catch (Throwable unused) {
            }
            edit.apply();
        }
    }
}
