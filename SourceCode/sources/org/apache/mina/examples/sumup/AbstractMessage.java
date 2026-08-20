package org.apache.mina.examples.sumup;

import java.nio.ByteBuffer;
import net.gleamynode.netty2.Message;
import net.gleamynode.netty2.MessageParseException;
/* loaded from: classes4.dex */
public abstract class AbstractMessage implements Message {
    private boolean readHeader;
    private int sequence;
    private final int type;
    private boolean wroteHeader;

    protected abstract boolean readBody(ByteBuffer byteBuffer) throws MessageParseException;

    protected abstract boolean writeBody(ByteBuffer byteBuffer);

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractMessage(int i) {
        this.type = i;
    }

    public int getSequence() {
        return this.sequence;
    }

    public void setSequence(int i) {
        this.sequence = i;
    }

    public final boolean read(ByteBuffer byteBuffer) throws MessageParseException {
        if (!this.readHeader) {
            boolean readHeader = readHeader(byteBuffer);
            this.readHeader = readHeader;
            if (!readHeader) {
                return false;
            }
        }
        if (readBody(byteBuffer)) {
            this.readHeader = false;
            return true;
        }
        return false;
    }

    private boolean readHeader(ByteBuffer byteBuffer) throws MessageParseException {
        if (byteBuffer.remaining() < 6) {
            return false;
        }
        short s = byteBuffer.getShort();
        if (this.type != s) {
            throw new MessageParseException(new StringBuffer("type mismatches: ").append((int) s).append(" (expected: ").append(this.type).append(')').toString());
        }
        this.sequence = byteBuffer.getInt();
        return true;
    }

    public boolean write(ByteBuffer byteBuffer) {
        if (!this.wroteHeader) {
            boolean writeHeader = writeHeader(byteBuffer);
            this.wroteHeader = writeHeader;
            if (!writeHeader) {
                return false;
            }
        }
        if (writeBody(byteBuffer)) {
            this.wroteHeader = false;
            return true;
        }
        return false;
    }

    private boolean writeHeader(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 6) {
            return false;
        }
        byteBuffer.putShort((short) this.type);
        byteBuffer.putInt(this.sequence);
        return true;
    }
}
