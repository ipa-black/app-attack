package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.hf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1588hf extends MessageNano {
    private static byte[] l;
    private static volatile boolean m;

    /* renamed from: a  reason: collision with root package name */
    public C1687lf f14854a;

    /* renamed from: b  reason: collision with root package name */
    public C1488df f14855b;

    /* renamed from: c  reason: collision with root package name */
    public String f14856c;

    /* renamed from: d  reason: collision with root package name */
    public int f14857d;

    /* renamed from: e  reason: collision with root package name */
    public C1637jf[] f14858e;

    /* renamed from: f  reason: collision with root package name */
    public String f14859f;

    /* renamed from: g  reason: collision with root package name */
    public int f14860g;

    /* renamed from: h  reason: collision with root package name */
    public a f14861h;
    public byte[] i;
    public byte[] j;
    public C1538ff[] k;

    /* renamed from: com.yandex.metrica.impl.ob.hf$a */
    /* loaded from: classes5.dex */
    public static final class a extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public String f14862a;

        public a() {
            a();
        }

        public a a() {
            this.f14862a = "";
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f14862a);
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
                    this.f14862a = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeString(1, this.f14862a);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C1588hf() {
        if (!m) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (!m) {
                    l = InternalNano.bytesDefaultValue("JVM");
                    m = true;
                }
            }
        }
        a();
    }

    public C1588hf a() {
        this.f14854a = null;
        this.f14855b = null;
        this.f14856c = "";
        this.f14857d = -1;
        this.f14858e = C1637jf.b();
        this.f14859f = "";
        this.f14860g = 0;
        this.f14861h = null;
        this.i = (byte[]) l.clone();
        this.j = WireFormatNano.EMPTY_BYTES;
        this.k = C1538ff.b();
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1687lf c1687lf = this.f14854a;
        if (c1687lf != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1687lf);
        }
        C1488df c1488df = this.f14855b;
        if (c1488df != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c1488df);
        }
        if (!this.f14856c.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.f14856c);
        }
        int i = this.f14857d;
        if (i != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i);
        }
        C1637jf[] c1637jfArr = this.f14858e;
        int i2 = 0;
        if (c1637jfArr != null && c1637jfArr.length > 0) {
            int i3 = 0;
            while (true) {
                C1637jf[] c1637jfArr2 = this.f14858e;
                if (i3 >= c1637jfArr2.length) {
                    break;
                }
                C1637jf c1637jf = c1637jfArr2[i3];
                if (c1637jf != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, c1637jf);
                }
                i3++;
            }
        }
        if (!this.f14859f.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(6, this.f14859f);
        }
        int i4 = this.f14860g;
        if (i4 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, i4);
        }
        a aVar = this.f14861h;
        if (aVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(8, aVar);
        }
        if (!Arrays.equals(this.i, l)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(9, this.i);
        }
        if (!Arrays.equals(this.j, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(10, this.j);
        }
        C1538ff[] c1538ffArr = this.k;
        if (c1538ffArr != null && c1538ffArr.length > 0) {
            while (true) {
                C1538ff[] c1538ffArr2 = this.k;
                if (i2 >= c1538ffArr2.length) {
                    break;
                }
                C1538ff c1538ff = c1538ffArr2[i2];
                if (c1538ff != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(11, c1538ff);
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
            switch (readTag) {
                case 0:
                    break;
                case 10:
                    if (this.f14854a == null) {
                        this.f14854a = new C1687lf();
                    }
                    codedInputByteBufferNano.readMessage(this.f14854a);
                    break;
                case 18:
                    if (this.f14855b == null) {
                        this.f14855b = new C1488df();
                    }
                    codedInputByteBufferNano.readMessage(this.f14855b);
                    break;
                case 26:
                    this.f14856c = codedInputByteBufferNano.readString();
                    break;
                case 32:
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 != -1 && readInt32 != 0 && readInt32 != 1) {
                        break;
                    } else {
                        this.f14857d = readInt32;
                        break;
                    }
                case 42:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 42);
                    C1637jf[] c1637jfArr = this.f14858e;
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
                    this.f14858e = c1637jfArr2;
                    break;
                case 50:
                    this.f14859f = codedInputByteBufferNano.readString();
                    break;
                case 56:
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    if (readInt322 != 0 && readInt322 != 1) {
                        break;
                    } else {
                        this.f14860g = readInt322;
                        break;
                    }
                case 66:
                    if (this.f14861h == null) {
                        this.f14861h = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.f14861h);
                    break;
                case 74:
                    this.i = codedInputByteBufferNano.readBytes();
                    break;
                case 82:
                    this.j = codedInputByteBufferNano.readBytes();
                    break;
                case 90:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 90);
                    C1538ff[] c1538ffArr = this.k;
                    int length2 = c1538ffArr == null ? 0 : c1538ffArr.length;
                    int i2 = repeatedFieldArrayLength2 + length2;
                    C1538ff[] c1538ffArr2 = new C1538ff[i2];
                    if (length2 != 0) {
                        System.arraycopy(c1538ffArr, 0, c1538ffArr2, 0, length2);
                    }
                    while (length2 < i2 - 1) {
                        C1538ff c1538ff = new C1538ff();
                        c1538ffArr2[length2] = c1538ff;
                        codedInputByteBufferNano.readMessage(c1538ff);
                        codedInputByteBufferNano.readTag();
                        length2++;
                    }
                    C1538ff c1538ff2 = new C1538ff();
                    c1538ffArr2[length2] = c1538ff2;
                    codedInputByteBufferNano.readMessage(c1538ff2);
                    this.k = c1538ffArr2;
                    break;
                default:
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    } else {
                        break;
                    }
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C1687lf c1687lf = this.f14854a;
        if (c1687lf != null) {
            codedOutputByteBufferNano.writeMessage(1, c1687lf);
        }
        C1488df c1488df = this.f14855b;
        if (c1488df != null) {
            codedOutputByteBufferNano.writeMessage(2, c1488df);
        }
        if (!this.f14856c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.f14856c);
        }
        int i = this.f14857d;
        if (i != -1) {
            codedOutputByteBufferNano.writeInt32(4, i);
        }
        C1637jf[] c1637jfArr = this.f14858e;
        int i2 = 0;
        if (c1637jfArr != null && c1637jfArr.length > 0) {
            int i3 = 0;
            while (true) {
                C1637jf[] c1637jfArr2 = this.f14858e;
                if (i3 >= c1637jfArr2.length) {
                    break;
                }
                C1637jf c1637jf = c1637jfArr2[i3];
                if (c1637jf != null) {
                    codedOutputByteBufferNano.writeMessage(5, c1637jf);
                }
                i3++;
            }
        }
        if (!this.f14859f.equals("")) {
            codedOutputByteBufferNano.writeString(6, this.f14859f);
        }
        int i4 = this.f14860g;
        if (i4 != 0) {
            codedOutputByteBufferNano.writeInt32(7, i4);
        }
        a aVar = this.f14861h;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(8, aVar);
        }
        if (!Arrays.equals(this.i, l)) {
            codedOutputByteBufferNano.writeBytes(9, this.i);
        }
        if (!Arrays.equals(this.j, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(10, this.j);
        }
        C1538ff[] c1538ffArr = this.k;
        if (c1538ffArr != null && c1538ffArr.length > 0) {
            while (true) {
                C1538ff[] c1538ffArr2 = this.k;
                if (i2 >= c1538ffArr2.length) {
                    break;
                }
                C1538ff c1538ff = c1538ffArr2[i2];
                if (c1538ff != null) {
                    codedOutputByteBufferNano.writeMessage(11, c1538ff);
                }
                i2++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
