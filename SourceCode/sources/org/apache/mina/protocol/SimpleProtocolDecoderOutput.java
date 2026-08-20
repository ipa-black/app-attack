package org.apache.mina.protocol;

import org.apache.mina.util.Queue;
/* loaded from: classes5.dex */
public class SimpleProtocolDecoderOutput implements ProtocolDecoderOutput {
    private final Queue messageQueue = new Queue();

    public Queue getMessageQueue() {
        return this.messageQueue;
    }

    @Override // org.apache.mina.protocol.ProtocolDecoderOutput
    public void write(Object obj) {
        this.messageQueue.push(obj);
    }
}
