package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.ff  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1538ff extends MessageNano {

    /* renamed from: c  reason: collision with root package name */
    private static volatile C1538ff[] f14747c;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f14748a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f14749b;

    public C1538ff() {
        a();
    }

    public static C1538ff[] b() {
        if (f14747c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f14747c == null) {
                    f14747c = new C1538ff[0];
                }
            }
        }
        return f14747c;
    }

    public C1538ff a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f14748a = bArr;
        this.f14749b = bArr;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!Arrays.equals(this.f14748a, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f14748a);
        }
        return !Arrays.equals(this.f14749b, WireFormatNano.EMPTY_BYTES) ? computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f14749b) : computeSerializedSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag == 10) {
                this.f14748a = codedInputByteBufferNano.readBytes();
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                this.f14749b = codedInputByteBufferNano.readBytes();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        if (!Arrays.equals(this.f14748a, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(1, this.f14748a);
        }
        if (!Arrays.equals(this.f14749b, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(2, this.f14749b);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
