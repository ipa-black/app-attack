package org.apache.mina.io;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.Session;
/* loaded from: classes4.dex */
public interface IoSession extends Session {
    IoFilterChain getFilterChain();

    IoHandler getHandler();

    void write(ByteBuffer byteBuffer, Object obj);
}
