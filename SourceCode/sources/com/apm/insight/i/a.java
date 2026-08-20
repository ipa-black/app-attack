package com.apm.insight.i;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.apm.insight.runtime.s;
import java.util.UUID;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile UUID f890a = null;

    /* renamed from: b  reason: collision with root package name */
    private static String f891b = "";

    private a(Context context) {
        if (f890a == null) {
            synchronized (a.class) {
                if (f890a == null) {
                    String str = null;
                    String a2 = s.a().a((String) null);
                    if (a2 != null) {
                        f890a = UUID.fromString(a2);
                    } else {
                        try {
                            str = Settings.Secure.getString(context.getContentResolver(), "android_id");
                        } catch (Throwable unused) {
                        }
                        try {
                            f890a = str != null ? UUID.nameUUIDFromBytes(str.getBytes("utf8")) : UUID.randomUUID();
                        } catch (Throwable unused2) {
                        }
                        try {
                            s.a().c(f890a.toString());
                        } catch (Throwable unused3) {
                        }
                    }
                }
            }
        }
    }

    public static synchronized String a(Context context) {
        String str;
        UUID a2;
        synchronized (a.class) {
            if (TextUtils.isEmpty(f891b) && (a2 = new a(context).a()) != null) {
                f891b = a2.toString();
            }
            str = f891b;
        }
        return str;
    }

    public UUID a() {
        return f890a;
    }
}
