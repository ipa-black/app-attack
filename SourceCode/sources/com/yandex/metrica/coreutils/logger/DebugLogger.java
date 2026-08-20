package com.yandex.metrica.coreutils.logger;

import java.util.Locale;
/* loaded from: classes3.dex */
class DebugLogger extends BaseLogger {
    static final int STACK_OFFSET = 5;

    public DebugLogger(boolean z) {
        super(z);
    }

    @Override // com.yandex.metrica.coreutils.logger.BaseLogger
    protected String getTag() {
        return "AppMetricaDebug";
    }

    @Override // com.yandex.metrica.coreutils.logger.BaseLogger
    protected String getPrefix() {
        return "";
    }

    @Override // com.yandex.metrica.coreutils.logger.BaseLogger
    protected String formatMessage(String str, Object[] objArr) {
        String str2;
        if (objArr != null && objArr.length != 0) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 5;
        while (true) {
            if (i >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            }
            if (!YLoggerImpl.REGISTERED_LOGGER_CLASSES.contains(stackTrace[i].getClassName())) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                str2 = substring.substring(substring.lastIndexOf(36) + 1) + "." + stackTrace[i].getMethodName();
                break;
            }
            i++;
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }
}
