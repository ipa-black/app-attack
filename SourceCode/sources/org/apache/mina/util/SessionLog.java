package org.apache.mina.util;

import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.mina.common.Session;
import org.apache.mina.io.IoSession;
import org.apache.mina.protocol.ProtocolSession;
/* loaded from: classes5.dex */
public class SessionLog {
    public static final String LOGGER;
    public static final String PREFIX;
    static /* synthetic */ Class class$org$apache$mina$util$SessionLog;

    static {
        StringBuffer stringBuffer = new StringBuffer();
        Class cls = class$org$apache$mina$util$SessionLog;
        if (cls == null) {
            cls = class$("org.apache.mina.util.SessionLog");
            class$org$apache$mina$util$SessionLog = cls;
        }
        PREFIX = stringBuffer.append(cls.getName()).append(".prefix").toString();
        StringBuffer stringBuffer2 = new StringBuffer();
        Class cls2 = class$org$apache$mina$util$SessionLog;
        if (cls2 == null) {
            cls2 = class$("org.apache.mina.util.SessionLog");
            class$org$apache$mina$util$SessionLog = cls2;
        }
        LOGGER = stringBuffer2.append(cls2.getName()).append(".logger").toString();
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static Logger getLogger(Session session) {
        String str = LOGGER;
        Logger logger = (Logger) session.getAttribute(str);
        if (logger == null) {
            logger = Logger.getLogger(getClassName(session));
            String str2 = PREFIX;
            if (((String) session.getAttribute(str2)) == null) {
                session.setAttribute(str2, new StringBuffer("[").append(session.getRemoteAddress()).append("] ").toString());
            }
            session.setAttribute(str, logger);
        }
        return logger;
    }

    private static String getClassName(Session session) {
        if (session instanceof IoSession) {
            return ((IoSession) session).getHandler().getClass().getName();
        }
        return ((ProtocolSession) session).getHandler().getClass().getName();
    }

    public static void log(Level level, Session session, String str) {
        Logger logger = getLogger(session);
        if (logger.isLoggable(level)) {
            logger.log(level, str);
        }
    }

    public static void log(Level level, Session session, String str, Throwable th) {
        Logger logger = getLogger(session);
        if (logger.isLoggable(level)) {
            logger.log(level, str, th);
        }
    }
}
