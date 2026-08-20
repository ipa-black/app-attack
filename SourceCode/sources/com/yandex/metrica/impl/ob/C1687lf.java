package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.lf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1687lf extends MessageNano {

    /* renamed from: f  reason: collision with root package name */
    private static volatile C1687lf[] f15083f;

    /* renamed from: a  reason: collision with root package name */
    public String f15084a;

    /* renamed from: b  reason: collision with root package name */
    public String f15085b;

    /* renamed from: c  reason: collision with root package name */
    public C1637jf[] f15086c;

    /* renamed from: d  reason: collision with root package name */
    public C1687lf f15087d;

    /* renamed from: e  reason: collision with root package name */
    public C1687lf[] f15088e;

    public C1687lf() {
        a();
    }

    public C1687lf a() {
        this.f15084a = "";
        this.f15085b = "";
        this.f15086c = C1637jf.b();
        this.f15087d = null;
        if (f15083f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (f15083f == null) {
                    f15083f = new C1687lf[0];
                }
            }
        }
        this.f15088e = f15083f;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f15084a);
        if (!this.f15085b.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f15085b);
        }
        C1637jf[] c1637jfArr = this.f15086c;
        int i = 0;
        if (c1637jfArr != null && c1637jfArr.length > 0) {
            int i2 = 0;
            while (true) {
                C1637jf[] c1637jfArr2 = this.f15086c;
                if (i2 >= c1637jfArr2.length) {
                    break;
                }
                C1637jf c1637jf = c1637jfArr2[i2];
                if (c1637jf != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, c1637jf);
                }
                i2++;
            }
        }
        C1687lf c1687lf = this.f15087d;
        if (c1687lf != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, c1687lf);
        }
        C1687lf[] c1687lfArr = this.f15088e;
        if (c1687lfArr != null && c1687lfArr.length > 0) {
            while (true) {
                C1687lf[] c1687lfArr2 = this.f15088e;
                if (i >= c1687lfArr2.length) {
                    break;
                }
                C1687lf c1687lf2 = c1687lfArr2[i];
                if (c1687lf2 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, c1687lf2);
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
            } else if (readTag == 10) {
                this.f15084a = codedInputByteBufferNano.readString();
            } else if (readTag == 18) {
                this.f15085b = codedInputByteBufferNano.readString();
            } else if (readTag == 26) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                C1637jf[] c1637jfArr = this.f15086c;
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
                this.f15086c = c1637jfArr2;
            } else if (readTag == 34) {
                if (this.f15087d == null) {
                    this.f15087d = new C1687lf();
                }
                codedInputByteBufferNano.readMessage(this.f15087d);
            } else if (readTag != 42) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 42);
                C1687lf[] c1687lfArr = this.f15088e;
                int length2 = c1687lfArr == null ? 0 : c1687lfArr.length;
                int i2 = repeatedFieldArrayLength2 + length2;
                C1687lf[] c1687lfArr2 = new C1687lf[i2];
                if (length2 != 0) {
                    System.arraycopy(c1687lfArr, 0, c1687lfArr2, 0, length2);
                }
                while (length2 < i2 - 1) {
                    C1687lf c1687lf = new C1687lf();
                    c1687lfArr2[length2] = c1687lf;
                    codedInputByteBufferNano.readMessage(c1687lf);
                    codedInputByteBufferNano.readTag();
                    length2++;
                }
                C1687lf c1687lf2 = new C1687lf();
                c1687lfArr2[length2] = c1687lf2;
                codedInputByteBufferNano.readMessage(c1687lf2);
                this.f15088e = c1687lfArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        codedOutputByteBufferNano.writeString(1, this.f15084a);
        if (!this.f15085b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.f15085b);
        }
        C1637jf[] c1637jfArr = this.f15086c;
        int i = 0;
        if (c1637jfArr != null && c1637jfArr.length > 0) {
            int i2 = 0;
            while (true) {
                C1637jf[] c1637jfArr2 = this.f15086c;
                if (i2 >= c1637jfArr2.length) {
                    break;
                }
                C1637jf c1637jf = c1637jfArr2[i2];
                if (c1637jf != null) {
                    codedOutputByteBufferNano.writeMessage(3, c1637jf);
                }
                i2++;
            }
        }
        C1687lf c1687lf = this.f15087d;
        if (c1687lf != null) {
            codedOutputByteBufferNano.writeMessage(4, c1687lf);
        }
        C1687lf[] c1687lfArr = this.f15088e;
        if (c1687lfArr != null && c1687lfArr.length > 0) {
            while (true) {
                C1687lf[] c1687lfArr2 = this.f15088e;
                if (i >= c1687lfArr2.length) {
                    break;
                }
                C1687lf c1687lf2 = c1687lfArr2[i];
                if (c1687lf2 != null) {
                    codedOutputByteBufferNano.writeMessage(5, c1687lf2);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
