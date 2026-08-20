package org.apache.mina.io.datagram;

import org.apache.mina.common.BaseSessionManager;
import org.apache.mina.io.IoSessionManager;
/* loaded from: classes4.dex */
abstract class DatagramSessionManager extends BaseSessionManager implements IoSessionManager {
    abstract void closeSession(DatagramSession datagramSession);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void flushSession(DatagramSession datagramSession);
}
