package org.apache.mina.protocol;

import org.apache.mina.common.SessionManager;
/* loaded from: classes5.dex */
public interface ProtocolSessionManager extends SessionManager {
    ProtocolFilterChain getFilterChain();
}
