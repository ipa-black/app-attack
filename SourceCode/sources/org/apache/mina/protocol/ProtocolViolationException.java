package org.apache.mina.protocol;

import org.apache.mina.common.ByteBuffer;
/* loaded from: classes5.dex */
public class ProtocolViolationException extends Exception {
    private static final long serialVersionUID = 3545799879533408565L;
    private ByteBuffer buffer;

    public ProtocolViolationException() {
    }

    public ProtocolViolationException(String str) {
        super(str);
    }

    public ProtocolViolationException(Throwable th) {
        super(th);
    }

    public ProtocolViolationException(String str, Throwable th) {
        super(str, th);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        if (message == null) {
            message = "";
        }
        if (this.buffer != null) {
            return new StringBuffer().append(message).append(message.length() > 0 ? " " : "").append("(Hexdump: ").append(this.buffer.getHexDump()).append(')').toString();
        }
        return message;
    }

    public ByteBuffer getBuffer() {
        return this.buffer;
    }

    public void setBuffer(ByteBuffer byteBuffer) {
        this.buffer = byteBuffer;
    }
}
