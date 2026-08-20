package org.apache.mina.protocol.codec;
/* loaded from: classes5.dex */
public class MessageDecoderResult {
    private final String name;
    public static MessageDecoderResult OK = new MessageDecoderResult("OK");
    public static MessageDecoderResult NEED_DATA = new MessageDecoderResult("NEED_DATA");
    public static MessageDecoderResult NOT_OK = new MessageDecoderResult("NOT_OK");

    private MessageDecoderResult(String str) {
        this.name = str;
    }

    public String toString() {
        return this.name;
    }
}
