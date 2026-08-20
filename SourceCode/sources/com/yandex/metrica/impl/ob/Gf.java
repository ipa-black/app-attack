package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
/* loaded from: classes5.dex */
public final class Gf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public Hf[] f12984a;

    public Gf() {
        a();
    }

    public Gf a() {
        this.f12984a = Hf.b();
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        Hf[] hfArr = this.f12984a;
        if (hfArr != null && hfArr.length > 0) {
            int i = 0;
            while (true) {
                Hf[] hfArr2 = this.f12984a;
                if (i >= hfArr2.length) {
                    break;
                }
                Hf hf = hfArr2[i];
                if (hf != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, hf);
                }
                i++;
            }
        }
        return computeSerializedSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag != 10) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                Hf[] hfArr = this.f12984a;
                int length = hfArr == null ? 0 : hfArr.length;
                int i = repeatedFieldArrayLength + length;
                Hf[] hfArr2 = new Hf[i];
                if (length != 0) {
                    System.arraycopy(hfArr, 0, hfArr2, 0, length);
                }
                while (length < i - 1) {
                    Hf hf = new Hf();
                    hfArr2[length] = hf;
                    codedInputByteBufferNano.readMessage(hf);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                Hf hf2 = new Hf();
                hfArr2[length] = hf2;
                codedInputByteBufferNano.readMessage(hf2);
                this.f12984a = hfArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        Hf[] hfArr = this.f12984a;
        if (hfArr != null && hfArr.length > 0) {
            int i = 0;
            while (true) {
                Hf[] hfArr2 = this.f12984a;
                if (i >= hfArr2.length) {
                    break;
                }
                Hf hf = hfArr2[i];
                if (hf != null) {
                    codedOutputByteBufferNano.writeMessage(1, hf);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
