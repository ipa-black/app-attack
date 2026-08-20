package org.apache.mina.io.filter;

import java.nio.ByteBuffer;
import javax.net.ssl.SSLEngine;
import org.apache.mina.util.Stack;
/* loaded from: classes4.dex */
class SSLByteBufferPool {
    private static final int APPLICATION_BUFFER_INDEX = 1;
    private static final String DIRECT_MEMORY_PROP = "mina.sslfilter.directbuffer";
    private static final int PACKET_BUFFER_INDEX = 0;
    private static int appBufferSize = 0;
    private static int[] bufferStackSizes = null;
    private static final Stack[] bufferStacks = {new Stack(), new Stack()};
    private static boolean initiated = false;
    private static int packetBufferSize = 0;
    private static boolean useDirectAllocatedBuffers = true;

    SSLByteBufferPool() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void initiate(SSLEngine sSLEngine) {
        synchronized (SSLByteBufferPool.class) {
            if (!initiated) {
                if (System.getProperty(DIRECT_MEMORY_PROP) != null) {
                    useDirectAllocatedBuffers = Boolean.getBoolean(DIRECT_MEMORY_PROP);
                }
                int packetBufferSize2 = sSLEngine.getSession().getPacketBufferSize();
                packetBufferSize = packetBufferSize2;
                appBufferSize = packetBufferSize2 * 2;
                initiateBufferStacks();
                initiated = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteBuffer getPacketBuffer() {
        if (!initiated) {
            throw new IllegalStateException("Not initialized");
        }
        return allocate(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteBuffer getApplicationBuffer() {
        if (!initiated) {
            throw new IllegalStateException("Not initialized");
        }
        return allocate(1);
    }

    private static ByteBuffer allocate(int i) {
        ByteBuffer byteBuffer;
        Stack stack = bufferStacks[i];
        synchronized (stack) {
            byteBuffer = (ByteBuffer) stack.pop();
            if (byteBuffer == null) {
                byteBuffer = createBuffer(bufferStackSizes[i]);
            }
        }
        byteBuffer.clear();
        return byteBuffer;
    }

    public static void release(ByteBuffer byteBuffer) {
        if (getBufferStackIndex(byteBuffer.capacity()) >= 0) {
            Stack stack = bufferStacks[getBufferStackIndex(byteBuffer.capacity())];
            synchronized (stack) {
                stack.push(byteBuffer);
            }
        }
    }

    public static ByteBuffer expandBuffer(ByteBuffer byteBuffer, int i) {
        ByteBuffer createBuffer = createBuffer(i);
        byteBuffer.flip();
        createBuffer.put(byteBuffer);
        release(byteBuffer);
        return createBuffer;
    }

    private static void initiateBufferStacks() {
        bufferStackSizes = r0;
        int[] iArr = {packetBufferSize, appBufferSize};
    }

    private static int getBufferStackIndex(int i) {
        if (i == packetBufferSize) {
            return 0;
        }
        return i == appBufferSize ? 1 : -1;
    }

    private static ByteBuffer createBuffer(int i) {
        if (useDirectAllocatedBuffers) {
            try {
                return ByteBuffer.allocateDirect(i);
            } catch (OutOfMemoryError unused) {
                useDirectAllocatedBuffers = false;
                System.err.println("OutOfMemoryError: No more direct buffers available; trying heap buffer instead");
            }
        }
        return ByteBuffer.allocate(i);
    }
}
