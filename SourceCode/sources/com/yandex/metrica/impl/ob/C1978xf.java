package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.xf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1978xf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public a[] f16039a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f16040b;

    /* renamed from: com.yandex.metrica.impl.ob.xf$a */
    /* loaded from: classes5.dex */
    public static final class a extends MessageNano {

        /* renamed from: f  reason: collision with root package name */
        private static volatile a[] f16041f;

        /* renamed from: a  reason: collision with root package name */
        public int f16042a;

        /* renamed from: b  reason: collision with root package name */
        public String f16043b;

        /* renamed from: c  reason: collision with root package name */
        public String f16044c;

        /* renamed from: d  reason: collision with root package name */
        public long f16045d;

        /* renamed from: e  reason: collision with root package name */
        public long f16046e;

        public a() {
            a();
        }

        public static a[] b() {
            if (f16041f == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f16041f == null) {
                        f16041f = new a[0];
                    }
                }
            }
            return f16041f;
        }

        public a a() {
            this.f16042a = 1;
            this.f16043b = "";
            this.f16044c = "";
            this.f16045d = 0L;
            this.f16046e = 0L;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt32Size(1, this.f16042a) + CodedOutputByteBufferNano.computeStringSize(2, this.f16043b) + CodedOutputByteBufferNano.computeStringSize(3, this.f16044c) + CodedOutputByteBufferNano.computeUInt64Size(4, this.f16045d) + CodedOutputByteBufferNano.computeUInt64Size(5, this.f16046e);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                        this.f16042a = readInt32;
                    }
                } else if (readTag == 18) {
                    this.f16043b = codedInputByteBufferNano.readString();
                } else if (readTag == 26) {
                    this.f16044c = codedInputByteBufferNano.readString();
                } else if (readTag == 32) {
                    this.f16045d = codedInputByteBufferNano.readUInt64();
                } else if (readTag != 40) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f16046e = codedInputByteBufferNano.readUInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeInt32(1, this.f16042a);
            codedOutputByteBufferNano.writeString(2, this.f16043b);
            codedOutputByteBufferNano.writeString(3, this.f16044c);
            codedOutputByteBufferNano.writeUInt64(4, this.f16045d);
            codedOutputByteBufferNano.writeUInt64(5, this.f16046e);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C1978xf() {
        a();
    }

    public C1978xf a() {
        this.f16039a = a.b();
        this.f16040b = false;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        a[] aVarArr = this.f16039a;
        if (aVarArr != null && aVarArr.length > 0) {
            int i = 0;
            while (true) {
                a[] aVarArr2 = this.f16039a;
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
        return computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(2, this.f16040b);
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag == 10) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                a[] aVarArr = this.f16039a;
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
                this.f16039a = aVarArr2;
            } else if (readTag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                this.f16040b = codedInputByteBufferNano.readBool();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        a[] aVarArr = this.f16039a;
        if (aVarArr != null && aVarArr.length > 0) {
            int i = 0;
            while (true) {
                a[] aVarArr2 = this.f16039a;
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
        codedOutputByteBufferNano.writeBool(2, this.f16040b);
        super.writeTo(codedOutputByteBufferNano);
    }
}
