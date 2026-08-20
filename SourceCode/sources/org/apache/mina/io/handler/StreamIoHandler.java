package org.apache.mina.io.handler;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedOutputStream;
import java.net.SocketTimeoutException;
import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.io.IoHandlerAdapter;
import org.apache.mina.io.IoSession;
/* loaded from: classes4.dex */
public abstract class StreamIoHandler extends IoHandlerAdapter {
    private static final String KEY_IN = "BlockingIoHandler.in";
    private static final String KEY_OUT = "BlockingIoHandler.out";
    private static final String KEY_STARTED = "BlockingIoHandler.started";
    private int readTimeout;
    private int writeTimeout;

    protected abstract void processStreamIo(IoSession ioSession, InputStream inputStream, OutputStream outputStream);

    public int getReadTimeout() {
        return this.readTimeout;
    }

    public void setReadTimeout(int i) {
        this.readTimeout = i;
    }

    public int getWriteTimeout() {
        return this.writeTimeout;
    }

    public void setWriteTimeout(int i) {
        this.writeTimeout = i;
    }

    @Override // org.apache.mina.io.IoHandlerAdapter, org.apache.mina.io.IoHandler
    public void sessionOpened(IoSession ioSession) {
        ioSession.getConfig().setWriteTimeout(this.writeTimeout);
        ioSession.getConfig().setIdleTime(IdleStatus.READER_IDLE, this.readTimeout);
        PipedOutputStream pipedOutputStream = new PipedOutputStream();
        ioSession.setAttribute(KEY_OUT, pipedOutputStream);
        try {
            ioSession.setAttribute(KEY_IN, new PipedInputStream(pipedOutputStream));
        } catch (IOException e2) {
            throw new StreamIoException(e2);
        }
    }

    @Override // org.apache.mina.io.IoHandlerAdapter, org.apache.mina.io.IoHandler
    public void sessionClosed(IoSession ioSession) {
        try {
            ((PipedOutputStream) ioSession.getAttribute(KEY_OUT)).close();
        } catch (IOException e2) {
            throw new StreamIoException(e2);
        }
    }

    @Override // org.apache.mina.io.IoHandlerAdapter, org.apache.mina.io.IoHandler
    public void dataRead(IoSession ioSession, ByteBuffer byteBuffer) {
        PipedInputStream pipedInputStream = (PipedInputStream) ioSession.getAttribute(KEY_IN);
        PipedOutputStream pipedOutputStream = (PipedOutputStream) ioSession.getAttribute(KEY_OUT);
        java.nio.ByteBuffer buf = byteBuffer.buf();
        int position = buf.position();
        int limit = buf.limit() - position;
        if (!buf.hasArray()) {
            position = 0;
            ByteBuffer allocate = ByteBuffer.allocate(limit, false);
            allocate.put(byteBuffer);
            allocate.flip();
            buf = allocate.buf();
        }
        try {
            try {
                pipedOutputStream.write(buf.array(), position, limit);
            } catch (IOException e2) {
                throw new StreamIoException(e2);
            }
        } finally {
            beginService(ioSession, pipedInputStream);
        }
    }

    @Override // org.apache.mina.io.IoHandlerAdapter, org.apache.mina.io.IoHandler
    public void exceptionCaught(IoSession ioSession, Throwable th) {
        IOException iOException;
        PipedInputStream pipedInputStream = (PipedInputStream) ioSession.getAttribute(KEY_IN);
        if (th instanceof StreamIoException) {
            iOException = (IOException) th.getCause();
        } else {
            iOException = th instanceof IOException ? (IOException) th : null;
        }
        if (iOException != null && pipedInputStream != null) {
            pipedInputStream.setException(iOException);
            beginService(ioSession, pipedInputStream);
            return;
        }
        th.printStackTrace();
        ioSession.close();
    }

    @Override // org.apache.mina.io.IoHandlerAdapter, org.apache.mina.io.IoHandler
    public void sessionIdle(IoSession ioSession, IdleStatus idleStatus) {
        if (idleStatus == IdleStatus.READER_IDLE) {
            throw new StreamIoException(new SocketTimeoutException("Read timeout"));
        }
    }

    private void beginService(IoSession ioSession, PipedInputStream pipedInputStream) {
        if (ioSession.getAttribute(KEY_STARTED) == null) {
            ioSession.setAttribute(KEY_STARTED, Boolean.TRUE);
            processStreamIo(ioSession, pipedInputStream, new ServiceOutputStream(ioSession));
        }
    }

    /* loaded from: classes4.dex */
    private static class PipedInputStream extends java.io.PipedInputStream {
        private IOException exception;

        public PipedInputStream(PipedOutputStream pipedOutputStream) throws IOException {
            super(pipedOutputStream);
        }

        public void setException(IOException iOException) {
            this.exception = iOException;
        }

        @Override // java.io.PipedInputStream, java.io.InputStream
        public synchronized int read() throws IOException {
            throwException();
            return super.read();
        }

        @Override // java.io.PipedInputStream, java.io.InputStream
        public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
            throwException();
            return super.read(bArr, i, i2);
        }

        private void throwException() throws IOException {
            IOException iOException = this.exception;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class ServiceOutputStream extends OutputStream {
        private final IoSession session;

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
        }

        public ServiceOutputStream(IoSession ioSession) {
            this.session = ioSession;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.session.close(true);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            ByteBuffer wrap = ByteBuffer.wrap(bArr, i, i2);
            wrap.acquire();
            this.session.write(wrap, null);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            wrap.acquire();
            this.session.write(wrap, null);
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            ByteBuffer allocate = ByteBuffer.allocate(1);
            allocate.put((byte) i);
            allocate.flip();
            this.session.write(allocate, null);
        }
    }

    /* loaded from: classes4.dex */
    private static class StreamIoException extends RuntimeException {
        private static final long serialVersionUID = 3976736960742503222L;

        public StreamIoException(IOException iOException) {
            super(iOException);
        }
    }
}
