package org.apache.mina.examples.sumup;

import java.nio.ByteBuffer;
import net.gleamynode.netty2.MessageParseException;
/* loaded from: classes4.dex */
public class AddMessage extends AbstractMessage {
    private int value;

    /* JADX INFO: Access modifiers changed from: protected */
    public AddMessage() {
        super(1);
    }

    public int getValue() {
        return this.value;
    }

    public void setValue(int i) {
        this.value = i;
    }

    @Override // org.apache.mina.examples.sumup.AbstractMessage
    protected boolean readBody(ByteBuffer byteBuffer) throws MessageParseException {
        if (byteBuffer.remaining() < 4) {
            return false;
        }
        this.value = byteBuffer.getInt();
        return true;
    }

    @Override // org.apache.mina.examples.sumup.AbstractMessage
    protected boolean writeBody(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 4) {
            return false;
        }
        byteBuffer.putInt(this.value);
        return true;
    }

    public String toString() {
        return new StringBuffer().append(getSequence()).append(":ADD(").append(this.value).append(')').toString();
    }
}
