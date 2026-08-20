package org.apache.mina.protocol;

import org.apache.mina.common.ByteBuffer;
/* loaded from: classes5.dex */
public interface ProtocolEncoderOutput {
    void mergeAll();

    void write(ByteBuffer byteBuffer);
}
