package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.rf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1834rf extends MessageNano {

    /* renamed from: f  reason: collision with root package name */
    private static volatile C1834rf[] f15647f;

    /* renamed from: a  reason: collision with root package name */
    public String f15648a;

    /* renamed from: b  reason: collision with root package name */
    public int f15649b;

    /* renamed from: c  reason: collision with root package name */
    public String f15650c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f15651d;

    /* renamed from: e  reason: collision with root package name */
    public long f15652e;

    public C1834rf() {
        a();
    }

    public static C1834rf[] b() {
        if (f15647f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f15647f == null) {
                    f15647f = new C1834rf[0];
                }
            }
        }
        return f15647f;
    }

    public C1834rf a() {
        this.f15648a = "";
        this.f15649b = 0;
        this.f15650c = "";
        this.f15651d = false;
        this.f15652e = 0L;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f15648a);
        int i = this.f15649b;
        if (i != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(2, i);
        }
        if (!this.f15650c.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.f15650c);
        }
        boolean z = this.f15651d;
        if (z) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(4, z);
        }
        long j = this.f15652e;
        return j != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeUInt64Size(5, j) : computeSerializedSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag == 10) {
                this.f15648a = codedInputByteBufferNano.readString();
            } else if (readTag == 16) {
                this.f15649b = codedInputByteBufferNano.readSInt32();
            } else if (readTag == 26) {
                this.f15650c = codedInputByteBufferNano.readString();
            } else if (readTag == 32) {
                this.f15651d = codedInputByteBufferNano.readBool();
            } else if (readTag != 40) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                this.f15652e = codedInputByteBufferNano.readUInt64();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        codedOutputByteBufferNano.writeString(1, this.f15648a);
        int i = this.f15649b;
        if (i != 0) {
            codedOutputByteBufferNano.writeSInt32(2, i);
        }
        if (!this.f15650c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.f15650c);
        }
        boolean z = this.f15651d;
        if (z) {
            codedOutputByteBufferNano.writeBool(4, z);
        }
        long j = this.f15652e;
        if (j != 0) {
            codedOutputByteBufferNano.writeUInt64(5, j);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
