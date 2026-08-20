package org.apache.mina.io;

import org.apache.mina.common.SessionManager;
/* loaded from: classes4.dex */
public interface IoSessionManager extends SessionManager {
    IoFilterChain getFilterChain();
}
