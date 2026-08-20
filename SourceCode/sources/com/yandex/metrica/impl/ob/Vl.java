package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.coreutils.logger.BaseLogger;
import java.util.Locale;
/* loaded from: classes5.dex */
public abstract class Vl extends BaseLogger {

    /* renamed from: b  reason: collision with root package name */
    private static String f14171b = "";

    /* renamed from: a  reason: collision with root package name */
    private final String f14172a;

    public Vl(String str) {
        super(false);
        this.f14172a = "[" + A2.a(str) + "] ";
    }

    public static void a(Context context) {
        f14171b = "[" + context.getPackageName() + "] : ";
    }

    @Override // com.yandex.metrica.coreutils.logger.BaseLogger
    protected String formatMessage(String str, Object[] objArr) {
        return String.format(Locale.US, str, objArr);
    }

    @Override // com.yandex.metrica.coreutils.logger.BaseLogger
    public String getPrefix() {
        String str = f14171b;
        if (str == null) {
            str = "";
        }
        String str2 = this.f14172a;
        return str + (str2 != null ? str2 : "");
    }
}
