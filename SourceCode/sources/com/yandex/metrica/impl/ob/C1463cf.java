package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.cf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1463cf extends MessageNano {
    private static byte[] l;
    private static volatile boolean m;

    /* renamed from: a  reason: collision with root package name */
    public byte[] f14558a;

    /* renamed from: b  reason: collision with root package name */
    public a f14559b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f14560c;

    /* renamed from: d  reason: collision with root package name */
    public int f14561d;

    /* renamed from: e  reason: collision with root package name */
    public byte[] f14562e;

    /* renamed from: f  reason: collision with root package name */
    public byte[] f14563f;

    /* renamed from: g  reason: collision with root package name */
    public byte[] f14564g;

    /* renamed from: h  reason: collision with root package name */
    public byte[] f14565h;
    public byte[] i;
    public byte[] j;
    public byte[] k;

    /* renamed from: com.yandex.metrica.impl.ob.cf$a */
    /* loaded from: classes5.dex */
    public static final class a extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f14566a;

        /* renamed from: b  reason: collision with root package name */
        public int f14567b;

        public a() {
            a();
        }

        public a a() {
            this.f14566a = 0L;
            this.f14567b = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            long j = this.f14566a;
            if (j != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j);
            }
            int i = this.f14567b;
            return i != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    this.f14566a = codedInputByteBufferNano.readInt64();
                } else if (readTag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f14567b = codedInputByteBufferNano.readInt32();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            long j = this.f14566a;
            if (j != 0) {
                codedOutputByteBufferNano.writeInt64(1, j);
            }
            int i = this.f14567b;
            if (i != 0) {
                codedOutputByteBufferNano.writeInt32(2, i);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C1463cf() {
        if (!m) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (!m) {
                    l = InternalNano.bytesDefaultValue("manual");
                    m = true;
                }
            }
        }
        a();
    }

    public C1463cf a() {
        this.f14558a = (byte[]) l.clone();
        this.f14559b = null;
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.f14560c = bArr;
        this.f14561d = 0;
        this.f14562e = bArr;
        this.f14563f = bArr;
        this.f14564g = bArr;
        this.f14565h = bArr;
        this.i = bArr;
        this.j = bArr;
        this.k = bArr;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!Arrays.equals(this.f14558a, l)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f14558a);
        }
        a aVar = this.f14559b;
        if (aVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, aVar);
        }
        if (!Arrays.equals(this.f14560c, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(3, this.f14560c);
        }
        int i = this.f14561d;
        if (i != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i);
        }
        if (!Arrays.equals(this.f14562e, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(5, this.f14562e);
        }
        if (!Arrays.equals(this.f14563f, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(6, this.f14563f);
        }
        if (!Arrays.equals(this.f14564g, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(7, this.f14564g);
        }
        if (!Arrays.equals(this.f14565h, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(8, this.f14565h);
        }
        if (!Arrays.equals(this.i, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(9, this.i);
        }
        if (!Arrays.equals(this.j, WireFormatNano.EMPTY_BYTES)) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(10, this.j);
        }
        return !Arrays.equals(this.k, WireFormatNano.EMPTY_BYTES) ? computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(11, this.k) : computeSerializedSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    break;
                case 10:
                    this.f14558a = codedInputByteBufferNano.readBytes();
                    break;
                case 18:
                    if (this.f14559b == null) {
                        this.f14559b = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.f14559b);
                    break;
                case 26:
                    this.f14560c = codedInputByteBufferNano.readBytes();
                    break;
                case 32:
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    switch (readInt32) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            this.f14561d = readInt32;
                            continue;
                    }
                case 42:
                    this.f14562e = codedInputByteBufferNano.readBytes();
                    break;
                case 50:
                    this.f14563f = codedInputByteBufferNano.readBytes();
                    break;
                case 58:
                    this.f14564g = codedInputByteBufferNano.readBytes();
                    break;
                case 66:
                    this.f14565h = codedInputByteBufferNano.readBytes();
                    break;
                case 74:
                    this.i = codedInputByteBufferNano.readBytes();
                    break;
                case 82:
                    this.j = codedInputByteBufferNano.readBytes();
                    break;
                case 90:
                    this.k = codedInputByteBufferNano.readBytes();
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
        if (!Arrays.equals(this.f14558a, l)) {
            codedOutputByteBufferNano.writeBytes(1, this.f14558a);
        }
        a aVar = this.f14559b;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(2, aVar);
        }
        if (!Arrays.equals(this.f14560c, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(3, this.f14560c);
        }
        int i = this.f14561d;
        if (i != 0) {
            codedOutputByteBufferNano.writeInt32(4, i);
        }
        if (!Arrays.equals(this.f14562e, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(5, this.f14562e);
        }
        if (!Arrays.equals(this.f14563f, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(6, this.f14563f);
        }
        if (!Arrays.equals(this.f14564g, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(7, this.f14564g);
        }
        if (!Arrays.equals(this.f14565h, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(8, this.f14565h);
        }
        if (!Arrays.equals(this.i, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(9, this.i);
        }
        if (!Arrays.equals(this.j, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(10, this.j);
        }
        if (!Arrays.equals(this.k, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(11, this.k);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
