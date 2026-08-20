package org.apache.mina.examples.sumup;

import java.nio.ByteBuffer;
import net.gleamynode.netty2.Message;
import net.gleamynode.netty2.MessageParseException;
import net.gleamynode.netty2.MessageRecognizer;
/* loaded from: classes4.dex */
public class SumUpMessageRecognizer implements MessageRecognizer {
    public static final int CLIENT_MODE = 1;
    public static final int SERVER_MODE = 2;
    private int mode;

    public SumUpMessageRecognizer(int i) {
        if (i == 1 || i == 2) {
            this.mode = i;
            return;
        }
        throw new IllegalArgumentException(new StringBuffer("invalid mode: ").append(i).toString());
    }

    public Message recognize(ByteBuffer byteBuffer) throws MessageParseException {
        if (byteBuffer.remaining() < 2) {
            return null;
        }
        short s = byteBuffer.getShort();
        int i = this.mode;
        if (i == 1) {
            if (s == 0) {
                return new ResultMessage();
            }
            throw new MessageParseException(new StringBuffer("unknown type: ").append((int) s).toString());
        } else if (i == 2) {
            if (s == 1) {
                return new AddMessage();
            }
            throw new MessageParseException(new StringBuffer("unknown type: ").append((int) s).toString());
        } else {
            throw new InternalError();
        }
    }
}
