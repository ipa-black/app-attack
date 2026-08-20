package org.apache.mina.protocol;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.util.Queue;
/* loaded from: classes5.dex */
public class SimpleProtocolEncoderOutput implements ProtocolEncoderOutput {
    private final Queue bufferQueue = new Queue();

    public Queue getBufferQueue() {
        return this.bufferQueue;
    }

    @Override // org.apache.mina.protocol.ProtocolEncoderOutput
    public void write(ByteBuffer byteBuffer) {
        this.bufferQueue.push(byteBuffer);
    }

    @Override // org.apache.mina.protocol.ProtocolEncoderOutput
    public void mergeAll() {
        int size = this.bufferQueue.size();
        if (size < 2) {
            return;
        }
        int i = 0;
        for (int i2 = size - 1; i2 >= 0; i2--) {
            i += ((ByteBuffer) this.bufferQueue.get(i2)).remaining();
        }
        ByteBuffer allocate = ByteBuffer.allocate(i);
        while (true) {
            ByteBuffer byteBuffer = (ByteBuffer) this.bufferQueue.pop();
            if (byteBuffer != null) {
                allocate.put(byteBuffer);
                byteBuffer.release();
            } else {
                allocate.flip();
                this.bufferQueue.push(allocate);
                return;
            }
        }
    }
}
