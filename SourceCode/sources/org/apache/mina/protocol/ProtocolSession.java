package org.apache.mina.protocol;

import org.apache.mina.common.Session;
/* loaded from: classes5.dex */
public interface ProtocolSession extends Session {
    ProtocolDecoder getDecoder();

    ProtocolEncoder getEncoder();

    ProtocolFilterChain getFilterChain();

    ProtocolHandler getHandler();

    void write(Object obj);
}
