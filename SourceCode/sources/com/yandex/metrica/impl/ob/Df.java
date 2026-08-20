package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
/* loaded from: classes5.dex */
public final class Df extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public a[] f12808a;

    /* renamed from: b  reason: collision with root package name */
    public String[] f12809b;

    /* loaded from: classes5.dex */
    public static final class a extends MessageNano {

        /* renamed from: g  reason: collision with root package name */
        private static volatile a[] f12810g;

        /* renamed from: a  reason: collision with root package name */
        public String f12811a;

        /* renamed from: b  reason: collision with root package name */
        public String f12812b;

        /* renamed from: c  reason: collision with root package name */
        public String f12813c;

        /* renamed from: d  reason: collision with root package name */
        public C0346a[] f12814d;

        /* renamed from: e  reason: collision with root package name */
        public long f12815e;

        /* renamed from: f  reason: collision with root package name */
        public int[] f12816f;

        /* renamed from: com.yandex.metrica.impl.ob.Df$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class C0346a extends MessageNano {

            /* renamed from: c  reason: collision with root package name */
            private static volatile C0346a[] f12817c;

            /* renamed from: a  reason: collision with root package name */
            public String f12818a;

            /* renamed from: b  reason: collision with root package name */
            public String f12819b;

            public C0346a() {
                a();
            }

            public static C0346a[] b() {
                if (f12817c == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (f12817c == null) {
                            f12817c = new C0346a[0];
                        }
                    }
                }
                return f12817c;
            }

            public C0346a a() {
                this.f12818a = "";
                this.f12819b = "";
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                return super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f12818a) + CodedOutputByteBufferNano.computeStringSize(2, this.f12819b);
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        break;
                    } else if (readTag == 10) {
                        this.f12818a = codedInputByteBufferNano.readString();
                    } else if (readTag != 18) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        this.f12819b = codedInputByteBufferNano.readString();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                codedOutputByteBufferNano.writeString(1, this.f12818a);
                codedOutputByteBufferNano.writeString(2, this.f12819b);
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public a() {
            a();
        }

        public static a[] b() {
            if (f12810g == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f12810g == null) {
                        f12810g = new a[0];
                    }
                }
            }
            return f12810g;
        }

        public a a() {
            this.f12811a = "";
            this.f12812b = "";
            this.f12813c = "";
            this.f12814d = C0346a.b();
            this.f12815e = 0L;
            this.f12816f = WireFormatNano.EMPTY_INT_ARRAY;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f12811a) + CodedOutputByteBufferNano.computeStringSize(2, this.f12812b) + CodedOutputByteBufferNano.computeStringSize(3, this.f12813c);
            C0346a[] c0346aArr = this.f12814d;
            int i = 0;
            if (c0346aArr != null && c0346aArr.length > 0) {
                int i2 = 0;
                while (true) {
                    C0346a[] c0346aArr2 = this.f12814d;
                    if (i2 >= c0346aArr2.length) {
                        break;
                    }
                    C0346a c0346a = c0346aArr2[i2];
                    if (c0346a != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, c0346a);
                    }
                    i2++;
                }
            }
            int computeUInt64Size = computeSerializedSize + CodedOutputByteBufferNano.computeUInt64Size(5, this.f12815e);
            int[] iArr = this.f12816f;
            if (iArr == null || iArr.length <= 0) {
                return computeUInt64Size;
            }
            int i3 = 0;
            while (true) {
                int[] iArr2 = this.f12816f;
                if (i < iArr2.length) {
                    i3 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr2[i]);
                    i++;
                } else {
                    return computeUInt64Size + i3 + iArr2.length;
                }
            }
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f12811a = codedInputByteBufferNano.readString();
                } else if (readTag == 18) {
                    this.f12812b = codedInputByteBufferNano.readString();
                } else if (readTag == 26) {
                    this.f12813c = codedInputByteBufferNano.readString();
                } else if (readTag == 34) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                    C0346a[] c0346aArr = this.f12814d;
                    int length = c0346aArr == null ? 0 : c0346aArr.length;
                    int i = repeatedFieldArrayLength + length;
                    C0346a[] c0346aArr2 = new C0346a[i];
                    if (length != 0) {
                        System.arraycopy(c0346aArr, 0, c0346aArr2, 0, length);
                    }
                    while (length < i - 1) {
                        C0346a c0346a = new C0346a();
                        c0346aArr2[length] = c0346a;
                        codedInputByteBufferNano.readMessage(c0346a);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    C0346a c0346a2 = new C0346a();
                    c0346aArr2[length] = c0346a2;
                    codedInputByteBufferNano.readMessage(c0346a2);
                    this.f12814d = c0346aArr2;
                } else if (readTag == 40) {
                    this.f12815e = codedInputByteBufferNano.readUInt64();
                } else if (readTag == 48) {
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 48);
                    int[] iArr = new int[repeatedFieldArrayLength2];
                    int i2 = 0;
                    for (int i3 = 0; i3 < repeatedFieldArrayLength2; i3++) {
                        if (i3 != 0) {
                            codedInputByteBufferNano.readTag();
                        }
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        if (readInt32 == 1 || readInt32 == 2) {
                            iArr[i2] = readInt32;
                            i2++;
                        }
                    }
                    if (i2 != 0) {
                        int[] iArr2 = this.f12816f;
                        int length2 = iArr2 == null ? 0 : iArr2.length;
                        if (length2 == 0 && i2 == repeatedFieldArrayLength2) {
                            this.f12816f = iArr;
                        } else {
                            int[] iArr3 = new int[length2 + i2];
                            if (length2 != 0) {
                                System.arraycopy(iArr2, 0, iArr3, 0, length2);
                            }
                            System.arraycopy(iArr, 0, iArr3, length2, i2);
                            this.f12816f = iArr3;
                        }
                    }
                } else if (readTag != 50) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    int pushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                    int position = codedInputByteBufferNano.getPosition();
                    int i4 = 0;
                    while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                        int readInt322 = codedInputByteBufferNano.readInt32();
                        if (readInt322 == 1 || readInt322 == 2) {
                            i4++;
                        }
                    }
                    if (i4 != 0) {
                        codedInputByteBufferNano.rewindToPosition(position);
                        int[] iArr4 = this.f12816f;
                        int length3 = iArr4 == null ? 0 : iArr4.length;
                        int[] iArr5 = new int[i4 + length3];
                        if (length3 != 0) {
                            System.arraycopy(iArr4, 0, iArr5, 0, length3);
                        }
                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                            int readInt323 = codedInputByteBufferNano.readInt32();
                            if (readInt323 == 1 || readInt323 == 2) {
                                iArr5[length3] = readInt323;
                                length3++;
                            }
                        }
                        this.f12816f = iArr5;
                    }
                    codedInputByteBufferNano.popLimit(pushLimit);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeString(1, this.f12811a);
            codedOutputByteBufferNano.writeString(2, this.f12812b);
            codedOutputByteBufferNano.writeString(3, this.f12813c);
            C0346a[] c0346aArr = this.f12814d;
            int i = 0;
            if (c0346aArr != null && c0346aArr.length > 0) {
                int i2 = 0;
                while (true) {
                    C0346a[] c0346aArr2 = this.f12814d;
                    if (i2 >= c0346aArr2.length) {
                        break;
                    }
                    C0346a c0346a = c0346aArr2[i2];
                    if (c0346a != null) {
                        codedOutputByteBufferNano.writeMessage(4, c0346a);
                    }
                    i2++;
                }
            }
            codedOutputByteBufferNano.writeUInt64(5, this.f12815e);
            int[] iArr = this.f12816f;
            if (iArr != null && iArr.length > 0) {
                while (true) {
                    int[] iArr2 = this.f12816f;
                    if (i >= iArr2.length) {
                        break;
                    }
                    codedOutputByteBufferNano.writeInt32(6, iArr2[i]);
                    i++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public Df() {
        a();
    }

    public Df a() {
        this.f12808a = a.b();
        this.f12809b = WireFormatNano.EMPTY_STRING_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        a[] aVarArr = this.f12808a;
        int i = 0;
        if (aVarArr != null && aVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                a[] aVarArr2 = this.f12808a;
                if (i2 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i2];
                if (aVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, aVar);
                }
                i2++;
            }
        }
        String[] strArr = this.f12809b;
        if (strArr == null || strArr.length <= 0) {
            return computeSerializedSize;
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            String[] strArr2 = this.f12809b;
            if (i >= strArr2.length) {
                return computeSerializedSize + i3 + i4;
            }
            String str = strArr2[i];
            if (str != null) {
                i4++;
                i3 += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
            }
            i++;
        }
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag == 10) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                a[] aVarArr = this.f12808a;
                int length = aVarArr == null ? 0 : aVarArr.length;
                int i = repeatedFieldArrayLength + length;
                a[] aVarArr2 = new a[i];
                if (length != 0) {
                    System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                }
                while (length < i - 1) {
                    a aVar = new a();
                    aVarArr2[length] = aVar;
                    codedInputByteBufferNano.readMessage(aVar);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                a aVar2 = new a();
                aVarArr2[length] = aVar2;
                codedInputByteBufferNano.readMessage(aVar2);
                this.f12808a = aVarArr2;
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                String[] strArr = this.f12809b;
                int length2 = strArr == null ? 0 : strArr.length;
                int i2 = repeatedFieldArrayLength2 + length2;
                String[] strArr2 = new String[i2];
                if (length2 != 0) {
                    System.arraycopy(strArr, 0, strArr2, 0, length2);
                }
                while (length2 < i2 - 1) {
                    strArr2[length2] = codedInputByteBufferNano.readString();
                    codedInputByteBufferNano.readTag();
                    length2++;
                }
                strArr2[length2] = codedInputByteBufferNano.readString();
                this.f12809b = strArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        a[] aVarArr = this.f12808a;
        int i = 0;
        if (aVarArr != null && aVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                a[] aVarArr2 = this.f12808a;
                if (i2 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i2];
                if (aVar != null) {
                    codedOutputByteBufferNano.writeMessage(1, aVar);
                }
                i2++;
            }
        }
        String[] strArr = this.f12809b;
        if (strArr != null && strArr.length > 0) {
            while (true) {
                String[] strArr2 = this.f12809b;
                if (i >= strArr2.length) {
                    break;
                }
                String str = strArr2[i];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(2, str);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
