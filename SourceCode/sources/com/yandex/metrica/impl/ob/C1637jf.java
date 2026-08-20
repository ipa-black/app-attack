package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.jf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1637jf extends MessageNano {

    /* renamed from: g  reason: collision with root package name */
    private static volatile C1637jf[] f15005g;

    /* renamed from: a  reason: collision with root package name */
    public String f15006a;

    /* renamed from: b  reason: collision with root package name */
    public String f15007b;

    /* renamed from: c  reason: collision with root package name */
    public int f15008c;

    /* renamed from: d  reason: collision with root package name */
    public String f15009d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f15010e;

    /* renamed from: f  reason: collision with root package name */
    public int f15011f;

    public C1637jf() {
        a();
    }

    public static C1637jf[] b() {
        if (f15005g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f15005g == null) {
                    f15005g = new C1637jf[0];
                }
            }
        }
        return f15005g;
    }

    public C1637jf a() {
        this.f15006a = "";
        this.f15007b = "";
        this.f15008c = -1;
        this.f15009d = "";
        this.f15010e = false;
        this.f15011f = -1;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f15006a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f15006a);
        }
        if (!this.f15007b.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f15007b);
        }
        int i = this.f15008c;
        if (i != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(3, i);
        }
        if (!this.f15009d.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(4, this.f15009d);
        }
        boolean z = this.f15010e;
        if (z) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(5, z);
        }
        int i2 = this.f15011f;
        return i2 != -1 ? computeSerializedSize + CodedOutputByteBufferNano.computeSInt32Size(6, i2) : computeSerializedSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag == 10) {
                this.f15006a = codedInputByteBufferNano.readString();
            } else if (readTag == 18) {
                this.f15007b = codedInputByteBufferNano.readString();
            } else if (readTag == 24) {
                this.f15008c = codedInputByteBufferNano.readSInt32();
            } else if (readTag == 34) {
                this.f15009d = codedInputByteBufferNano.readString();
            } else if (readTag == 40) {
                this.f15010e = codedInputByteBufferNano.readBool();
            } else if (readTag != 48) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                this.f15011f = codedInputByteBufferNano.readSInt32();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        if (!this.f15006a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f15006a);
        }
        if (!this.f15007b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f15007b);
        }
        int i = this.f15008c;
        if (i != -1) {
            codedOutputByteBufferNano.writeSInt32(3, i);
        }
        if (!this.f15009d.equals("")) {
            codedOutputByteBufferNano.writeString(4, this.f15009d);
        }
        boolean z = this.f15010e;
        if (z) {
            codedOutputByteBufferNano.writeBool(5, z);
        }
        int i2 = this.f15011f;
        if (i2 != -1) {
            codedOutputByteBufferNano.writeSInt32(6, i2);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
