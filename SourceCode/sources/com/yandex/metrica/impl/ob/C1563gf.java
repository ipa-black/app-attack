package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.gf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1563gf extends MessageNano {
    private static byte[] k;
    private static volatile boolean l;

    /* renamed from: a  reason: collision with root package name */
    public C1687lf f14792a;

    /* renamed from: b  reason: collision with root package name */
    public C1488df f14793b;

    /* renamed from: c  reason: collision with root package name */
    public String f14794c;

    /* renamed from: d  reason: collision with root package name */
    public int f14795d;

    /* renamed from: e  reason: collision with root package name */
    public C1637jf[] f14796e;

    /* renamed from: f  reason: collision with root package name */
    public int f14797f;

    /* renamed from: g  reason: collision with root package name */
    public a f14798g;

    /* renamed from: h  reason: collision with root package name */
    public byte[] f14799h;
    public byte[] i;
    public C1538ff[] j;

    /* renamed from: com.yandex.metrica.impl.ob.gf$a */
    /* loaded from: classes5.dex */
    public static final class a extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f14800a;

        /* renamed from: b  reason: collision with root package name */
        public Cif f14801b;

        public a() {
            a();
        }

        public a a() {
            this.f14800a = WireFormatNano.EMPTY_BYTES;
            this.f14801b = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!Arrays.equals(this.f14800a, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f14800a);
            }
            Cif cif = this.f14801b;
            return cif != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, cif) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f14800a = codedInputByteBufferNano.readBytes();
                } else if (readTag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    if (this.f14801b == null) {
                        this.f14801b = new Cif();
                    }
                    codedInputByteBufferNano.readMessage(this.f14801b);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!Arrays.equals(this.f14800a, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(1, this.f14800a);
            }
            Cif cif = this.f14801b;
            if (cif != null) {
                codedOutputByteBufferNano.writeMessage(2, cif);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C1563gf() {
        if (!l) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (!l) {
                    k = InternalNano.bytesDefaultValue("JVM");
                    l = true;
                }
            }
        }
        a();
    }

    public C1563gf a() {
        this.f14792a = null;
        this.f14793b = null;
        this.f14794c = "";
        this.f14795d = -1;
        this.f14796e = C1637jf.b();
        this.f14797f = 0;
        this.f14798g = null;
        this.f14799h = (byte[]) k.clone();
        this.i = WireFormatNano.EMPTY_BYTES;
        this.j = C1538ff.b();
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1687lf c1687lf = this.f14792a;
        if (c1687lf != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1687lf);
        }
        C1488df c1488df = this.f14793b;
        if (c1488df != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c1488df);
        }
        if (!this.f14794c.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.f14794c);
        }
        int i = this.f14795d;
        if (i != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i);
        }
        C1637jf[] c1637jfArr = this.f14796e;
        int i2 = 0;
        if (c1637jfArr != null && c1637jfArr.length > 0) {
            int i3 = 0;
            while (true) {
                C1637jf[] c1637jfArr2 = this.f14796e;
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
        int i4 = this.f14797f;
        if (i4 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i4);
        }
        a aVar = this.f14798g;
        if (aVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, aVar);
        }
        if (!Arrays.equals(this.f14799h, k)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(8, this.f14799h);
        }
        if (!Arrays.equals(this.i, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(9, this.i);
        }
        C1538ff[] c1538ffArr = this.j;
        if (c1538ffArr != null && c1538ffArr.length > 0) {
            while (true) {
                C1538ff[] c1538ffArr2 = this.j;
                if (i2 >= c1538ffArr2.length) {
                    break;
                }
                C1538ff c1538ff = c1538ffArr2[i2];
                if (c1538ff != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(10, c1538ff);
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
                    if (this.f14792a == null) {
                        this.f14792a = new C1687lf();
                    }
                    codedInputByteBufferNano.readMessage(this.f14792a);
                    break;
                case 18:
                    if (this.f14793b == null) {
                        this.f14793b = new C1488df();
                    }
                    codedInputByteBufferNano.readMessage(this.f14793b);
                    break;
                case 26:
                    this.f14794c = codedInputByteBufferNano.readString();
                    break;
                case 32:
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 != -1 && readInt32 != 0 && readInt32 != 1) {
                        break;
                    } else {
                        this.f14795d = readInt32;
                        break;
                    }
                case 42:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 42);
                    C1637jf[] c1637jfArr = this.f14796e;
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
                    this.f14796e = c1637jfArr2;
                    break;
                case 48:
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    if (readInt322 != 0 && readInt322 != 1) {
                        break;
                    } else {
                        this.f14797f = readInt322;
                        break;
                    }
                case 58:
                    if (this.f14798g == null) {
                        this.f14798g = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.f14798g);
                    break;
                case 66:
                    this.f14799h = codedInputByteBufferNano.readBytes();
                    break;
                case 74:
                    this.i = codedInputByteBufferNano.readBytes();
                    break;
                case 82:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 82);
                    C1538ff[] c1538ffArr = this.j;
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
                    this.j = c1538ffArr2;
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
        C1687lf c1687lf = this.f14792a;
        if (c1687lf != null) {
            codedOutputByteBufferNano.writeMessage(1, c1687lf);
        }
        C1488df c1488df = this.f14793b;
        if (c1488df != null) {
            codedOutputByteBufferNano.writeMessage(2, c1488df);
        }
        if (!this.f14794c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.f14794c);
        }
        int i = this.f14795d;
        if (i != -1) {
            codedOutputByteBufferNano.writeInt32(4, i);
        }
        C1637jf[] c1637jfArr = this.f14796e;
        int i2 = 0;
        if (c1637jfArr != null && c1637jfArr.length > 0) {
            int i3 = 0;
            while (true) {
                C1637jf[] c1637jfArr2 = this.f14796e;
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
        int i4 = this.f14797f;
        if (i4 != 0) {
            codedOutputByteBufferNano.writeInt32(6, i4);
        }
        a aVar = this.f14798g;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(7, aVar);
        }
        if (!Arrays.equals(this.f14799h, k)) {
            codedOutputByteBufferNano.writeBytes(8, this.f14799h);
        }
        if (!Arrays.equals(this.i, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(9, this.i);
        }
        C1538ff[] c1538ffArr = this.j;
        if (c1538ffArr != null && c1538ffArr.length > 0) {
            while (true) {
                C1538ff[] c1538ffArr2 = this.j;
                if (i2 >= c1538ffArr2.length) {
                    break;
                }
                C1538ff c1538ff = c1538ffArr2[i2];
                if (c1538ff != null) {
                    codedOutputByteBufferNano.writeMessage(10, c1538ff);
                }
                i2++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
