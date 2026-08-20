package org.apache.asn1.codec.stateful;

import java.util.LinkedList;
/* loaded from: classes5.dex */
public class CallbackHistory implements DecoderCallback, EncoderCallback {
    private final LinkedList history;
    private final int length;

    public CallbackHistory() {
        this(-1);
    }

    public CallbackHistory(int i) {
        this.length = i;
        this.history = new LinkedList();
    }

    @Override // org.apache.asn1.codec.stateful.DecoderCallback
    public void decodeOccurred(StatefulDecoder statefulDecoder, Object obj) {
        if (this.length > 0) {
            while (this.history.size() >= this.length) {
                this.history.removeLast();
            }
        }
        this.history.addFirst(obj);
    }

    @Override // org.apache.asn1.codec.stateful.EncoderCallback
    public void encodeOccurred(StatefulEncoder statefulEncoder, Object obj) {
        if (this.length > 0) {
            while (this.history.size() >= this.length) {
                this.history.removeLast();
            }
        }
        this.history.addFirst(obj);
    }

    public Object getMostRecent() {
        return this.history.getFirst();
    }

    public Object getOldest() {
        return this.history.getLast();
    }

    public boolean isEmpty() {
        return this.history.isEmpty();
    }

    public void clear() {
        this.history.clear();
    }

    public int size() {
        return this.history.size();
    }
}
