package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.vf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1930vf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public a[] f15922a;

    /* renamed from: com.yandex.metrica.impl.ob.vf$a */
    /* loaded from: classes5.dex */
    public static final class a extends MessageNano {

        /* renamed from: e  reason: collision with root package name */
        private static volatile a[] f15923e;

        /* renamed from: a  reason: collision with root package name */
        public byte[] f15924a;

        /* renamed from: b  reason: collision with root package name */
        public int f15925b;

        /* renamed from: c  reason: collision with root package name */
        public b f15926c;

        /* renamed from: d  reason: collision with root package name */
        public c f15927d;

        public a() {
            a();
        }

        public static a[] b() {
            if (f15923e == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f15923e == null) {
                        f15923e = new a[0];
                    }
                }
            }
            return f15923e;
        }

        public a a() {
            this.f15924a = WireFormatNano.EMPTY_BYTES;
            this.f15925b = 0;
            this.f15926c = null;
            this.f15927d = null;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeBytesSize(1, this.f15924a) + CodedOutputByteBufferNano.computeInt32Size(2, this.f15925b);
            b bVar = this.f15926c;
            if (bVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, bVar);
            }
            c cVar = this.f15927d;
            return cVar != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(4, cVar) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f15924a = codedInputByteBufferNano.readBytes();
                } else if (readTag == 16) {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                        this.f15925b = readInt32;
                    }
                } else if (readTag == 26) {
                    if (this.f15926c == null) {
                        this.f15926c = new b();
                    }
                    codedInputByteBufferNano.readMessage(this.f15926c);
                } else if (readTag != 34) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    if (this.f15927d == null) {
                        this.f15927d = new c();
                    }
                    codedInputByteBufferNano.readMessage(this.f15927d);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeBytes(1, this.f15924a);
            codedOutputByteBufferNano.writeInt32(2, this.f15925b);
            b bVar = this.f15926c;
            if (bVar != null) {
                codedOutputByteBufferNano.writeMessage(3, bVar);
            }
            c cVar = this.f15927d;
            if (cVar != null) {
                codedOutputByteBufferNano.writeMessage(4, cVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.vf$b */
    /* loaded from: classes5.dex */
    public static final class b extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public boolean f15928a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f15929b;

        public b() {
            a();
        }

        public b a() {
            this.f15928a = false;
            this.f15929b = false;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            boolean z = this.f15928a;
            if (z) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, z);
            }
            boolean z2 = this.f15929b;
            return z2 ? computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(2, z2) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    this.f15928a = codedInputByteBufferNano.readBool();
                } else if (readTag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f15929b = codedInputByteBufferNano.readBool();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            boolean z = this.f15928a;
            if (z) {
                codedOutputByteBufferNano.writeBool(1, z);
            }
            boolean z2 = this.f15929b;
            if (z2) {
                codedOutputByteBufferNano.writeBool(2, z2);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.vf$c */
    /* loaded from: classes5.dex */
    public static final class c extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f15930a;

        /* renamed from: b  reason: collision with root package name */
        public double f15931b;

        /* renamed from: c  reason: collision with root package name */
        public double f15932c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f15933d;

        public c() {
            a();
        }

        public c a() {
            this.f15930a = WireFormatNano.EMPTY_BYTES;
            this.f15931b = 0.0d;
            this.f15932c = 0.0d;
            this.f15933d = false;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!Arrays.equals(this.f15930a, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f15930a);
            }
            if (Double.doubleToLongBits(this.f15931b) != Double.doubleToLongBits(0.0d)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(2, this.f15931b);
            }
            if (Double.doubleToLongBits(this.f15932c) != Double.doubleToLongBits(0.0d)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(3, this.f15932c);
            }
            boolean z = this.f15933d;
            return z ? computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(4, z) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f15930a = codedInputByteBufferNano.readBytes();
                } else if (readTag == 17) {
                    this.f15931b = codedInputByteBufferNano.readDouble();
                } else if (readTag == 25) {
                    this.f15932c = codedInputByteBufferNano.readDouble();
                } else if (readTag != 32) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f15933d = codedInputByteBufferNano.readBool();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!Arrays.equals(this.f15930a, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(1, this.f15930a);
            }
            if (Double.doubleToLongBits(this.f15931b) != Double.doubleToLongBits(0.0d)) {
                codedOutputByteBufferNano.writeDouble(2, this.f15931b);
            }
            if (Double.doubleToLongBits(this.f15932c) != Double.doubleToLongBits(0.0d)) {
                codedOutputByteBufferNano.writeDouble(3, this.f15932c);
            }
            boolean z = this.f15933d;
            if (z) {
                codedOutputByteBufferNano.writeBool(4, z);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C1930vf() {
        a();
    }

    public C1930vf a() {
        this.f15922a = a.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        a[] aVarArr = this.f15922a;
        if (aVarArr != null && aVarArr.length > 0) {
            int i = 0;
            while (true) {
                a[] aVarArr2 = this.f15922a;
                if (i >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i];
                if (aVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, aVar);
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
            } else if (readTag != 10) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                a[] aVarArr = this.f15922a;
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
                this.f15922a = aVarArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        a[] aVarArr = this.f15922a;
        if (aVarArr != null && aVarArr.length > 0) {
            int i = 0;
            while (true) {
                a[] aVarArr2 = this.f15922a;
                if (i >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i];
                if (aVar != null) {
                    codedOutputByteBufferNano.writeMessage(1, aVar);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
