package org.apache.asn1.codec.stateful;

import java.util.Stack;
import org.apache.asn1.codec.DecoderException;
/* loaded from: classes5.dex */
public class DecoderStack extends AbstractStatefulDecoder {
    private Stack decoders = new Stack();
    private final DecoderCallback topcb = new DecoderCallback() { // from class: org.apache.asn1.codec.stateful.DecoderStack.1
        @Override // org.apache.asn1.codec.stateful.DecoderCallback
        public void decodeOccurred(StatefulDecoder statefulDecoder, Object obj) {
            DecoderStack.this.decodeOccurred(obj);
        }
    };

    public synchronized void push(StatefulDecoder statefulDecoder) {
        statefulDecoder.setCallback(this.topcb);
        if (!this.decoders.isEmpty()) {
            StatefulDecoder statefulDecoder2 = (StatefulDecoder) this.decoders.peek();
            statefulDecoder2.setCallback(new ChainingCallback(statefulDecoder2, statefulDecoder));
        }
        this.decoders.push(statefulDecoder);
    }

    public synchronized StatefulDecoder pop() {
        if (this.decoders.isEmpty()) {
            return this;
        }
        StatefulDecoder statefulDecoder = (StatefulDecoder) this.decoders.pop();
        statefulDecoder.setCallback(null);
        if (!this.decoders.isEmpty()) {
            ((StatefulDecoder) this.decoders.peek()).setCallback(this.topcb);
        }
        return statefulDecoder;
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public synchronized void decode(Object obj) throws DecoderException {
        if (this.decoders.isEmpty()) {
            decodeOccurred(obj);
        } else {
            ((StatefulDecoder) this.decoders.get(0)).decode(obj);
        }
    }

    public boolean isEmpty() {
        return this.decoders.isEmpty();
    }

    public synchronized void clear() {
        while (!this.decoders.isEmpty()) {
            pop();
        }
    }

    /* loaded from: classes5.dex */
    class ChainingCallback implements DecoderCallback {
        private StatefulDecoder sink;
        private StatefulDecoder src;

        ChainingCallback(StatefulDecoder statefulDecoder, StatefulDecoder statefulDecoder2) {
            this.src = statefulDecoder;
            this.sink = statefulDecoder2;
        }

        @Override // org.apache.asn1.codec.stateful.DecoderCallback
        public void decodeOccurred(StatefulDecoder statefulDecoder, Object obj) {
            if (statefulDecoder != this.src) {
                return;
            }
            try {
                this.sink.decode(obj);
            } catch (DecoderException e2) {
                if (DecoderStack.this.getDecoderMonitor() != null) {
                    DecoderStack.this.getDecoderMonitor().fatalError(DecoderStack.this, e2);
                }
                throw new RuntimeException(e2);
            }
        }
    }
}
