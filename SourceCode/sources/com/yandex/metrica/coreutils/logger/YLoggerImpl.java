package com.yandex.metrica.coreutils.logger;

import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
class YLoggerImpl {
    public static final List<String> REGISTERED_LOGGER_CLASSES = Arrays.asList(YLoggerImpl.class.getName(), MessageLogConsumerProvider.class.getName(), SingleWarningMessageLogConsumer.class.getName(), MultilineMessageLogConsumer.class.getName(), SingleInfoMessageLogConsumer.class.getName(), ObjectLogConsumer.class.getName(), IMessageLogConsumer.class.getName());
    private final BaseLogger baseLogConsumer;
    private final IMessageLogConsumer<String> debugMessageLogConsumer;
    private final boolean enabled;
    private final IMessageLogConsumer<String> infoMessageLogConsumer;
    private final IMessageLogConsumer<JSONObject> jsonInfoMessageLogConsumer;
    private final IMessageLogConsumer<String> warningMessageLogConsumer;

    public YLoggerImpl(BaseLogger baseLogger, boolean z) {
        this(baseLogger, z, new MessageLogConsumerProvider(baseLogger));
    }

    public void debug(String str, String str2, Object... objArr) {
        if (this.enabled) {
            this.debugMessageLogConsumer.consumeWithTag(str, str2, objArr);
        }
    }

    public void d(String str, Object... objArr) {
        if (this.enabled) {
            this.debugMessageLogConsumer.consume(str, objArr);
        }
    }

    public void info(String str, String str2, Object... objArr) {
        if (this.enabled) {
            this.infoMessageLogConsumer.consumeWithTag(str, str2, objArr);
        }
    }

    public void i(String str, Object... objArr) {
        if (this.enabled) {
            this.infoMessageLogConsumer.consume(str, objArr);
        }
    }

    public void warning(String str, String str2, Object... objArr) {
        if (this.enabled) {
            this.warningMessageLogConsumer.consumeWithTag(str, str2, objArr);
        }
    }

    public void w(String str, Object... objArr) {
        if (this.enabled) {
            this.warningMessageLogConsumer.consume(str, objArr);
        }
    }

    public void e(String str, Object... objArr) {
        if (this.enabled) {
            this.baseLogConsumer.fe(str, objArr);
        }
    }

    public void error(String str, String str2, Object... objArr) {
        if (this.enabled) {
            this.baseLogConsumer.fe(str + str2, objArr);
        }
    }

    public void e(Throwable th, String str, Object... objArr) {
        if (this.enabled) {
            this.baseLogConsumer.fe(th, str, objArr);
        }
    }

    public void error(String str, Throwable th, String str2, Object... objArr) {
        if (this.enabled) {
            BaseLogger baseLogger = this.baseLogConsumer;
            StringBuilder append = new StringBuilder().append(str);
            if (str2 == null) {
                str2 = "";
            }
            baseLogger.fe(th, append.append(str2).toString(), objArr);
        }
    }

    public void dumpJson(String str, JSONObject jSONObject) {
        if (this.enabled) {
            this.jsonInfoMessageLogConsumer.consumeWithTag(str, jSONObject, new Object[0]);
        }
    }

    YLoggerImpl(BaseLogger baseLogger, boolean z, MessageLogConsumerProvider messageLogConsumerProvider) {
        this.baseLogConsumer = baseLogger;
        this.enabled = z;
        this.infoMessageLogConsumer = messageLogConsumerProvider.getInfoLogConsumer();
        this.debugMessageLogConsumer = messageLogConsumerProvider.getDebugLogConsumer();
        this.warningMessageLogConsumer = messageLogConsumerProvider.getWarningMessageLogConsumer();
        this.jsonInfoMessageLogConsumer = messageLogConsumerProvider.getJsonInfoLogConsumer();
    }
}
