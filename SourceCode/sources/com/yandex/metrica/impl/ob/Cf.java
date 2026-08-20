package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
/* loaded from: classes5.dex */
public final class Cf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public a f12753a;

    /* renamed from: b  reason: collision with root package name */
    public b[] f12754b;

    /* loaded from: classes5.dex */
    public static final class a extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public String f12755a;

        /* renamed from: b  reason: collision with root package name */
        public String f12756b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f12757c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f12758d;

        /* renamed from: e  reason: collision with root package name */
        public int f12759e;

        public a() {
            a();
        }

        public a a() {
            this.f12755a = "";
            this.f12756b = "";
            this.f12757c = false;
            this.f12758d = false;
            this.f12759e = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!this.f12755a.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f12755a);
            }
            if (!this.f12756b.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f12756b);
            }
            boolean z = this.f12757c;
            if (z) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(3, z);
            }
            boolean z2 = this.f12758d;
            if (z2) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(4, z2);
            }
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(5, this.f12759e);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f12755a = codedInputByteBufferNano.readString();
                } else if (readTag == 18) {
                    this.f12756b = codedInputByteBufferNano.readString();
                } else if (readTag == 24) {
                    this.f12757c = codedInputByteBufferNano.readBool();
                } else if (readTag == 32) {
                    this.f12758d = codedInputByteBufferNano.readBool();
                } else if (readTag != 40) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                        this.f12759e = readInt32;
                    }
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!this.f12755a.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.f12755a);
            }
            if (!this.f12756b.equals("")) {
                codedOutputByteBufferNano.writeString(2, this.f12756b);
            }
            boolean z = this.f12757c;
            if (z) {
                codedOutputByteBufferNano.writeBool(3, z);
            }
            boolean z2 = this.f12758d;
            if (z2) {
                codedOutputByteBufferNano.writeBool(4, z2);
            }
            codedOutputByteBufferNano.writeInt32(5, this.f12759e);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends MessageNano {

        /* renamed from: d  reason: collision with root package name */
        private static volatile b[] f12760d;

        /* renamed from: a  reason: collision with root package name */
        public String f12761a;

        /* renamed from: b  reason: collision with root package name */
        public String f12762b;

        /* renamed from: c  reason: collision with root package name */
        public int f12763c;

        public b() {
            a();
        }

        public static b[] b() {
            if (f12760d == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f12760d == null) {
                        f12760d = new b[0];
                    }
                }
            }
            return f12760d;
        }

        public b a() {
            this.f12761a = "";
            this.f12762b = "";
            this.f12763c = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!this.f12761a.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f12761a);
            }
            if (!this.f12762b.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.f12762b);
            }
            return computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, this.f12763c);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f12761a = codedInputByteBufferNano.readString();
                } else if (readTag == 18) {
                    this.f12762b = codedInputByteBufferNano.readString();
                } else if (readTag != 24) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                        this.f12763c = readInt32;
                    }
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!this.f12761a.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.f12761a);
            }
            if (!this.f12762b.equals("")) {
                codedOutputByteBufferNano.writeString(2, this.f12762b);
            }
            codedOutputByteBufferNano.writeInt32(3, this.f12763c);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public Cf() {
        a();
    }

    public Cf a() {
        this.f12753a = null;
        this.f12754b = b.b();
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        a aVar = this.f12753a;
        if (aVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, aVar);
        }
        b[] bVarArr = this.f12754b;
        if (bVarArr != null && bVarArr.length > 0) {
            int i = 0;
            while (true) {
                b[] bVarArr2 = this.f12754b;
                if (i >= bVarArr2.length) {
                    break;
                }
                b bVar = bVarArr2[i];
                if (bVar != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, bVar);
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
                if (this.f12753a == null) {
                    this.f12753a = new a();
                }
                codedInputByteBufferNano.readMessage(this.f12753a);
            } else if (readTag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                b[] bVarArr = this.f12754b;
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
                this.f12754b = bVarArr2;
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        a aVar = this.f12753a;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(1, aVar);
        }
        b[] bVarArr = this.f12754b;
        if (bVarArr != null && bVarArr.length > 0) {
            int i = 0;
            while (true) {
                b[] bVarArr2 = this.f12754b;
                if (i >= bVarArr2.length) {
                    break;
                }
                b bVar = bVarArr2[i];
                if (bVar != null) {
                    codedOutputByteBufferNano.writeMessage(2, bVar);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
