package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.pf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1787pf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public b[] f15375a;

    /* renamed from: b  reason: collision with root package name */
    public a[] f15376b;

    /* renamed from: com.yandex.metrica.impl.ob.pf$a */
    /* loaded from: classes5.dex */
    public static final class a extends MessageNano {

        /* renamed from: h  reason: collision with root package name */
        private static volatile a[] f15377h;

        /* renamed from: a  reason: collision with root package name */
        public long f15378a;

        /* renamed from: b  reason: collision with root package name */
        public long f15379b;

        /* renamed from: c  reason: collision with root package name */
        public C1762of[] f15380c;

        /* renamed from: d  reason: collision with root package name */
        public C1834rf[] f15381d;

        /* renamed from: e  reason: collision with root package name */
        public long f15382e;

        /* renamed from: f  reason: collision with root package name */
        public int f15383f;

        /* renamed from: g  reason: collision with root package name */
        public int f15384g;

        public a() {
            a();
        }

        public static a[] b() {
            if (f15377h == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f15377h == null) {
                        f15377h = new a[0];
                    }
                }
            }
            return f15377h;
        }

        public a a() {
            this.f15378a = 0L;
            this.f15379b = 0L;
            this.f15380c = C1762of.b();
            this.f15381d = C1834rf.b();
            this.f15382e = 0L;
            this.f15383f = 0;
            this.f15384g = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeUInt64Size(1, this.f15378a) + CodedOutputByteBufferNano.computeUInt64Size(2, this.f15379b);
            C1762of[] c1762ofArr = this.f15380c;
            int i = 0;
            if (c1762ofArr != null && c1762ofArr.length > 0) {
                int i2 = 0;
                while (true) {
                    C1762of[] c1762ofArr2 = this.f15380c;
                    if (i2 >= c1762ofArr2.length) {
                        break;
                    }
                    C1762of c1762of = c1762ofArr2[i2];
                    if (c1762of != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, c1762of);
                    }
                    i2++;
                }
            }
            C1834rf[] c1834rfArr = this.f15381d;
            if (c1834rfArr != null && c1834rfArr.length > 0) {
                while (true) {
                    C1834rf[] c1834rfArr2 = this.f15381d;
                    if (i >= c1834rfArr2.length) {
                        break;
                    }
                    C1834rf c1834rf = c1834rfArr2[i];
                    if (c1834rf != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, c1834rf);
                    }
                    i++;
                }
            }
            long j = this.f15382e;
            if (j != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(5, j);
            }
            int i3 = this.f15383f;
            if (i3 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i3);
            }
            int i4 = this.f15384g;
            return i4 != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(7, i4) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    this.f15378a = codedInputByteBufferNano.readUInt64();
                } else if (readTag == 16) {
                    this.f15379b = codedInputByteBufferNano.readUInt64();
                } else if (readTag == 26) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                    C1762of[] c1762ofArr = this.f15380c;
                    int length = c1762ofArr == null ? 0 : c1762ofArr.length;
                    int i = repeatedFieldArrayLength + length;
                    C1762of[] c1762ofArr2 = new C1762of[i];
                    if (length != 0) {
                        System.arraycopy(c1762ofArr, 0, c1762ofArr2, 0, length);
                    }
                    while (length < i - 1) {
                        C1762of c1762of = new C1762of();
                        c1762ofArr2[length] = c1762of;
                        codedInputByteBufferNano.readMessage(c1762of);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    C1762of c1762of2 = new C1762of();
                    c1762ofArr2[length] = c1762of2;
                    codedInputByteBufferNano.readMessage(c1762of2);
                    this.f15380c = c1762ofArr2;
                } else if (readTag == 34) {
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                    C1834rf[] c1834rfArr = this.f15381d;
                    int length2 = c1834rfArr == null ? 0 : c1834rfArr.length;
                    int i2 = repeatedFieldArrayLength2 + length2;
                    C1834rf[] c1834rfArr2 = new C1834rf[i2];
                    if (length2 != 0) {
                        System.arraycopy(c1834rfArr, 0, c1834rfArr2, 0, length2);
                    }
                    while (length2 < i2 - 1) {
                        C1834rf c1834rf = new C1834rf();
                        c1834rfArr2[length2] = c1834rf;
                        codedInputByteBufferNano.readMessage(c1834rf);
                        codedInputByteBufferNano.readTag();
                        length2++;
                    }
                    C1834rf c1834rf2 = new C1834rf();
                    c1834rfArr2[length2] = c1834rf2;
                    codedInputByteBufferNano.readMessage(c1834rf2);
                    this.f15381d = c1834rfArr2;
                } else if (readTag == 40) {
                    this.f15382e = codedInputByteBufferNano.readUInt64();
                } else if (readTag == 48) {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3 || readInt32 == 4) {
                        this.f15383f = readInt32;
                    }
                } else if (readTag != 56) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    if (readInt322 == 0 || readInt322 == 1 || readInt322 == 2 || readInt322 == 3) {
                        this.f15384g = readInt322;
                    }
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeUInt64(1, this.f15378a);
            codedOutputByteBufferNano.writeUInt64(2, this.f15379b);
            C1762of[] c1762ofArr = this.f15380c;
            int i = 0;
            if (c1762ofArr != null && c1762ofArr.length > 0) {
                int i2 = 0;
                while (true) {
                    C1762of[] c1762ofArr2 = this.f15380c;
                    if (i2 >= c1762ofArr2.length) {
                        break;
                    }
                    C1762of c1762of = c1762ofArr2[i2];
                    if (c1762of != null) {
                        codedOutputByteBufferNano.writeMessage(3, c1762of);
                    }
                    i2++;
                }
            }
            C1834rf[] c1834rfArr = this.f15381d;
            if (c1834rfArr != null && c1834rfArr.length > 0) {
                while (true) {
                    C1834rf[] c1834rfArr2 = this.f15381d;
                    if (i >= c1834rfArr2.length) {
                        break;
                    }
                    C1834rf c1834rf = c1834rfArr2[i];
                    if (c1834rf != null) {
                        codedOutputByteBufferNano.writeMessage(4, c1834rf);
                    }
                    i++;
                }
            }
            long j = this.f15382e;
            if (j != 0) {
                codedOutputByteBufferNano.writeUInt64(5, j);
            }
            int i3 = this.f15383f;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeInt32(6, i3);
            }
            int i4 = this.f15384g;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(7, i4);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.pf$b */
    /* loaded from: classes5.dex */
    public static final class b extends MessageNano {
        private static volatile b[] n;

        /* renamed from: a  reason: collision with root package name */
        public long f15385a;

        /* renamed from: b  reason: collision with root package name */
        public long f15386b;

        /* renamed from: c  reason: collision with root package name */
        public long f15387c;

        /* renamed from: d  reason: collision with root package name */
        public double f15388d;

        /* renamed from: e  reason: collision with root package name */
        public double f15389e;

        /* renamed from: f  reason: collision with root package name */
        public int f15390f;

        /* renamed from: g  reason: collision with root package name */
        public int f15391g;

        /* renamed from: h  reason: collision with root package name */
        public int f15392h;
        public int i;
        public int j;
        public int k;
        public long l;
        public int m;

        public b() {
            a();
        }

        public static b[] b() {
            if (n == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (n == null) {
                        n = new b[0];
                    }
                }
            }
            return n;
        }

        public b a() {
            this.f15385a = 0L;
            this.f15386b = 0L;
            this.f15387c = 0L;
            this.f15388d = 0.0d;
            this.f15389e = 0.0d;
            this.f15390f = 0;
            this.f15391g = 0;
            this.f15392h = 0;
            this.i = 0;
            this.j = 0;
            this.k = 0;
            this.l = 0L;
            this.m = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeUInt64Size(1, this.f15385a) + CodedOutputByteBufferNano.computeUInt64Size(2, this.f15386b);
            long j = this.f15387c;
            if (j != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(3, j);
            }
            int computeDoubleSize = computeSerializedSize + CodedOutputByteBufferNano.computeDoubleSize(4, this.f15388d) + CodedOutputByteBufferNano.computeDoubleSize(5, this.f15389e);
            int i = this.f15390f;
            if (i != 0) {
                computeDoubleSize += CodedOutputByteBufferNano.computeUInt32Size(6, i);
            }
            int i2 = this.f15391g;
            if (i2 != 0) {
                computeDoubleSize += CodedOutputByteBufferNano.computeUInt32Size(7, i2);
            }
            int i3 = this.f15392h;
            if (i3 != 0) {
                computeDoubleSize += CodedOutputByteBufferNano.computeUInt32Size(8, i3);
            }
            int i4 = this.i;
            if (i4 != 0) {
                computeDoubleSize += CodedOutputByteBufferNano.computeInt32Size(9, i4);
            }
            int i5 = this.j;
            if (i5 != 0) {
                computeDoubleSize += CodedOutputByteBufferNano.computeInt32Size(10, i5);
            }
            int i6 = this.k;
            if (i6 != 0) {
                computeDoubleSize += CodedOutputByteBufferNano.computeInt32Size(11, i6);
            }
            long j2 = this.l;
            if (j2 != 0) {
                computeDoubleSize += CodedOutputByteBufferNano.computeUInt64Size(12, j2);
            }
            int i7 = this.m;
            return i7 != 0 ? computeDoubleSize + CodedOutputByteBufferNano.computeInt32Size(13, i7) : computeDoubleSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        break;
                    case 8:
                        this.f15385a = codedInputByteBufferNano.readUInt64();
                        break;
                    case 16:
                        this.f15386b = codedInputByteBufferNano.readUInt64();
                        break;
                    case 24:
                        this.f15387c = codedInputByteBufferNano.readUInt64();
                        break;
                    case 33:
                        this.f15388d = codedInputByteBufferNano.readDouble();
                        break;
                    case 41:
                        this.f15389e = codedInputByteBufferNano.readDouble();
                        break;
                    case 48:
                        this.f15390f = codedInputByteBufferNano.readUInt32();
                        break;
                    case 56:
                        this.f15391g = codedInputByteBufferNano.readUInt32();
                        break;
                    case 64:
                        this.f15392h = codedInputByteBufferNano.readUInt32();
                        break;
                    case 72:
                        this.i = codedInputByteBufferNano.readInt32();
                        break;
                    case 80:
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        if (readInt32 != 0 && readInt32 != 1 && readInt32 != 2 && readInt32 != 3) {
                            break;
                        } else {
                            this.j = readInt32;
                            break;
                        }
                        break;
                    case 88:
                        int readInt322 = codedInputByteBufferNano.readInt32();
                        if (readInt322 != 0 && readInt322 != 1 && readInt322 != 2 && readInt322 != 3) {
                            break;
                        } else {
                            this.k = readInt322;
                            break;
                        }
                        break;
                    case 96:
                        this.l = codedInputByteBufferNano.readUInt64();
                        break;
                    case 104:
                        int readInt323 = codedInputByteBufferNano.readInt32();
                        if (readInt323 != 0 && readInt323 != 1 && readInt323 != 2 && readInt323 != 3 && readInt323 != 4) {
                            break;
                        } else {
                            this.m = readInt323;
                            break;
                        }
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
            codedOutputByteBufferNano.writeUInt64(1, this.f15385a);
            codedOutputByteBufferNano.writeUInt64(2, this.f15386b);
            long j = this.f15387c;
            if (j != 0) {
                codedOutputByteBufferNano.writeUInt64(3, j);
            }
            codedOutputByteBufferNano.writeDouble(4, this.f15388d);
            codedOutputByteBufferNano.writeDouble(5, this.f15389e);
            int i = this.f15390f;
            if (i != 0) {
                codedOutputByteBufferNano.writeUInt32(6, i);
            }
            int i2 = this.f15391g;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeUInt32(7, i2);
            }
            int i3 = this.f15392h;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeUInt32(8, i3);
            }
            int i4 = this.i;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(9, i4);
            }
            int i5 = this.j;
            if (i5 != 0) {
                codedOutputByteBufferNano.writeInt32(10, i5);
            }
            int i6 = this.k;
            if (i6 != 0) {
                codedOutputByteBufferNano.writeInt32(11, i6);
            }
            long j2 = this.l;
            if (j2 != 0) {
                codedOutputByteBufferNano.writeUInt64(12, j2);
            }
            int i7 = this.m;
            if (i7 != 0) {
                codedOutputByteBufferNano.writeInt32(13, i7);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C1787pf() {
        a();
    }

    public C1787pf a() {
        this.f15375a = b.b();
        this.f15376b = a.b();
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        b[] bVarArr = this.f15375a;
        int i = 0;
        if (bVarArr != null && bVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                b[] bVarArr2 = this.f15375a;
                if (i2 >= bVarArr2.length) {
                    break;
                }
                b bVar = bVarArr2[i2];
                if (bVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, bVar);
                }
                i2++;
            }
        }
        a[] aVarArr = this.f15376b;
        if (aVarArr != null && aVarArr.length > 0) {
            while (true) {
                a[] aVarArr2 = this.f15376b;
                if (i >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i];
                if (aVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, aVar);
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
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                b[] bVarArr = this.f15375a;
                int length = bVarArr == null ? 0 : bVarArr.length;
                int i = repeatedFieldArrayLength + length;
                b[] bVarArr2 = new b[i];
                if (length != 0) {
                    System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                }
                while (length < i - 1) {
                    b bVar = new b();
                    bVarArr2[length] = bVar;
                    codedInputByteBufferNano.readMessage(bVar);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                b bVar2 = new b();
                bVarArr2[length] = bVar2;
                codedInputByteBufferNano.readMessage(bVar2);
                this.f15375a = bVarArr2;
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                a[] aVarArr = this.f15376b;
                int length2 = aVarArr == null ? 0 : aVarArr.length;
                int i2 = repeatedFieldArrayLength2 + length2;
                a[] aVarArr2 = new a[i2];
                if (length2 != 0) {
                    System.arraycopy(aVarArr, 0, aVarArr2, 0, length2);
                }
                while (length2 < i2 - 1) {
                    a aVar = new a();
                    aVarArr2[length2] = aVar;
                    codedInputByteBufferNano.readMessage(aVar);
                    codedInputByteBufferNano.readTag();
                    length2++;
                }
                a aVar2 = new a();
                aVarArr2[length2] = aVar2;
                codedInputByteBufferNano.readMessage(aVar2);
                this.f15376b = aVarArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        b[] bVarArr = this.f15375a;
        int i = 0;
        if (bVarArr != null && bVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                b[] bVarArr2 = this.f15375a;
                if (i2 >= bVarArr2.length) {
                    break;
                }
                b bVar = bVarArr2[i2];
                if (bVar != null) {
                    codedOutputByteBufferNano.writeMessage(1, bVar);
                }
                i2++;
            }
        }
        a[] aVarArr = this.f15376b;
        if (aVarArr != null && aVarArr.length > 0) {
            while (true) {
                a[] aVarArr2 = this.f15376b;
                if (i >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i];
                if (aVar != null) {
                    codedOutputByteBufferNano.writeMessage(2, aVar);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
