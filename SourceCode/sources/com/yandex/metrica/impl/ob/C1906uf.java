package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.uf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1906uf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public int f15822a;

    /* renamed from: b  reason: collision with root package name */
    public double f15823b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f15824c;

    /* renamed from: d  reason: collision with root package name */
    public byte[] f15825d;

    /* renamed from: e  reason: collision with root package name */
    public byte[] f15826e;

    /* renamed from: f  reason: collision with root package name */
    public a f15827f;

    /* renamed from: g  reason: collision with root package name */
    public long f15828g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f15829h;
    public int i;
    public int j;
    public c k;
    public b l;

    /* renamed from: com.yandex.metrica.impl.ob.uf$a */
    /* loaded from: classes5.dex */
    public static final class a extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f15830a;

        /* renamed from: b  reason: collision with root package name */
        public byte[] f15831b;

        public a() {
            a();
        }

        public a a() {
            byte[] bArr = WireFormatNano.EMPTY_BYTES;
            this.f15830a = bArr;
            this.f15831b = bArr;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!Arrays.equals(this.f15830a, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f15830a);
            }
            return !Arrays.equals(this.f15831b, WireFormatNano.EMPTY_BYTES) ? computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f15831b) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f15830a = codedInputByteBufferNano.readBytes();
                } else if (readTag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f15831b = codedInputByteBufferNano.readBytes();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!Arrays.equals(this.f15830a, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(1, this.f15830a);
            }
            if (!Arrays.equals(this.f15831b, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(2, this.f15831b);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.uf$b */
    /* loaded from: classes5.dex */
    public static final class b extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public boolean f15832a;

        /* renamed from: b  reason: collision with root package name */
        public C0359b f15833b;

        /* renamed from: c  reason: collision with root package name */
        public a f15834c;

        /* renamed from: com.yandex.metrica.impl.ob.uf$b$a */
        /* loaded from: classes5.dex */
        public static final class a extends MessageNano {

            /* renamed from: a  reason: collision with root package name */
            public long f15835a;

            /* renamed from: b  reason: collision with root package name */
            public C0359b f15836b;

            /* renamed from: c  reason: collision with root package name */
            public int f15837c;

            /* renamed from: d  reason: collision with root package name */
            public byte[] f15838d;

            public a() {
                a();
            }

            public a a() {
                this.f15835a = 0L;
                this.f15836b = null;
                this.f15837c = 0;
                this.f15838d = WireFormatNano.EMPTY_BYTES;
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                long j = this.f15835a;
                if (j != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j);
                }
                C0359b c0359b = this.f15836b;
                if (c0359b != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c0359b);
                }
                int i = this.f15837c;
                if (i != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(3, i);
                }
                return !Arrays.equals(this.f15838d, WireFormatNano.EMPTY_BYTES) ? computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(4, this.f15838d) : computeSerializedSize;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        break;
                    } else if (readTag == 8) {
                        this.f15835a = codedInputByteBufferNano.readInt64();
                    } else if (readTag == 18) {
                        if (this.f15836b == null) {
                            this.f15836b = new C0359b();
                        }
                        codedInputByteBufferNano.readMessage(this.f15836b);
                    } else if (readTag == 24) {
                        this.f15837c = codedInputByteBufferNano.readUInt32();
                    } else if (readTag != 34) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        this.f15838d = codedInputByteBufferNano.readBytes();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                long j = this.f15835a;
                if (j != 0) {
                    codedOutputByteBufferNano.writeInt64(1, j);
                }
                C0359b c0359b = this.f15836b;
                if (c0359b != null) {
                    codedOutputByteBufferNano.writeMessage(2, c0359b);
                }
                int i = this.f15837c;
                if (i != 0) {
                    codedOutputByteBufferNano.writeUInt32(3, i);
                }
                if (!Arrays.equals(this.f15838d, WireFormatNano.EMPTY_BYTES)) {
                    codedOutputByteBufferNano.writeBytes(4, this.f15838d);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.uf$b$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class C0359b extends MessageNano {

            /* renamed from: a  reason: collision with root package name */
            public int f15839a;

            /* renamed from: b  reason: collision with root package name */
            public int f15840b;

            public C0359b() {
                a();
            }

            public C0359b a() {
                this.f15839a = 0;
                this.f15840b = 0;
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                int i = this.f15839a;
                if (i != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i);
                }
                int i2 = this.f15840b;
                return i2 != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i2) : computeSerializedSize;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        break;
                    } else if (readTag == 8) {
                        this.f15839a = codedInputByteBufferNano.readUInt32();
                    } else if (readTag != 16) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3 || readInt32 == 4) {
                            this.f15840b = readInt32;
                        }
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                int i = this.f15839a;
                if (i != 0) {
                    codedOutputByteBufferNano.writeUInt32(1, i);
                }
                int i2 = this.f15840b;
                if (i2 != 0) {
                    codedOutputByteBufferNano.writeInt32(2, i2);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public b() {
            a();
        }

        public b a() {
            this.f15832a = false;
            this.f15833b = null;
            this.f15834c = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            boolean z = this.f15832a;
            if (z) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, z);
            }
            C0359b c0359b = this.f15833b;
            if (c0359b != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c0359b);
            }
            a aVar = this.f15834c;
            return aVar != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, aVar) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    this.f15832a = codedInputByteBufferNano.readBool();
                } else if (readTag == 18) {
                    if (this.f15833b == null) {
                        this.f15833b = new C0359b();
                    }
                    codedInputByteBufferNano.readMessage(this.f15833b);
                } else if (readTag != 26) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    if (this.f15834c == null) {
                        this.f15834c = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.f15834c);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            boolean z = this.f15832a;
            if (z) {
                codedOutputByteBufferNano.writeBool(1, z);
            }
            C0359b c0359b = this.f15833b;
            if (c0359b != null) {
                codedOutputByteBufferNano.writeMessage(2, c0359b);
            }
            a aVar = this.f15834c;
            if (aVar != null) {
                codedOutputByteBufferNano.writeMessage(3, aVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.uf$c */
    /* loaded from: classes5.dex */
    public static final class c extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f15841a;

        /* renamed from: b  reason: collision with root package name */
        public long f15842b;

        /* renamed from: c  reason: collision with root package name */
        public int f15843c;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f15844d;

        /* renamed from: e  reason: collision with root package name */
        public long f15845e;

        public c() {
            a();
        }

        public c a() {
            byte[] bArr = WireFormatNano.EMPTY_BYTES;
            this.f15841a = bArr;
            this.f15842b = 0L;
            this.f15843c = 0;
            this.f15844d = bArr;
            this.f15845e = 0L;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!Arrays.equals(this.f15841a, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f15841a);
            }
            long j = this.f15842b;
            if (j != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(2, j);
            }
            int i = this.f15843c;
            if (i != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, i);
            }
            if (!Arrays.equals(this.f15844d, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(4, this.f15844d);
            }
            long j2 = this.f15845e;
            return j2 != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeUInt64Size(5, j2) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f15841a = codedInputByteBufferNano.readBytes();
                } else if (readTag == 16) {
                    this.f15842b = codedInputByteBufferNano.readUInt64();
                } else if (readTag == 24) {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2) {
                        this.f15843c = readInt32;
                    }
                } else if (readTag == 34) {
                    this.f15844d = codedInputByteBufferNano.readBytes();
                } else if (readTag != 40) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f15845e = codedInputByteBufferNano.readUInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!Arrays.equals(this.f15841a, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(1, this.f15841a);
            }
            long j = this.f15842b;
            if (j != 0) {
                codedOutputByteBufferNano.writeUInt64(2, j);
            }
            int i = this.f15843c;
            if (i != 0) {
                codedOutputByteBufferNano.writeInt32(3, i);
            }
            if (!Arrays.equals(this.f15844d, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(4, this.f15844d);
            }
            long j2 = this.f15845e;
            if (j2 != 0) {
                codedOutputByteBufferNano.writeUInt64(5, j2);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C1906uf() {
        a();
    }

    public C1906uf a() {
        this.f15822a = 1;
        this.f15823b = 0.0d;
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f15824c = bArr;
        this.f15825d = bArr;
        this.f15826e = bArr;
        this.f15827f = null;
        this.f15828g = 0L;
        this.f15829h = false;
        this.i = 0;
        this.j = 1;
        this.k = null;
        this.l = null;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i = this.f15822a;
        if (i != 1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i);
        }
        if (Double.doubleToLongBits(this.f15823b) != Double.doubleToLongBits(0.0d)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(2, this.f15823b);
        }
        int computeBytesSize = computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(3, this.f15824c);
        if (!Arrays.equals(this.f15825d, WireFormatNano.EMPTY_BYTES)) {
            computeBytesSize += CodedOutputByteBufferNano.computeBytesSize(4, this.f15825d);
        }
        if (!Arrays.equals(this.f15826e, WireFormatNano.EMPTY_BYTES)) {
            computeBytesSize += CodedOutputByteBufferNano.computeBytesSize(5, this.f15826e);
        }
        a aVar = this.f15827f;
        if (aVar != null) {
            computeBytesSize += CodedOutputByteBufferNano.computeMessageSize(6, aVar);
        }
        long j = this.f15828g;
        if (j != 0) {
            computeBytesSize += CodedOutputByteBufferNano.computeInt64Size(7, j);
        }
        boolean z = this.f15829h;
        if (z) {
            computeBytesSize += CodedOutputByteBufferNano.computeBoolSize(8, z);
        }
        int i2 = this.i;
        if (i2 != 0) {
            computeBytesSize += CodedOutputByteBufferNano.computeInt32Size(9, i2);
        }
        int i3 = this.j;
        if (i3 != 1) {
            computeBytesSize += CodedOutputByteBufferNano.computeInt32Size(10, i3);
        }
        c cVar = this.k;
        if (cVar != null) {
            computeBytesSize += CodedOutputByteBufferNano.computeMessageSize(11, cVar);
        }
        b bVar = this.l;
        return bVar != null ? computeBytesSize + CodedOutputByteBufferNano.computeMessageSize(12, bVar) : computeBytesSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    break;
                case 8:
                    this.f15822a = codedInputByteBufferNano.readUInt32();
                    break;
                case 17:
                    this.f15823b = codedInputByteBufferNano.readDouble();
                    break;
                case 26:
                    this.f15824c = codedInputByteBufferNano.readBytes();
                    break;
                case 34:
                    this.f15825d = codedInputByteBufferNano.readBytes();
                    break;
                case 42:
                    this.f15826e = codedInputByteBufferNano.readBytes();
                    break;
                case 50:
                    if (this.f15827f == null) {
                        this.f15827f = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.f15827f);
                    break;
                case 56:
                    this.f15828g = codedInputByteBufferNano.readInt64();
                    break;
                case 64:
                    this.f15829h = codedInputByteBufferNano.readBool();
                    break;
                case 72:
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 != 0 && readInt32 != 1 && readInt32 != 2) {
                        break;
                    } else {
                        this.i = readInt32;
                        break;
                    }
                case 80:
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    if (readInt322 != 1 && readInt322 != 2) {
                        break;
                    } else {
                        this.j = readInt322;
                        break;
                    }
                case 90:
                    if (this.k == null) {
                        this.k = new c();
                    }
                    codedInputByteBufferNano.readMessage(this.k);
                    break;
                case 98:
                    if (this.l == null) {
                        this.l = new b();
                    }
                    codedInputByteBufferNano.readMessage(this.l);
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
        int i = this.f15822a;
        if (i != 1) {
            codedOutputByteBufferNano.writeUInt32(1, i);
        }
        if (Double.doubleToLongBits(this.f15823b) != Double.doubleToLongBits(0.0d)) {
            codedOutputByteBufferNano.writeDouble(2, this.f15823b);
        }
        codedOutputByteBufferNano.writeBytes(3, this.f15824c);
        if (!Arrays.equals(this.f15825d, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(4, this.f15825d);
        }
        if (!Arrays.equals(this.f15826e, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(5, this.f15826e);
        }
        a aVar = this.f15827f;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(6, aVar);
        }
        long j = this.f15828g;
        if (j != 0) {
            codedOutputByteBufferNano.writeInt64(7, j);
        }
        boolean z = this.f15829h;
        if (z) {
            codedOutputByteBufferNano.writeBool(8, z);
        }
        int i2 = this.i;
        if (i2 != 0) {
            codedOutputByteBufferNano.writeInt32(9, i2);
        }
        int i3 = this.j;
        if (i3 != 1) {
            codedOutputByteBufferNano.writeInt32(10, i3);
        }
        c cVar = this.k;
        if (cVar != null) {
            codedOutputByteBufferNano.writeMessage(11, cVar);
        }
        b bVar = this.l;
        if (bVar != null) {
            codedOutputByteBufferNano.writeMessage(12, bVar);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
