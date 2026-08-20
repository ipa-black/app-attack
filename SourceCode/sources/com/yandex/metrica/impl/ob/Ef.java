package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
/* loaded from: classes5.dex */
public final class Ef extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public a f12871a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f12872b;

    /* loaded from: classes5.dex */
    public static final class a extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public C0347a[] f12873a;

        /* renamed from: com.yandex.metrica.impl.ob.Ef$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class C0347a extends MessageNano {

            /* renamed from: c  reason: collision with root package name */
            private static volatile C0347a[] f12874c;

            /* renamed from: a  reason: collision with root package name */
            public String f12875a;

            /* renamed from: b  reason: collision with root package name */
            public String f12876b;

            public C0347a() {
                a();
            }

            public static C0347a[] b() {
                if (f12874c == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (f12874c == null) {
                            f12874c = new C0347a[0];
                        }
                    }
                }
                return f12874c;
            }

            public C0347a a() {
                this.f12875a = "";
                this.f12876b = "";
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f12875a);
                return !this.f12876b.equals("") ? computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(2, this.f12876b) : computeSerializedSize;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        break;
                    } else if (readTag == 10) {
                        this.f12875a = codedInputByteBufferNano.readString();
                    } else if (readTag != 18) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        this.f12876b = codedInputByteBufferNano.readString();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                codedOutputByteBufferNano.writeString(1, this.f12875a);
                if (!this.f12876b.equals("")) {
                    codedOutputByteBufferNano.writeString(2, this.f12876b);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public a() {
            a();
        }

        public a a() {
            this.f12873a = C0347a.b();
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            C0347a[] c0347aArr = this.f12873a;
            if (c0347aArr != null && c0347aArr.length > 0) {
                int i = 0;
                while (true) {
                    C0347a[] c0347aArr2 = this.f12873a;
                    if (i >= c0347aArr2.length) {
                        break;
                    }
                    C0347a c0347a = c0347aArr2[i];
                    if (c0347a != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c0347a);
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
                    C0347a[] c0347aArr = this.f12873a;
                    int length = c0347aArr == null ? 0 : c0347aArr.length;
                    int i = repeatedFieldArrayLength + length;
                    C0347a[] c0347aArr2 = new C0347a[i];
                    if (length != 0) {
                        System.arraycopy(c0347aArr, 0, c0347aArr2, 0, length);
                    }
                    while (length < i - 1) {
                        C0347a c0347a = new C0347a();
                        c0347aArr2[length] = c0347a;
                        codedInputByteBufferNano.readMessage(c0347a);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    C0347a c0347a2 = new C0347a();
                    c0347aArr2[length] = c0347a2;
                    codedInputByteBufferNano.readMessage(c0347a2);
                    this.f12873a = c0347aArr2;
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            C0347a[] c0347aArr = this.f12873a;
            if (c0347aArr != null && c0347aArr.length > 0) {
                int i = 0;
                while (true) {
                    C0347a[] c0347aArr2 = this.f12873a;
                    if (i >= c0347aArr2.length) {
                        break;
                    }
                    C0347a c0347a = c0347aArr2[i];
                    if (c0347a != null) {
                        codedOutputByteBufferNano.writeMessage(1, c0347a);
                    }
                    i++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public Ef() {
        a();
    }

    public Ef a() {
        this.f12871a = null;
        this.f12872b = false;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        a aVar = this.f12871a;
        if (aVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, aVar);
        }
        boolean z = this.f12872b;
        return z ? computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(2, z) : computeSerializedSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag == 10) {
                if (this.f12871a == null) {
                    this.f12871a = new a();
                }
                codedInputByteBufferNano.readMessage(this.f12871a);
            } else if (readTag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                this.f12872b = codedInputByteBufferNano.readBool();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        a aVar = this.f12871a;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(1, aVar);
        }
        boolean z = this.f12872b;
        if (z) {
            codedOutputByteBufferNano.writeBool(2, z);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
