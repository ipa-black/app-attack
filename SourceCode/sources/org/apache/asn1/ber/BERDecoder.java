package org.apache.asn1.ber;

import java.nio.ByteBuffer;
import java.util.Stack;
import org.apache.asn1.codec.DecoderException;
import org.apache.asn1.codec.stateful.DecoderCallback;
import org.apache.asn1.codec.stateful.DecoderMonitor;
import org.apache.asn1.codec.stateful.DecoderMonitorAdapter;
import org.apache.asn1.codec.stateful.StatefulDecoder;
import org.apache.commons.lang.ArrayUtils;
/* loaded from: classes5.dex */
public class BERDecoder implements StatefulDecoder, DecoderCallback {
    private final LengthDecoder lengthDecoder;
    private BERDecoderState state;
    private final TagDecoder tagDecoder;
    private final Stack tlvStack;
    private static final ByteBuffer EMPTY_BUFFER = ByteBuffer.wrap(ArrayUtils.EMPTY_BYTE_ARRAY);
    private static final BERDecoderCallback DEFAULT_CALLBACK = new BERDecoderCallbackAdapter();
    private static final DecoderMonitor DEFAULT_MONITOR = new DecoderMonitorAdapter();
    private BERDecoderCallback cb = DEFAULT_CALLBACK;
    private DecoderMonitor monitor = DEFAULT_MONITOR;
    private final Tuple tlv = new Tuple();

    public BERDecoder() {
        TagDecoder tagDecoder = new TagDecoder();
        this.tagDecoder = tagDecoder;
        LengthDecoder lengthDecoder = new LengthDecoder();
        this.lengthDecoder = lengthDecoder;
        this.tlvStack = new Stack();
        this.state = BERDecoderState.getStartState();
        tagDecoder.setCallback(this);
        lengthDecoder.setCallback(this);
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void decode(Object obj) throws DecoderException {
        DecoderMonitor decoderMonitor;
        DecoderMonitor decoderMonitor2;
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        if (byteBuffer == null && (decoderMonitor2 = this.monitor) != null) {
            decoderMonitor2.warning(this, new IllegalArgumentException("ignoring null argument to decode()"));
        } else if (byteBuffer.remaining() == 0 && (decoderMonitor = this.monitor) != null) {
            decoderMonitor.warning(this, new IllegalArgumentException("ignoring empty buffer"));
        } else {
            while (byteBuffer.hasRemaining()) {
                int value = this.state.getValue();
                if (value == 0) {
                    this.tagDecoder.decode(byteBuffer);
                } else if (value == 1) {
                    this.lengthDecoder.decode(byteBuffer);
                } else if (value == 2) {
                    decodeValue(byteBuffer);
                }
            }
        }
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void setCallback(DecoderCallback decoderCallback) {
        this.cb = (BERDecoderCallback) decoderCallback;
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void setDecoderMonitor(DecoderMonitor decoderMonitor) {
        this.monitor = decoderMonitor;
    }

    private void decodeValue(ByteBuffer byteBuffer) {
        int i;
        if (this.tlv.valueIndex == -1) {
            i = this.tlv.length;
        } else {
            i = this.tlv.length - this.tlv.valueIndex;
        }
        if (byteBuffer.remaining() >= i) {
            this.tlv.valueChunk = (ByteBuffer) byteBuffer.slice().limit(i);
            byteBuffer.position(byteBuffer.position() + i);
            Tuple tuple = this.tlv;
            tuple.valueIndex = tuple.length;
            this.tlv.index += this.tlv.length;
            this.cb.partialValueDecoded(this.tlv);
            fireDecodeOccurred(this.tlv);
            updateStack(i);
            this.tlv.clear();
            this.state = BERDecoderState.TAG;
            return;
        }
        if (this.tlv.valueIndex == -1) {
            this.tlv.valueIndex = 0;
        }
        int remaining = byteBuffer.remaining();
        this.tlv.valueChunk = byteBuffer.slice();
        byteBuffer.position(byteBuffer.limit());
        this.tlv.valueIndex += remaining;
        this.tlv.index += remaining;
        this.cb.partialValueDecoded(this.tlv);
        updateStack(remaining);
    }

    @Override // org.apache.asn1.codec.stateful.DecoderCallback
    public void decodeOccurred(StatefulDecoder statefulDecoder, Object obj) {
        if (statefulDecoder == this.tagDecoder) {
            Tag tag = (Tag) obj;
            this.tlv.rawTag = tag.getRawTag();
            this.tlv.id = tag.getId();
            this.tlv.isPrimitive = tag.isPrimitive();
            this.tlv.typeClass = tag.getTypeClass();
            this.tlv.index = tag.size();
            if (!this.tlv.isIndefiniteTerminator()) {
                fireTagDecoded();
                updateStack(tag.size());
            }
            this.state = this.state.getNext(tag.isPrimitive());
        } else if (statefulDecoder == this.lengthDecoder) {
            Length length = (Length) obj;
            this.tlv.length = length.getLength();
            if (this.tlv.length == -2) {
                this.tlv.index = -2;
                this.tlv.valueIndex = -2;
            } else {
                this.tlv.index += length.size();
            }
            if (!this.tlv.isIndefiniteTerminator()) {
                fireLengthDecoded();
            }
            updateStack(length.size());
            if (!this.tlv.isPrimitive) {
                if (this.tlv.isIndefinite() || this.tlv.length > 0) {
                    this.tlvStack.push(this.tlv.clone());
                } else {
                    this.state = BERDecoderState.VALUE;
                    fireDecodeOccurred(this.tlv);
                }
                this.state = BERDecoderState.TAG;
                this.tlv.clear();
            } else if (this.tlv.isIndefiniteTerminator()) {
            } else {
                if (this.tlv.length > 0) {
                    this.state = BERDecoderState.VALUE;
                    return;
                }
                this.state = BERDecoderState.VALUE;
                this.tlv.valueChunk = EMPTY_BUFFER;
                this.cb.partialValueDecoded(this.tlv);
                fireDecodeOccurred(this.tlv);
                this.state = BERDecoderState.TAG;
            }
        } else {
            throw new IllegalArgumentException("unrecognized decoder");
        }
    }

    private void fireTagDecoded() {
        BERDecoderCallback bERDecoderCallback = this.cb;
        if (bERDecoderCallback != null) {
            bERDecoderCallback.tagDecoded(this.tlv);
        }
        DecoderMonitor decoderMonitor = this.monitor;
        if (decoderMonitor == null || !(decoderMonitor instanceof BERDecoderMonitor)) {
            return;
        }
        ((BERDecoderMonitor) decoderMonitor).tagDecoded(this.tlv);
    }

    private void fireLengthDecoded() {
        BERDecoderCallback bERDecoderCallback = this.cb;
        if (bERDecoderCallback != null) {
            bERDecoderCallback.lengthDecoded(this.tlv);
        }
        DecoderMonitor decoderMonitor = this.monitor;
        if (decoderMonitor == null || !(decoderMonitor instanceof BERDecoderMonitor)) {
            return;
        }
        ((BERDecoderMonitor) decoderMonitor).lengthDecoded(this.tlv);
    }

    private void fireDecodeOccurred(Tuple tuple) {
        BERDecoderCallback bERDecoderCallback = this.cb;
        if (bERDecoderCallback != null) {
            bERDecoderCallback.decodeOccurred(this, tuple);
        }
        DecoderMonitor decoderMonitor = this.monitor;
        if (decoderMonitor != null) {
            decoderMonitor.callbackOccured(this, this.cb, tuple);
        }
    }

    private void updateStack(int i) {
        for (int i2 = 0; i2 < this.tlvStack.size(); i2++) {
            Tuple tuple = (Tuple) this.tlvStack.get(i2);
            if (!tuple.isIndefinite()) {
                tuple.index += i;
                if (tuple.valueIndex == -1) {
                    tuple.valueIndex = 0;
                }
                tuple.valueIndex += i;
            }
        }
        if (this.tlvStack.isEmpty()) {
            return;
        }
        do {
            Tuple tuple2 = (Tuple) this.tlvStack.peek();
            if (tuple2.isIndefinite() && this.tlv.isIndefiniteTerminator()) {
                this.tlvStack.pop();
                this.state = BERDecoderState.VALUE;
                fireDecodeOccurred(tuple2);
                this.state = BERDecoderState.TAG;
                return;
            } else if (tuple2.isIndefinite() || tuple2.valueIndex < tuple2.length) {
                return;
            } else {
                this.tlvStack.pop();
                this.state = BERDecoderState.VALUE;
                fireDecodeOccurred(tuple2);
                this.state = BERDecoderState.TAG;
            }
        } while (this.tlvStack.size() > 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BERDecoderState getState() {
        return this.state;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tuple getCurrentTuple() {
        return (Tuple) this.tlv.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Stack getTupleStack() {
        Stack stack = new Stack();
        for (int i = 0; i < this.tlvStack.size(); i++) {
            stack.add(((Tuple) this.tlvStack.get(i)).clone());
        }
        return stack;
    }
}
