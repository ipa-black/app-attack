package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.ef  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1513ef extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public C1488df f14681a;

    /* renamed from: b  reason: collision with root package name */
    public String f14682b;

    /* renamed from: c  reason: collision with root package name */
    public int f14683c;

    public C1513ef() {
        a();
    }

    public C1513ef a() {
        this.f14681a = null;
        this.f14682b = "";
        this.f14683c = -1;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1488df c1488df = this.f14681a;
        if (c1488df != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1488df);
        }
        if (!this.f14682b.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f14682b);
        }
        int i = this.f14683c;
        return i != -1 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, i) : computeSerializedSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag == 10) {
                if (this.f14681a == null) {
                    this.f14681a = new C1488df();
                }
                codedInputByteBufferNano.readMessage(this.f14681a);
            } else if (readTag == 18) {
                this.f14682b = codedInputByteBufferNano.readString();
            } else if (readTag != 24) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == -1 || readInt32 == 0 || readInt32 == 1) {
                    this.f14683c = readInt32;
                }
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C1488df c1488df = this.f14681a;
        if (c1488df != null) {
            codedOutputByteBufferNano.writeMessage(1, c1488df);
        }
        if (!this.f14682b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f14682b);
        }
        int i = this.f14683c;
        if (i != -1) {
            codedOutputByteBufferNano.writeInt32(3, i);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
