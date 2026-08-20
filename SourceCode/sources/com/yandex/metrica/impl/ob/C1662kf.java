package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.kf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1662kf extends MessageNano {

    /* renamed from: g  reason: collision with root package name */
    private static volatile C1662kf[] f15025g;

    /* renamed from: a  reason: collision with root package name */
    public String f15026a;

    /* renamed from: b  reason: collision with root package name */
    public int f15027b;

    /* renamed from: c  reason: collision with root package name */
    public long f15028c;

    /* renamed from: d  reason: collision with root package name */
    public String f15029d;

    /* renamed from: e  reason: collision with root package name */
    public int f15030e;

    /* renamed from: f  reason: collision with root package name */
    public C1637jf[] f15031f;

    public C1662kf() {
        a();
    }

    public static C1662kf[] b() {
        if (f15025g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f15025g == null) {
                    f15025g = new C1662kf[0];
                }
            }
        }
        return f15025g;
    }

    public C1662kf a() {
        this.f15026a = "";
        this.f15027b = 0;
        this.f15028c = 0L;
        this.f15029d = "";
        this.f15030e = 0;
        this.f15031f = C1637jf.b();
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f15026a) + CodedOutputByteBufferNano.computeSInt32Size(2, this.f15027b) + CodedOutputByteBufferNano.computeSInt64Size(3, this.f15028c);
        if (!this.f15029d.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(4, this.f15029d);
        }
        int i = this.f15030e;
        if (i != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(5, i);
        }
        C1637jf[] c1637jfArr = this.f15031f;
        if (c1637jfArr != null && c1637jfArr.length > 0) {
            int i2 = 0;
            while (true) {
                C1637jf[] c1637jfArr2 = this.f15031f;
                if (i2 >= c1637jfArr2.length) {
                    break;
                }
                C1637jf c1637jf = c1637jfArr2[i2];
                if (c1637jf != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(6, c1637jf);
                }
                i2++;
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
            } else if (readTag == 10) {
                this.f15026a = codedInputByteBufferNano.readString();
            } else if (readTag == 16) {
                this.f15027b = codedInputByteBufferNano.readSInt32();
            } else if (readTag == 24) {
                this.f15028c = codedInputByteBufferNano.readSInt64();
            } else if (readTag == 34) {
                this.f15029d = codedInputByteBufferNano.readString();
            } else if (readTag == 40) {
                this.f15030e = codedInputByteBufferNano.readUInt32();
            } else if (readTag != 50) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 50);
                C1637jf[] c1637jfArr = this.f15031f;
                int length = c1637jfArr == null ? 0 : c1637jfArr.length;
                int i = repeatedFieldArrayLength + length;
                C1637jf[] c1637jfArr2 = new C1637jf[i];
                if (length != 0) {
                    System.arraycopy(c1637jfArr, 0, c1637jfArr2, 0, length);
                }
                while (length < i - 1) {
                    C1637jf c1637jf = new C1637jf();
                    c1637jfArr2[length] = c1637jf;
                    codedInputByteBufferNano.readMessage(c1637jf);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1637jf c1637jf2 = new C1637jf();
                c1637jfArr2[length] = c1637jf2;
                codedInputByteBufferNano.readMessage(c1637jf2);
                this.f15031f = c1637jfArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        codedOutputByteBufferNano.writeString(1, this.f15026a);
        codedOutputByteBufferNano.writeSInt32(2, this.f15027b);
        codedOutputByteBufferNano.writeSInt64(3, this.f15028c);
        if (!this.f15029d.equals("")) {
            codedOutputByteBufferNano.writeString(4, this.f15029d);
        }
        int i = this.f15030e;
        if (i != 0) {
            codedOutputByteBufferNano.writeUInt32(5, i);
        }
        C1637jf[] c1637jfArr = this.f15031f;
        if (c1637jfArr != null && c1637jfArr.length > 0) {
            int i2 = 0;
            while (true) {
                C1637jf[] c1637jfArr2 = this.f15031f;
                if (i2 >= c1637jfArr2.length) {
                    break;
                }
                C1637jf c1637jf = c1637jfArr2[i2];
                if (c1637jf != null) {
                    codedOutputByteBufferNano.writeMessage(6, c1637jf);
                }
                i2++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
