package com.apm.insight.b;

import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.reflect.Field;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static MessageQueue f791a;

    /* renamed from: b  reason: collision with root package name */
    private static Field f792b;

    /* renamed from: c  reason: collision with root package name */
    private static Field f793c;

    protected static Message a(Message message) {
        Field field = f793c;
        if (field != null) {
            try {
                return (Message) field.get(message);
            } catch (Exception unused) {
                return null;
            }
        }
        try {
            Field declaredField = Class.forName("android.os.Message").getDeclaredField("next");
            f793c = declaredField;
            declaredField.setAccessible(true);
            return (Message) f793c.get(message);
        } catch (Exception unused2) {
            return null;
        }
    }

    public static Message a(MessageQueue messageQueue) {
        Field field = f792b;
        if (field != null) {
            try {
                return (Message) field.get(messageQueue);
            } catch (Exception unused) {
                return null;
            }
        }
        try {
            Field declaredField = Class.forName("android.os.MessageQueue").getDeclaredField("mMessages");
            f792b = declaredField;
            declaredField.setAccessible(true);
            return (Message) f792b.get(messageQueue);
        } catch (Exception unused2) {
            return null;
        }
    }

    public static MessageQueue a() {
        if (f791a == null && Looper.getMainLooper() != null) {
            Looper mainLooper = Looper.getMainLooper();
            f791a = mainLooper == Looper.myLooper() ? Looper.myQueue() : mainLooper.getQueue();
        }
        return f791a;
    }

    public static JSONArray a(int i, long j) {
        MessageQueue a2 = a();
        JSONArray jSONArray = new JSONArray();
        if (a2 == null) {
            return jSONArray;
        }
        try {
            synchronized (a2) {
                Message a3 = a(a2);
                if (a3 == null) {
                    return jSONArray;
                }
                int i2 = 0;
                int i3 = 0;
                while (a3 != null && i2 < i) {
                    i2++;
                    i3++;
                    JSONObject a4 = a(a3, j);
                    try {
                        a4.put("id", i3);
                    } catch (JSONException unused) {
                    }
                    jSONArray.put(a4);
                    a3 = a(a3);
                }
                return jSONArray;
            }
        } catch (Throwable th) {
            com.apm.insight.c.a().a("NPTH_CATCH", th);
            return jSONArray;
        }
    }

    private static JSONObject a(Message message, long j) {
        JSONObject jSONObject = new JSONObject();
        if (message == null) {
            return jSONObject;
        }
        try {
            jSONObject.put("when", message.getWhen() - j);
            if (message.getCallback() != null) {
                jSONObject.put("callback", String.valueOf(message.getCallback()));
            }
            jSONObject.put("what", message.what);
            if (message.getTarget() != null) {
                jSONObject.put(TypedValues.AttributesType.S_TARGET, String.valueOf(message.getTarget()));
            } else {
                jSONObject.put("barrier", message.arg1);
            }
            jSONObject.put("arg1", message.arg1);
            jSONObject.put("arg2", message.arg2);
            if (message.obj != null) {
                jSONObject.put("obj", message.obj);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }
}
