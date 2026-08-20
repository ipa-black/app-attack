package org.apache.mina.examples.sumup;

import java.nio.ByteBuffer;
import net.gleamynode.netty2.MessageParseException;
/* loaded from: classes4.dex */
public class ResultMessage extends AbstractMessage {
    private boolean ok;
    private boolean processedResultCode;
    private int value;

    public ResultMessage() {
        super(0);
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean z) {
        this.ok = z;
    }

    public int getValue() {
        return this.value;
    }

    public void setValue(int i) {
        this.value = i;
    }

    @Override // org.apache.mina.examples.sumup.AbstractMessage
    protected boolean readBody(ByteBuffer byteBuffer) throws MessageParseException {
        if (!this.processedResultCode) {
            boolean readResultCode = readResultCode(byteBuffer);
            this.processedResultCode = readResultCode;
            if (!readResultCode) {
                return false;
            }
        }
        if (this.ok) {
            if (readValue(byteBuffer)) {
                this.processedResultCode = false;
                return true;
            }
            return false;
        }
        this.processedResultCode = false;
        return true;
    }

    private boolean readResultCode(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 2) {
            return false;
        }
        this.ok = byteBuffer.getShort() == 0;
        return true;
    }

    private boolean readValue(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 4) {
            return false;
        }
        this.value = byteBuffer.getInt();
        return true;
    }

    @Override // org.apache.mina.examples.sumup.AbstractMessage
    protected boolean writeBody(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 6) {
            return false;
        }
        byteBuffer.putShort((short) (!this.ok ? 1 : 0));
        if (this.ok) {
            byteBuffer.putInt(this.value);
        }
        return true;
    }

    public String toString() {
        if (this.ok) {
            return new StringBuffer().append(getSequence()).append(":RESULT(").append(this.value).append(')').toString();
        }
        return new StringBuffer().append(getSequence()).append(":RESULT(ERROR)").toString();
    }
}
