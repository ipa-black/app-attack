package org.apache.asn1.ber;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Stack;
import org.apache.asn1.codec.DecoderException;
import org.apache.asn1.codec.stateful.CallbackHistory;
import org.apache.asn1.codec.stateful.DecoderCallback;
import org.apache.asn1.codec.stateful.DecoderMonitor;
import org.apache.asn1.codec.stateful.DecoderMonitorAdapter;
import org.apache.asn1.codec.stateful.StatefulDecoder;
/* loaded from: classes5.dex */
public class TupleTreeDecoder implements StatefulDecoder {
    Stack stack = new Stack();
    BERDecoder decoder = new BERDecoder();
    DecoderCallback cb = null;
    DecoderMonitor monitor = new DecoderMonitorAdapter();
    ArrayList valueChunks = new ArrayList();

    public TupleTreeDecoder() {
        this.decoder.setCallback(new BERDecoderCallback() { // from class: org.apache.asn1.ber.TupleTreeDecoder.1
            @Override // org.apache.asn1.ber.BERDecoderCallback
            public void tagDecoded(Tuple tuple) {
            }

            @Override // org.apache.asn1.ber.BERDecoderCallback
            public void partialValueDecoded(Tuple tuple) {
                ByteBuffer allocate = ByteBuffer.allocate(tuple.getLastValueChunk().remaining());
                allocate.put(tuple.getLastValueChunk());
                tuple.getLastValueChunk().rewind();
                allocate.rewind();
                TupleTreeDecoder.this.valueChunks.add(allocate);
            }

            @Override // org.apache.asn1.ber.BERDecoderCallback
            public void lengthDecoded(Tuple tuple) {
                if (tuple.isPrimitive) {
                    return;
                }
                Tuple tuple2 = (Tuple) tuple.clone();
                if (TupleTreeDecoder.this.stack.isEmpty()) {
                    TupleTreeDecoder.this.stack.push(new DefaultMutableTupleNode(tuple2));
                    return;
                }
                DefaultMutableTupleNode defaultMutableTupleNode = (DefaultMutableTupleNode) TupleTreeDecoder.this.stack.peek();
                DefaultMutableTupleNode defaultMutableTupleNode2 = new DefaultMutableTupleNode(tuple2);
                defaultMutableTupleNode2.setParent(defaultMutableTupleNode);
                defaultMutableTupleNode.addLast(defaultMutableTupleNode2);
                TupleTreeDecoder.this.stack.push(defaultMutableTupleNode2);
            }

            @Override // org.apache.asn1.codec.stateful.DecoderCallback
            public void decodeOccurred(StatefulDecoder statefulDecoder, Object obj) {
                TupleTreeDecoder.this.handleTuple((Tuple) obj);
            }
        });
        this.decoder.setDecoderMonitor(this.monitor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTuple(Tuple tuple) {
        if (tuple.isPrimitive) {
            DefaultMutableTupleNode defaultMutableTupleNode = new DefaultMutableTupleNode((Tuple) tuple.clone(), this.valueChunks);
            this.valueChunks.clear();
            if (this.stack.isEmpty()) {
                return;
            }
            DefaultMutableTupleNode defaultMutableTupleNode2 = (DefaultMutableTupleNode) this.stack.peek();
            defaultMutableTupleNode.setParent(defaultMutableTupleNode2);
            defaultMutableTupleNode2.addLast(defaultMutableTupleNode);
            return;
        }
        DefaultMutableTupleNode defaultMutableTupleNode3 = (DefaultMutableTupleNode) this.stack.pop();
        if (this.cb == null || !this.stack.isEmpty()) {
            return;
        }
        this.cb.decodeOccurred(this, defaultMutableTupleNode3);
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void decode(Object obj) throws DecoderException {
        this.decoder.decode(obj);
    }

    public static TupleNode treeDecode(ByteBuffer byteBuffer) throws DecoderException {
        TupleTreeDecoder tupleTreeDecoder = new TupleTreeDecoder();
        CallbackHistory callbackHistory = new CallbackHistory(1);
        tupleTreeDecoder.setCallback(callbackHistory);
        tupleTreeDecoder.decode(byteBuffer);
        if (callbackHistory.isEmpty()) {
            return null;
        }
        return (TupleNode) callbackHistory.getMostRecent();
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void setCallback(DecoderCallback decoderCallback) {
        this.cb = decoderCallback;
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void setDecoderMonitor(DecoderMonitor decoderMonitor) {
        this.monitor = decoderMonitor;
        this.decoder.setDecoderMonitor(decoderMonitor);
    }
}
