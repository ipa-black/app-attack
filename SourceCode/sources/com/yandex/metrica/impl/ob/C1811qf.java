package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.qf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1811qf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public d[] f15510a;

    /* renamed from: b  reason: collision with root package name */
    public c f15511b;

    /* renamed from: c  reason: collision with root package name */
    public a[] f15512c;

    /* renamed from: d  reason: collision with root package name */
    public e[] f15513d;

    /* renamed from: e  reason: collision with root package name */
    public String[] f15514e;

    /* renamed from: com.yandex.metrica.impl.ob.qf$a */
    /* loaded from: classes5.dex */
    public static final class a extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile a[] f15515c;

        /* renamed from: a  reason: collision with root package name */
        public String f15516a;

        /* renamed from: b  reason: collision with root package name */
        public String f15517b;

        public a() {
            a();
        }

        public static a[] b() {
            if (f15515c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f15515c == null) {
                        f15515c = new a[0];
                    }
                }
            }
            return f15515c;
        }

        public a a() {
            this.f15516a = "";
            this.f15517b = "";
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f15516a) + CodedOutputByteBufferNano.computeStringSize(2, this.f15517b);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f15516a = codedInputByteBufferNano.readString();
                } else if (readTag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f15517b = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeString(1, this.f15516a);
            codedOutputByteBufferNano.writeString(2, this.f15517b);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.qf$b */
    /* loaded from: classes5.dex */
    public static final class b extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public double f15518a;

        /* renamed from: b  reason: collision with root package name */
        public double f15519b;

        /* renamed from: c  reason: collision with root package name */
        public long f15520c;

        /* renamed from: d  reason: collision with root package name */
        public int f15521d;

        /* renamed from: e  reason: collision with root package name */
        public int f15522e;

        /* renamed from: f  reason: collision with root package name */
        public int f15523f;

        /* renamed from: g  reason: collision with root package name */
        public int f15524g;

        /* renamed from: h  reason: collision with root package name */
        public int f15525h;
        public String i;

        public b() {
            a();
        }

        public b a() {
            this.f15518a = 0.0d;
            this.f15519b = 0.0d;
            this.f15520c = 0L;
            this.f15521d = 0;
            this.f15522e = 0;
            this.f15523f = 0;
            this.f15524g = 0;
            this.f15525h = 0;
            this.i = "";
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeDoubleSize(1, this.f15518a) + CodedOutputByteBufferNano.computeDoubleSize(2, this.f15519b);
            long j = this.f15520c;
            if (j != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(3, j);
            }
            int i = this.f15521d;
            if (i != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(4, i);
            }
            int i2 = this.f15522e;
            if (i2 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(5, i2);
            }
            int i3 = this.f15523f;
            if (i3 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(6, i3);
            }
            int i4 = this.f15524g;
            if (i4 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, i4);
            }
            int i5 = this.f15525h;
            if (i5 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, i5);
            }
            return !this.i.equals("") ? computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(9, this.i) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 9) {
                    this.f15518a = codedInputByteBufferNano.readDouble();
                } else if (readTag == 17) {
                    this.f15519b = codedInputByteBufferNano.readDouble();
                } else if (readTag == 24) {
                    this.f15520c = codedInputByteBufferNano.readUInt64();
                } else if (readTag == 32) {
                    this.f15521d = codedInputByteBufferNano.readUInt32();
                } else if (readTag == 40) {
                    this.f15522e = codedInputByteBufferNano.readUInt32();
                } else if (readTag == 48) {
                    this.f15523f = codedInputByteBufferNano.readUInt32();
                } else if (readTag == 56) {
                    this.f15524g = codedInputByteBufferNano.readInt32();
                } else if (readTag == 64) {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2) {
                        this.f15525h = readInt32;
                    }
                } else if (readTag != 74) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.i = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeDouble(1, this.f15518a);
            codedOutputByteBufferNano.writeDouble(2, this.f15519b);
            long j = this.f15520c;
            if (j != 0) {
                codedOutputByteBufferNano.writeUInt64(3, j);
            }
            int i = this.f15521d;
            if (i != 0) {
                codedOutputByteBufferNano.writeUInt32(4, i);
            }
            int i2 = this.f15522e;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeUInt32(5, i2);
            }
            int i3 = this.f15523f;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeUInt32(6, i3);
            }
            int i4 = this.f15524g;
            if (i4 != 0) {
                codedOutputByteBufferNano.writeInt32(7, i4);
            }
            int i5 = this.f15525h;
            if (i5 != 0) {
                codedOutputByteBufferNano.writeInt32(8, i5);
            }
            if (!this.i.equals("")) {
                codedOutputByteBufferNano.writeString(9, this.i);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.qf$c */
    /* loaded from: classes5.dex */
    public static final class c extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public String f15526a;

        /* renamed from: b  reason: collision with root package name */
        public String f15527b;

        /* renamed from: c  reason: collision with root package name */
        public String f15528c;

        /* renamed from: d  reason: collision with root package name */
        public int f15529d;

        /* renamed from: e  reason: collision with root package name */
        public String f15530e;

        /* renamed from: f  reason: collision with root package name */
        public String f15531f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f15532g;

        /* renamed from: h  reason: collision with root package name */
        public int f15533h;
        public String i;
        public String j;
        public int k;
        public a[] l;
        public String m;

        /* renamed from: com.yandex.metrica.impl.ob.qf$c$a */
        /* loaded from: classes5.dex */
        public static final class a extends MessageNano {

            /* renamed from: c  reason: collision with root package name */
            private static volatile a[] f15534c;

            /* renamed from: a  reason: collision with root package name */
            public String f15535a;

            /* renamed from: b  reason: collision with root package name */
            public long f15536b;

            public a() {
                a();
            }

            public static a[] b() {
                if (f15534c == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (f15534c == null) {
                            f15534c = new a[0];
                        }
                    }
                }
                return f15534c;
            }

            public a a() {
                this.f15535a = "";
                this.f15536b = 0L;
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                return super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f15535a) + CodedOutputByteBufferNano.computeUInt64Size(2, this.f15536b);
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        break;
                    } else if (readTag == 10) {
                        this.f15535a = codedInputByteBufferNano.readString();
                    } else if (readTag != 16) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        this.f15536b = codedInputByteBufferNano.readUInt64();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                codedOutputByteBufferNano.writeString(1, this.f15535a);
                codedOutputByteBufferNano.writeUInt64(2, this.f15536b);
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public c() {
            a();
        }

        public c a() {
            this.f15526a = "";
            this.f15527b = "";
            this.f15528c = "";
            this.f15529d = 0;
            this.f15530e = "";
            this.f15531f = "";
            this.f15532g = false;
            this.f15533h = 0;
            this.i = "";
            this.j = "";
            this.k = 0;
            this.l = a.b();
            this.m = "";
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!this.f15526a.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f15526a);
            }
            if (!this.f15527b.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f15527b);
            }
            if (!this.f15528c.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(4, this.f15528c);
            }
            int i = this.f15529d;
            if (i != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(5, i);
            }
            if (!this.f15530e.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(10, this.f15530e);
            }
            if (!this.f15531f.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(15, this.f15531f);
            }
            boolean z = this.f15532g;
            if (z) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(17, z);
            }
            int i2 = this.f15533h;
            if (i2 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(18, i2);
            }
            if (!this.i.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(19, this.i);
            }
            if (!this.j.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(21, this.j);
            }
            int i3 = this.k;
            if (i3 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(22, i3);
            }
            a[] aVarArr = this.l;
            if (aVarArr != null && aVarArr.length > 0) {
                int i4 = 0;
                while (true) {
                    a[] aVarArr2 = this.l;
                    if (i4 >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i4];
                    if (aVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(23, aVar);
                    }
                    i4++;
                }
            }
            return !this.m.equals("") ? computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(24, this.m) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        break;
                    case 10:
                        this.f15526a = codedInputByteBufferNano.readString();
                        break;
                    case 18:
                        this.f15527b = codedInputByteBufferNano.readString();
                        break;
                    case 34:
                        this.f15528c = codedInputByteBufferNano.readString();
                        break;
                    case 40:
                        this.f15529d = codedInputByteBufferNano.readUInt32();
                        break;
                    case 82:
                        this.f15530e = codedInputByteBufferNano.readString();
                        break;
                    case 122:
                        this.f15531f = codedInputByteBufferNano.readString();
                        break;
                    case 136:
                        this.f15532g = codedInputByteBufferNano.readBool();
                        break;
                    case 144:
                        this.f15533h = codedInputByteBufferNano.readUInt32();
                        break;
                    case 154:
                        this.i = codedInputByteBufferNano.readString();
                        break;
                    case 170:
                        this.j = codedInputByteBufferNano.readString();
                        break;
                    case 176:
                        this.k = codedInputByteBufferNano.readUInt32();
                        break;
                    case 186:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 186);
                        a[] aVarArr = this.l;
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
                        this.l = aVarArr2;
                        break;
                    case 194:
                        this.m = codedInputByteBufferNano.readString();
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
            if (!this.f15526a.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.f15526a);
            }
            if (!this.f15527b.equals("")) {
                codedOutputByteBufferNano.writeString(2, this.f15527b);
            }
            if (!this.f15528c.equals("")) {
                codedOutputByteBufferNano.writeString(4, this.f15528c);
            }
            int i = this.f15529d;
            if (i != 0) {
                codedOutputByteBufferNano.writeUInt32(5, i);
            }
            if (!this.f15530e.equals("")) {
                codedOutputByteBufferNano.writeString(10, this.f15530e);
            }
            if (!this.f15531f.equals("")) {
                codedOutputByteBufferNano.writeString(15, this.f15531f);
            }
            boolean z = this.f15532g;
            if (z) {
                codedOutputByteBufferNano.writeBool(17, z);
            }
            int i2 = this.f15533h;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeUInt32(18, i2);
            }
            if (!this.i.equals("")) {
                codedOutputByteBufferNano.writeString(19, this.i);
            }
            if (!this.j.equals("")) {
                codedOutputByteBufferNano.writeString(21, this.j);
            }
            int i3 = this.k;
            if (i3 != 0) {
                codedOutputByteBufferNano.writeUInt32(22, i3);
            }
            a[] aVarArr = this.l;
            if (aVarArr != null && aVarArr.length > 0) {
                int i4 = 0;
                while (true) {
                    a[] aVarArr2 = this.l;
                    if (i4 >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i4];
                    if (aVar != null) {
                        codedOutputByteBufferNano.writeMessage(23, aVar);
                    }
                    i4++;
                }
            }
            if (!this.m.equals("")) {
                codedOutputByteBufferNano.writeString(24, this.m);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.qf$d */
    /* loaded from: classes5.dex */
    public static final class d extends MessageNano {

        /* renamed from: d  reason: collision with root package name */
        private static volatile d[] f15537d;

        /* renamed from: a  reason: collision with root package name */
        public long f15538a;

        /* renamed from: b  reason: collision with root package name */
        public b f15539b;

        /* renamed from: c  reason: collision with root package name */
        public a[] f15540c;

        /* renamed from: com.yandex.metrica.impl.ob.qf$d$a */
        /* loaded from: classes5.dex */
        public static final class a extends MessageNano {
            private static volatile a[] y;

            /* renamed from: a  reason: collision with root package name */
            public long f15541a;

            /* renamed from: b  reason: collision with root package name */
            public long f15542b;

            /* renamed from: c  reason: collision with root package name */
            public int f15543c;

            /* renamed from: d  reason: collision with root package name */
            public String f15544d;

            /* renamed from: e  reason: collision with root package name */
            public byte[] f15545e;

            /* renamed from: f  reason: collision with root package name */
            public b f15546f;

            /* renamed from: g  reason: collision with root package name */
            public c f15547g;

            /* renamed from: h  reason: collision with root package name */
            public String f15548h;
            public C0357a i;
            public int j;
            public int k;
            public int l;
            public byte[] m;
            public int n;
            public long o;
            public long p;
            public int q;
            public int r;
            public int s;
            public int t;
            public int u;
            public boolean v;
            public long w;
            public b[] x;

            /* renamed from: com.yandex.metrica.impl.ob.qf$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public static final class C0357a extends MessageNano {

                /* renamed from: a  reason: collision with root package name */
                public String f15549a;

                /* renamed from: b  reason: collision with root package name */
                public String f15550b;

                /* renamed from: c  reason: collision with root package name */
                public String f15551c;

                public C0357a() {
                    a();
                }

                public C0357a a() {
                    this.f15549a = "";
                    this.f15550b = "";
                    this.f15551c = "";
                    this.cachedSize = -1;
                    return this;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.protobuf.nano.ym.MessageNano
                public int computeSerializedSize() {
                    int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f15549a);
                    if (!this.f15550b.equals("")) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f15550b);
                    }
                    return !this.f15551c.equals("") ? computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(3, this.f15551c) : computeSerializedSize;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                    while (true) {
                        int readTag = codedInputByteBufferNano.readTag();
                        if (readTag == 0) {
                            break;
                        } else if (readTag == 10) {
                            this.f15549a = codedInputByteBufferNano.readString();
                        } else if (readTag == 18) {
                            this.f15550b = codedInputByteBufferNano.readString();
                        } else if (readTag != 26) {
                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                break;
                            }
                        } else {
                            this.f15551c = codedInputByteBufferNano.readString();
                        }
                    }
                    return this;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                    codedOutputByteBufferNano.writeString(1, this.f15549a);
                    if (!this.f15550b.equals("")) {
                        codedOutputByteBufferNano.writeString(2, this.f15550b);
                    }
                    if (!this.f15551c.equals("")) {
                        codedOutputByteBufferNano.writeString(3, this.f15551c);
                    }
                    super.writeTo(codedOutputByteBufferNano);
                }
            }

            /* renamed from: com.yandex.metrica.impl.ob.qf$d$a$b */
            /* loaded from: classes5.dex */
            public static final class b extends MessageNano {

                /* renamed from: c  reason: collision with root package name */
                private static volatile b[] f15552c;

                /* renamed from: a  reason: collision with root package name */
                public byte[] f15553a;

                /* renamed from: b  reason: collision with root package name */
                public byte[] f15554b;

                public b() {
                    a();
                }

                public static b[] b() {
                    if (f15552c == null) {
                        synchronized (InternalNano.LAZY_INIT_LOCK) {
                            if (f15552c == null) {
                                f15552c = new b[0];
                            }
                        }
                    }
                    return f15552c;
                }

                public b a() {
                    byte[] bArr = WireFormatNano.EMPTY_BYTES;
                    this.f15553a = bArr;
                    this.f15554b = bArr;
                    this.cachedSize = -1;
                    return this;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.protobuf.nano.ym.MessageNano
                public int computeSerializedSize() {
                    int computeSerializedSize = super.computeSerializedSize();
                    if (!Arrays.equals(this.f15553a, WireFormatNano.EMPTY_BYTES)) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f15553a);
                    }
                    return !Arrays.equals(this.f15554b, WireFormatNano.EMPTY_BYTES) ? computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f15554b) : computeSerializedSize;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                    while (true) {
                        int readTag = codedInputByteBufferNano.readTag();
                        if (readTag == 0) {
                            break;
                        } else if (readTag == 10) {
                            this.f15553a = codedInputByteBufferNano.readBytes();
                        } else if (readTag != 18) {
                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                break;
                            }
                        } else {
                            this.f15554b = codedInputByteBufferNano.readBytes();
                        }
                    }
                    return this;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                    if (!Arrays.equals(this.f15553a, WireFormatNano.EMPTY_BYTES)) {
                        codedOutputByteBufferNano.writeBytes(1, this.f15553a);
                    }
                    if (!Arrays.equals(this.f15554b, WireFormatNano.EMPTY_BYTES)) {
                        codedOutputByteBufferNano.writeBytes(2, this.f15554b);
                    }
                    super.writeTo(codedOutputByteBufferNano);
                }
            }

            /* renamed from: com.yandex.metrica.impl.ob.qf$d$a$c */
            /* loaded from: classes5.dex */
            public static final class c extends MessageNano {

                /* renamed from: a  reason: collision with root package name */
                public C1762of[] f15555a;

                /* renamed from: b  reason: collision with root package name */
                public C1834rf[] f15556b;

                /* renamed from: c  reason: collision with root package name */
                public int f15557c;

                /* renamed from: d  reason: collision with root package name */
                public String f15558d;

                public c() {
                    a();
                }

                public c a() {
                    this.f15555a = C1762of.b();
                    this.f15556b = C1834rf.b();
                    this.f15557c = 2;
                    this.f15558d = "";
                    this.cachedSize = -1;
                    return this;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.protobuf.nano.ym.MessageNano
                public int computeSerializedSize() {
                    int computeSerializedSize = super.computeSerializedSize();
                    C1762of[] c1762ofArr = this.f15555a;
                    int i = 0;
                    if (c1762ofArr != null && c1762ofArr.length > 0) {
                        int i2 = 0;
                        while (true) {
                            C1762of[] c1762ofArr2 = this.f15555a;
                            if (i2 >= c1762ofArr2.length) {
                                break;
                            }
                            C1762of c1762of = c1762ofArr2[i2];
                            if (c1762of != null) {
                                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1762of);
                            }
                            i2++;
                        }
                    }
                    C1834rf[] c1834rfArr = this.f15556b;
                    if (c1834rfArr != null && c1834rfArr.length > 0) {
                        while (true) {
                            C1834rf[] c1834rfArr2 = this.f15556b;
                            if (i >= c1834rfArr2.length) {
                                break;
                            }
                            C1834rf c1834rf = c1834rfArr2[i];
                            if (c1834rf != null) {
                                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c1834rf);
                            }
                            i++;
                        }
                    }
                    int i3 = this.f15557c;
                    if (i3 != 2) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i3);
                    }
                    return !this.f15558d.equals("") ? computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(4, this.f15558d) : computeSerializedSize;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                    while (true) {
                        int readTag = codedInputByteBufferNano.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                                C1762of[] c1762ofArr = this.f15555a;
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
                                this.f15555a = c1762ofArr2;
                            } else if (readTag == 18) {
                                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                                C1834rf[] c1834rfArr = this.f15556b;
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
                                this.f15556b = c1834rfArr2;
                            } else if (readTag == 24) {
                                int readInt32 = codedInputByteBufferNano.readInt32();
                                switch (readInt32) {
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                    case 9:
                                    case 10:
                                    case 11:
                                    case 12:
                                        this.f15557c = readInt32;
                                        continue;
                                }
                            } else if (readTag != 34) {
                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                }
                            } else {
                                this.f15558d = codedInputByteBufferNano.readString();
                            }
                        }
                    }
                    return this;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                    C1762of[] c1762ofArr = this.f15555a;
                    int i = 0;
                    if (c1762ofArr != null && c1762ofArr.length > 0) {
                        int i2 = 0;
                        while (true) {
                            C1762of[] c1762ofArr2 = this.f15555a;
                            if (i2 >= c1762ofArr2.length) {
                                break;
                            }
                            C1762of c1762of = c1762ofArr2[i2];
                            if (c1762of != null) {
                                codedOutputByteBufferNano.writeMessage(1, c1762of);
                            }
                            i2++;
                        }
                    }
                    C1834rf[] c1834rfArr = this.f15556b;
                    if (c1834rfArr != null && c1834rfArr.length > 0) {
                        while (true) {
                            C1834rf[] c1834rfArr2 = this.f15556b;
                            if (i >= c1834rfArr2.length) {
                                break;
                            }
                            C1834rf c1834rf = c1834rfArr2[i];
                            if (c1834rf != null) {
                                codedOutputByteBufferNano.writeMessage(2, c1834rf);
                            }
                            i++;
                        }
                    }
                    int i3 = this.f15557c;
                    if (i3 != 2) {
                        codedOutputByteBufferNano.writeInt32(3, i3);
                    }
                    if (!this.f15558d.equals("")) {
                        codedOutputByteBufferNano.writeString(4, this.f15558d);
                    }
                    super.writeTo(codedOutputByteBufferNano);
                }
            }

            public a() {
                a();
            }

            public static a[] b() {
                if (y == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (y == null) {
                            y = new a[0];
                        }
                    }
                }
                return y;
            }

            public a a() {
                this.f15541a = 0L;
                this.f15542b = 0L;
                this.f15543c = 0;
                this.f15544d = "";
                byte[] bArr = WireFormatNano.EMPTY_BYTES;
                this.f15545e = bArr;
                this.f15546f = null;
                this.f15547g = null;
                this.f15548h = "";
                this.i = null;
                this.j = 0;
                this.k = 0;
                this.l = -1;
                this.m = bArr;
                this.n = -1;
                this.o = 0L;
                this.p = 0L;
                this.q = 0;
                this.r = 0;
                this.s = -1;
                this.t = 0;
                this.u = 0;
                this.v = false;
                this.w = 1L;
                this.x = b.b();
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeUInt64Size(1, this.f15541a) + CodedOutputByteBufferNano.computeUInt64Size(2, this.f15542b) + CodedOutputByteBufferNano.computeUInt32Size(3, this.f15543c);
                if (!this.f15544d.equals("")) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(4, this.f15544d);
                }
                if (!Arrays.equals(this.f15545e, WireFormatNano.EMPTY_BYTES)) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(5, this.f15545e);
                }
                b bVar = this.f15546f;
                if (bVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(6, bVar);
                }
                c cVar = this.f15547g;
                if (cVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, cVar);
                }
                if (!this.f15548h.equals("")) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(8, this.f15548h);
                }
                C0357a c0357a = this.i;
                if (c0357a != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(9, c0357a);
                }
                int i = this.j;
                if (i != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(10, i);
                }
                int i2 = this.k;
                if (i2 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(12, i2);
                }
                int i3 = this.l;
                if (i3 != -1) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(13, i3);
                }
                if (!Arrays.equals(this.m, WireFormatNano.EMPTY_BYTES)) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(14, this.m);
                }
                int i4 = this.n;
                if (i4 != -1) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(15, i4);
                }
                long j = this.o;
                if (j != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(16, j);
                }
                long j2 = this.p;
                if (j2 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(17, j2);
                }
                int i5 = this.q;
                if (i5 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(18, i5);
                }
                int i6 = this.r;
                if (i6 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(19, i6);
                }
                int i7 = this.s;
                if (i7 != -1) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(20, i7);
                }
                int i8 = this.t;
                if (i8 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(21, i8);
                }
                int i9 = this.u;
                if (i9 != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(22, i9);
                }
                boolean z = this.v;
                if (z) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(23, z);
                }
                long j3 = this.w;
                if (j3 != 1) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(24, j3);
                }
                b[] bVarArr = this.x;
                if (bVarArr != null && bVarArr.length > 0) {
                    int i10 = 0;
                    while (true) {
                        b[] bVarArr2 = this.x;
                        if (i10 >= bVarArr2.length) {
                            break;
                        }
                        b bVar2 = bVarArr2[i10];
                        if (bVar2 != null) {
                            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(25, bVar2);
                        }
                        i10++;
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
                        case 8:
                            this.f15541a = codedInputByteBufferNano.readUInt64();
                            break;
                        case 16:
                            this.f15542b = codedInputByteBufferNano.readUInt64();
                            break;
                        case 24:
                            this.f15543c = codedInputByteBufferNano.readUInt32();
                            break;
                        case 34:
                            this.f15544d = codedInputByteBufferNano.readString();
                            break;
                        case 42:
                            this.f15545e = codedInputByteBufferNano.readBytes();
                            break;
                        case 50:
                            if (this.f15546f == null) {
                                this.f15546f = new b();
                            }
                            codedInputByteBufferNano.readMessage(this.f15546f);
                            break;
                        case 58:
                            if (this.f15547g == null) {
                                this.f15547g = new c();
                            }
                            codedInputByteBufferNano.readMessage(this.f15547g);
                            break;
                        case 66:
                            this.f15548h = codedInputByteBufferNano.readString();
                            break;
                        case 74:
                            if (this.i == null) {
                                this.i = new C0357a();
                            }
                            codedInputByteBufferNano.readMessage(this.i);
                            break;
                        case 80:
                            this.j = codedInputByteBufferNano.readUInt32();
                            break;
                        case 96:
                            int readInt32 = codedInputByteBufferNano.readInt32();
                            if (readInt32 != 0 && readInt32 != 1 && readInt32 != 2) {
                                break;
                            } else {
                                this.k = readInt32;
                                break;
                            }
                        case 104:
                            int readInt322 = codedInputByteBufferNano.readInt32();
                            if (readInt322 != -1 && readInt322 != 0 && readInt322 != 1) {
                                break;
                            } else {
                                this.l = readInt322;
                                break;
                            }
                        case 114:
                            this.m = codedInputByteBufferNano.readBytes();
                            break;
                        case 120:
                            int readInt323 = codedInputByteBufferNano.readInt32();
                            if (readInt323 != -1 && readInt323 != 0 && readInt323 != 1) {
                                break;
                            } else {
                                this.n = readInt323;
                                break;
                            }
                        case 128:
                            this.o = codedInputByteBufferNano.readUInt64();
                            break;
                        case 136:
                            this.p = codedInputByteBufferNano.readUInt64();
                            break;
                        case 144:
                            int readInt324 = codedInputByteBufferNano.readInt32();
                            if (readInt324 != 0 && readInt324 != 1 && readInt324 != 2 && readInt324 != 3 && readInt324 != 4) {
                                break;
                            } else {
                                this.q = readInt324;
                                break;
                            }
                        case 152:
                            int readInt325 = codedInputByteBufferNano.readInt32();
                            if (readInt325 != 0 && readInt325 != 1 && readInt325 != 2 && readInt325 != 3) {
                                break;
                            } else {
                                this.r = readInt325;
                                break;
                            }
                        case 160:
                            int readInt326 = codedInputByteBufferNano.readInt32();
                            if (readInt326 != -1 && readInt326 != 0 && readInt326 != 1) {
                                break;
                            } else {
                                this.s = readInt326;
                                break;
                            }
                        case 168:
                            int readInt327 = codedInputByteBufferNano.readInt32();
                            if (readInt327 != 0 && readInt327 != 1 && readInt327 != 2 && readInt327 != 3) {
                                break;
                            } else {
                                this.t = readInt327;
                                break;
                            }
                        case 176:
                            int readInt328 = codedInputByteBufferNano.readInt32();
                            if (readInt328 != 0 && readInt328 != 1) {
                                break;
                            } else {
                                this.u = readInt328;
                                break;
                            }
                        case 184:
                            this.v = codedInputByteBufferNano.readBool();
                            break;
                        case 192:
                            this.w = codedInputByteBufferNano.readUInt64();
                            break;
                        case 202:
                            int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 202);
                            b[] bVarArr = this.x;
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
                            this.x = bVarArr2;
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
                codedOutputByteBufferNano.writeUInt64(1, this.f15541a);
                codedOutputByteBufferNano.writeUInt64(2, this.f15542b);
                codedOutputByteBufferNano.writeUInt32(3, this.f15543c);
                if (!this.f15544d.equals("")) {
                    codedOutputByteBufferNano.writeString(4, this.f15544d);
                }
                if (!Arrays.equals(this.f15545e, WireFormatNano.EMPTY_BYTES)) {
                    codedOutputByteBufferNano.writeBytes(5, this.f15545e);
                }
                b bVar = this.f15546f;
                if (bVar != null) {
                    codedOutputByteBufferNano.writeMessage(6, bVar);
                }
                c cVar = this.f15547g;
                if (cVar != null) {
                    codedOutputByteBufferNano.writeMessage(7, cVar);
                }
                if (!this.f15548h.equals("")) {
                    codedOutputByteBufferNano.writeString(8, this.f15548h);
                }
                C0357a c0357a = this.i;
                if (c0357a != null) {
                    codedOutputByteBufferNano.writeMessage(9, c0357a);
                }
                int i = this.j;
                if (i != 0) {
                    codedOutputByteBufferNano.writeUInt32(10, i);
                }
                int i2 = this.k;
                if (i2 != 0) {
                    codedOutputByteBufferNano.writeInt32(12, i2);
                }
                int i3 = this.l;
                if (i3 != -1) {
                    codedOutputByteBufferNano.writeInt32(13, i3);
                }
                if (!Arrays.equals(this.m, WireFormatNano.EMPTY_BYTES)) {
                    codedOutputByteBufferNano.writeBytes(14, this.m);
                }
                int i4 = this.n;
                if (i4 != -1) {
                    codedOutputByteBufferNano.writeInt32(15, i4);
                }
                long j = this.o;
                if (j != 0) {
                    codedOutputByteBufferNano.writeUInt64(16, j);
                }
                long j2 = this.p;
                if (j2 != 0) {
                    codedOutputByteBufferNano.writeUInt64(17, j2);
                }
                int i5 = this.q;
                if (i5 != 0) {
                    codedOutputByteBufferNano.writeInt32(18, i5);
                }
                int i6 = this.r;
                if (i6 != 0) {
                    codedOutputByteBufferNano.writeInt32(19, i6);
                }
                int i7 = this.s;
                if (i7 != -1) {
                    codedOutputByteBufferNano.writeInt32(20, i7);
                }
                int i8 = this.t;
                if (i8 != 0) {
                    codedOutputByteBufferNano.writeInt32(21, i8);
                }
                int i9 = this.u;
                if (i9 != 0) {
                    codedOutputByteBufferNano.writeInt32(22, i9);
                }
                boolean z = this.v;
                if (z) {
                    codedOutputByteBufferNano.writeBool(23, z);
                }
                long j3 = this.w;
                if (j3 != 1) {
                    codedOutputByteBufferNano.writeUInt64(24, j3);
                }
                b[] bVarArr = this.x;
                if (bVarArr != null && bVarArr.length > 0) {
                    int i10 = 0;
                    while (true) {
                        b[] bVarArr2 = this.x;
                        if (i10 >= bVarArr2.length) {
                            break;
                        }
                        b bVar2 = bVarArr2[i10];
                        if (bVar2 != null) {
                            codedOutputByteBufferNano.writeMessage(25, bVar2);
                        }
                        i10++;
                    }
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.qf$d$b */
        /* loaded from: classes5.dex */
        public static final class b extends MessageNano {

            /* renamed from: a  reason: collision with root package name */
            public f f15559a;

            /* renamed from: b  reason: collision with root package name */
            public String f15560b;

            /* renamed from: c  reason: collision with root package name */
            public int f15561c;

            public b() {
                a();
            }

            public b a() {
                this.f15559a = null;
                this.f15560b = "";
                this.f15561c = 0;
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                f fVar = this.f15559a;
                if (fVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, fVar);
                }
                int computeStringSize = computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(2, this.f15560b);
                int i = this.f15561c;
                return i != 0 ? computeStringSize + CodedOutputByteBufferNano.computeInt32Size(5, i) : computeStringSize;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        break;
                    } else if (readTag == 10) {
                        if (this.f15559a == null) {
                            this.f15559a = new f();
                        }
                        codedInputByteBufferNano.readMessage(this.f15559a);
                    } else if (readTag == 18) {
                        this.f15560b = codedInputByteBufferNano.readString();
                    } else if (readTag != 40) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2) {
                            this.f15561c = readInt32;
                        }
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                f fVar = this.f15559a;
                if (fVar != null) {
                    codedOutputByteBufferNano.writeMessage(1, fVar);
                }
                codedOutputByteBufferNano.writeString(2, this.f15560b);
                int i = this.f15561c;
                if (i != 0) {
                    codedOutputByteBufferNano.writeInt32(5, i);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public d() {
            a();
        }

        public static d[] b() {
            if (f15537d == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f15537d == null) {
                        f15537d = new d[0];
                    }
                }
            }
            return f15537d;
        }

        public d a() {
            this.f15538a = 0L;
            this.f15539b = null;
            this.f15540c = a.b();
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeUInt64Size(1, this.f15538a);
            b bVar = this.f15539b;
            if (bVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, bVar);
            }
            a[] aVarArr = this.f15540c;
            if (aVarArr != null && aVarArr.length > 0) {
                int i = 0;
                while (true) {
                    a[] aVarArr2 = this.f15540c;
                    if (i >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i];
                    if (aVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, aVar);
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
                } else if (readTag == 8) {
                    this.f15538a = codedInputByteBufferNano.readUInt64();
                } else if (readTag == 18) {
                    if (this.f15539b == null) {
                        this.f15539b = new b();
                    }
                    codedInputByteBufferNano.readMessage(this.f15539b);
                } else if (readTag != 26) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                    a[] aVarArr = this.f15540c;
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
                    this.f15540c = aVarArr2;
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeUInt64(1, this.f15538a);
            b bVar = this.f15539b;
            if (bVar != null) {
                codedOutputByteBufferNano.writeMessage(2, bVar);
            }
            a[] aVarArr = this.f15540c;
            if (aVarArr != null && aVarArr.length > 0) {
                int i = 0;
                while (true) {
                    a[] aVarArr2 = this.f15540c;
                    if (i >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i];
                    if (aVar != null) {
                        codedOutputByteBufferNano.writeMessage(3, aVar);
                    }
                    i++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.qf$e */
    /* loaded from: classes5.dex */
    public static final class e extends MessageNano {

        /* renamed from: e  reason: collision with root package name */
        private static volatile e[] f15562e;

        /* renamed from: a  reason: collision with root package name */
        public int f15563a;

        /* renamed from: b  reason: collision with root package name */
        public int f15564b;

        /* renamed from: c  reason: collision with root package name */
        public String f15565c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f15566d;

        public e() {
            a();
        }

        public static e[] b() {
            if (f15562e == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f15562e == null) {
                        f15562e = new e[0];
                    }
                }
            }
            return f15562e;
        }

        public e a() {
            this.f15563a = 0;
            this.f15564b = 0;
            this.f15565c = "";
            this.f15566d = false;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            int i = this.f15563a;
            if (i != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i);
            }
            int i2 = this.f15564b;
            if (i2 != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(2, i2);
            }
            if (!this.f15565c.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.f15565c);
            }
            boolean z = this.f15566d;
            return z ? computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(4, z) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    this.f15563a = codedInputByteBufferNano.readUInt32();
                } else if (readTag == 16) {
                    this.f15564b = codedInputByteBufferNano.readUInt32();
                } else if (readTag == 26) {
                    this.f15565c = codedInputByteBufferNano.readString();
                } else if (readTag != 32) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f15566d = codedInputByteBufferNano.readBool();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            int i = this.f15563a;
            if (i != 0) {
                codedOutputByteBufferNano.writeUInt32(1, i);
            }
            int i2 = this.f15564b;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeUInt32(2, i2);
            }
            if (!this.f15565c.equals("")) {
                codedOutputByteBufferNano.writeString(3, this.f15565c);
            }
            boolean z = this.f15566d;
            if (z) {
                codedOutputByteBufferNano.writeBool(4, z);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.qf$f */
    /* loaded from: classes5.dex */
    public static final class f extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f15567a;

        /* renamed from: b  reason: collision with root package name */
        public int f15568b;

        /* renamed from: c  reason: collision with root package name */
        public long f15569c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f15570d;

        public f() {
            a();
        }

        public f a() {
            this.f15567a = 0L;
            this.f15568b = 0;
            this.f15569c = 0L;
            this.f15570d = false;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeUInt64Size(1, this.f15567a) + CodedOutputByteBufferNano.computeSInt32Size(2, this.f15568b);
            long j = this.f15569c;
            if (j != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(3, j);
            }
            boolean z = this.f15570d;
            return z ? computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(4, z) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    this.f15567a = codedInputByteBufferNano.readUInt64();
                } else if (readTag == 16) {
                    this.f15568b = codedInputByteBufferNano.readSInt32();
                } else if (readTag == 24) {
                    this.f15569c = codedInputByteBufferNano.readInt64();
                } else if (readTag != 32) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f15570d = codedInputByteBufferNano.readBool();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeUInt64(1, this.f15567a);
            codedOutputByteBufferNano.writeSInt32(2, this.f15568b);
            long j = this.f15569c;
            if (j != 0) {
                codedOutputByteBufferNano.writeInt64(3, j);
            }
            boolean z = this.f15570d;
            if (z) {
                codedOutputByteBufferNano.writeBool(4, z);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C1811qf() {
        a();
    }

    public C1811qf a() {
        this.f15510a = d.b();
        this.f15511b = null;
        this.f15512c = a.b();
        this.f15513d = e.b();
        this.f15514e = WireFormatNano.EMPTY_STRING_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        d[] dVarArr = this.f15510a;
        int i = 0;
        if (dVarArr != null && dVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                d[] dVarArr2 = this.f15510a;
                if (i2 >= dVarArr2.length) {
                    break;
                }
                d dVar = dVarArr2[i2];
                if (dVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, dVar);
                }
                i2++;
            }
        }
        c cVar = this.f15511b;
        if (cVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, cVar);
        }
        a[] aVarArr = this.f15512c;
        if (aVarArr != null && aVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                a[] aVarArr2 = this.f15512c;
                if (i3 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i3];
                if (aVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, aVar);
                }
                i3++;
            }
        }
        e[] eVarArr = this.f15513d;
        if (eVarArr != null && eVarArr.length > 0) {
            int i4 = 0;
            while (true) {
                e[] eVarArr2 = this.f15513d;
                if (i4 >= eVarArr2.length) {
                    break;
                }
                e eVar = eVarArr2[i4];
                if (eVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(10, eVar);
                }
                i4++;
            }
        }
        String[] strArr = this.f15514e;
        if (strArr == null || strArr.length <= 0) {
            return computeSerializedSize;
        }
        int i5 = 0;
        int i6 = 0;
        while (true) {
            String[] strArr2 = this.f15514e;
            if (i >= strArr2.length) {
                return computeSerializedSize + i5 + i6;
            }
            String str = strArr2[i];
            if (str != null) {
                i6++;
                i5 += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
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
            } else if (readTag == 26) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                d[] dVarArr = this.f15510a;
                int length = dVarArr == null ? 0 : dVarArr.length;
                int i = repeatedFieldArrayLength + length;
                d[] dVarArr2 = new d[i];
                if (length != 0) {
                    System.arraycopy(dVarArr, 0, dVarArr2, 0, length);
                }
                while (length < i - 1) {
                    d dVar = new d();
                    dVarArr2[length] = dVar;
                    codedInputByteBufferNano.readMessage(dVar);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                d dVar2 = new d();
                dVarArr2[length] = dVar2;
                codedInputByteBufferNano.readMessage(dVar2);
                this.f15510a = dVarArr2;
            } else if (readTag == 34) {
                if (this.f15511b == null) {
                    this.f15511b = new c();
                }
                codedInputByteBufferNano.readMessage(this.f15511b);
            } else if (readTag == 58) {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                a[] aVarArr = this.f15512c;
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
                this.f15512c = aVarArr2;
            } else if (readTag == 82) {
                int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 82);
                e[] eVarArr = this.f15513d;
                int length3 = eVarArr == null ? 0 : eVarArr.length;
                int i3 = repeatedFieldArrayLength3 + length3;
                e[] eVarArr2 = new e[i3];
                if (length3 != 0) {
                    System.arraycopy(eVarArr, 0, eVarArr2, 0, length3);
                }
                while (length3 < i3 - 1) {
                    e eVar = new e();
                    eVarArr2[length3] = eVar;
                    codedInputByteBufferNano.readMessage(eVar);
                    codedInputByteBufferNano.readTag();
                    length3++;
                }
                e eVar2 = new e();
                eVarArr2[length3] = eVar2;
                codedInputByteBufferNano.readMessage(eVar2);
                this.f15513d = eVarArr2;
            } else if (readTag != 90) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 90);
                String[] strArr = this.f15514e;
                int length4 = strArr == null ? 0 : strArr.length;
                int i4 = repeatedFieldArrayLength4 + length4;
                String[] strArr2 = new String[i4];
                if (length4 != 0) {
                    System.arraycopy(strArr, 0, strArr2, 0, length4);
                }
                while (length4 < i4 - 1) {
                    strArr2[length4] = codedInputByteBufferNano.readString();
                    codedInputByteBufferNano.readTag();
                    length4++;
                }
                strArr2[length4] = codedInputByteBufferNano.readString();
                this.f15514e = strArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        d[] dVarArr = this.f15510a;
        int i = 0;
        if (dVarArr != null && dVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                d[] dVarArr2 = this.f15510a;
                if (i2 >= dVarArr2.length) {
                    break;
                }
                d dVar = dVarArr2[i2];
                if (dVar != null) {
                    codedOutputByteBufferNano.writeMessage(3, dVar);
                }
                i2++;
            }
        }
        c cVar = this.f15511b;
        if (cVar != null) {
            codedOutputByteBufferNano.writeMessage(4, cVar);
        }
        a[] aVarArr = this.f15512c;
        if (aVarArr != null && aVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                a[] aVarArr2 = this.f15512c;
                if (i3 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i3];
                if (aVar != null) {
                    codedOutputByteBufferNano.writeMessage(7, aVar);
                }
                i3++;
            }
        }
        e[] eVarArr = this.f15513d;
        if (eVarArr != null && eVarArr.length > 0) {
            int i4 = 0;
            while (true) {
                e[] eVarArr2 = this.f15513d;
                if (i4 >= eVarArr2.length) {
                    break;
                }
                e eVar = eVarArr2[i4];
                if (eVar != null) {
                    codedOutputByteBufferNano.writeMessage(10, eVar);
                }
                i4++;
            }
        }
        String[] strArr = this.f15514e;
        if (strArr != null && strArr.length > 0) {
            while (true) {
                String[] strArr2 = this.f15514e;
                if (i >= strArr2.length) {
                    break;
                }
                String str = strArr2[i];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(11, str);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
