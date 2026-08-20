package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.tf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1882tf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public String f15769a;

    /* renamed from: b  reason: collision with root package name */
    public long f15770b;

    /* renamed from: c  reason: collision with root package name */
    public long f15771c;

    /* renamed from: d  reason: collision with root package name */
    public int f15772d;

    public C1882tf() {
        a();
    }

    public C1882tf a() {
        this.f15769a = "";
        this.f15770b = 0L;
        this.f15771c = 0L;
        this.f15772d = 0;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f15769a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f15769a);
        }
        long j = this.f15770b;
        if (j != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(2, j);
        }
        long j2 = this.f15771c;
        if (j2 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(3, j2);
        }
        int i = this.f15772d;
        return i != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(4, i) : computeSerializedSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag == 10) {
                this.f15769a = codedInputByteBufferNano.readString();
            } else if (readTag == 16) {
                this.f15770b = codedInputByteBufferNano.readUInt64();
            } else if (readTag == 24) {
                this.f15771c = codedInputByteBufferNano.readUInt64();
            } else if (readTag != 32) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                int readInt32 = codedInputByteBufferNano.readInt32();
                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2) {
                    this.f15772d = readInt32;
                }
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        if (!this.f15769a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f15769a);
        }
        long j = this.f15770b;
        if (j != 0) {
            codedOutputByteBufferNano.writeUInt64(2, j);
        }
        long j2 = this.f15771c;
        if (j2 != 0) {
            codedOutputByteBufferNano.writeUInt64(3, j2);
        }
        int i = this.f15772d;
        if (i != 0) {
            codedOutputByteBufferNano.writeInt32(4, i);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1882tf a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C1882tf) MessageNano.mergeFrom(new C1882tf(), bArr);
    }
}
