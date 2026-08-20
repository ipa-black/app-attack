package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.mf  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1712mf extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public int f15152a;

    /* renamed from: b  reason: collision with root package name */
    public q f15153b;

    /* renamed from: c  reason: collision with root package name */
    public o f15154c;

    /* renamed from: d  reason: collision with root package name */
    public p f15155d;

    /* renamed from: e  reason: collision with root package name */
    public b f15156e;

    /* renamed from: f  reason: collision with root package name */
    public h f15157f;

    /* renamed from: com.yandex.metrica.impl.ob.mf$a */
    /* loaded from: classes5.dex */
    public static final class a extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile a[] f15158c;

        /* renamed from: a  reason: collision with root package name */
        public byte[] f15159a;

        /* renamed from: b  reason: collision with root package name */
        public e f15160b;

        public a() {
            a();
        }

        public static a[] b() {
            if (f15158c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f15158c == null) {
                        f15158c = new a[0];
                    }
                }
            }
            return f15158c;
        }

        public a a() {
            this.f15159a = WireFormatNano.EMPTY_BYTES;
            this.f15160b = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!Arrays.equals(this.f15159a, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f15159a);
            }
            e eVar = this.f15160b;
            return eVar != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, eVar) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f15159a = codedInputByteBufferNano.readBytes();
                } else if (readTag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    if (this.f15160b == null) {
                        this.f15160b = new e();
                    }
                    codedInputByteBufferNano.readMessage(this.f15160b);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!Arrays.equals(this.f15159a, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(1, this.f15159a);
            }
            e eVar = this.f15160b;
            if (eVar != null) {
                codedOutputByteBufferNano.writeMessage(2, eVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$b */
    /* loaded from: classes5.dex */
    public static final class b extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public c f15161a;

        public b() {
            a();
        }

        public b a() {
            this.f15161a = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            c cVar = this.f15161a;
            return cVar != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(1, cVar) : computeSerializedSize;
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
                    if (this.f15161a == null) {
                        this.f15161a = new c();
                    }
                    codedInputByteBufferNano.readMessage(this.f15161a);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            c cVar = this.f15161a;
            if (cVar != null) {
                codedOutputByteBufferNano.writeMessage(1, cVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$c */
    /* loaded from: classes5.dex */
    public static final class c extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public k f15162a;

        /* renamed from: b  reason: collision with root package name */
        public m f15163b;

        /* renamed from: c  reason: collision with root package name */
        public e f15164c;

        /* renamed from: d  reason: collision with root package name */
        public j f15165d;

        public c() {
            a();
        }

        public c a() {
            this.f15162a = null;
            this.f15163b = null;
            this.f15164c = null;
            this.f15165d = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            k kVar = this.f15162a;
            if (kVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, kVar);
            }
            m mVar = this.f15163b;
            if (mVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, mVar);
            }
            e eVar = this.f15164c;
            if (eVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, eVar);
            }
            j jVar = this.f15165d;
            return jVar != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(4, jVar) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    if (this.f15162a == null) {
                        this.f15162a = new k();
                    }
                    codedInputByteBufferNano.readMessage(this.f15162a);
                } else if (readTag == 18) {
                    if (this.f15163b == null) {
                        this.f15163b = new m();
                    }
                    codedInputByteBufferNano.readMessage(this.f15163b);
                } else if (readTag == 26) {
                    if (this.f15164c == null) {
                        this.f15164c = new e();
                    }
                    codedInputByteBufferNano.readMessage(this.f15164c);
                } else if (readTag != 34) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    if (this.f15165d == null) {
                        this.f15165d = new j();
                    }
                    codedInputByteBufferNano.readMessage(this.f15165d);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            k kVar = this.f15162a;
            if (kVar != null) {
                codedOutputByteBufferNano.writeMessage(1, kVar);
            }
            m mVar = this.f15163b;
            if (mVar != null) {
                codedOutputByteBufferNano.writeMessage(2, mVar);
            }
            e eVar = this.f15164c;
            if (eVar != null) {
                codedOutputByteBufferNano.writeMessage(3, eVar);
            }
            j jVar = this.f15165d;
            if (jVar != null) {
                codedOutputByteBufferNano.writeMessage(4, jVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$d */
    /* loaded from: classes5.dex */
    public static final class d extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[][] f15166a;

        public d() {
            a();
        }

        public d a() {
            this.f15166a = WireFormatNano.EMPTY_BYTES_ARRAY;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            byte[][] bArr = this.f15166a;
            if (bArr == null || bArr.length <= 0) {
                return computeSerializedSize;
            }
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                byte[][] bArr2 = this.f15166a;
                if (i >= bArr2.length) {
                    return computeSerializedSize + i2 + i3;
                }
                byte[] bArr3 = bArr2[i];
                if (bArr3 != null) {
                    i3++;
                    i2 += CodedOutputByteBufferNano.computeBytesSizeNoTag(bArr3);
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
                } else if (readTag != 10) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                    byte[][] bArr = this.f15166a;
                    int length = bArr == null ? 0 : bArr.length;
                    int i = repeatedFieldArrayLength + length;
                    byte[][] bArr2 = new byte[i];
                    if (length != 0) {
                        System.arraycopy(bArr, 0, bArr2, 0, length);
                    }
                    while (length < i - 1) {
                        bArr2[length] = codedInputByteBufferNano.readBytes();
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    bArr2[length] = codedInputByteBufferNano.readBytes();
                    this.f15166a = bArr2;
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            byte[][] bArr = this.f15166a;
            if (bArr != null && bArr.length > 0) {
                int i = 0;
                while (true) {
                    byte[][] bArr2 = this.f15166a;
                    if (i >= bArr2.length) {
                        break;
                    }
                    byte[] bArr3 = bArr2[i];
                    if (bArr3 != null) {
                        codedOutputByteBufferNano.writeBytes(1, bArr3);
                    }
                    i++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$e */
    /* loaded from: classes5.dex */
    public static final class e extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f15167a;

        /* renamed from: b  reason: collision with root package name */
        public int f15168b;

        public e() {
            a();
        }

        public e a() {
            this.f15167a = 0L;
            this.f15168b = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            long j = this.f15167a;
            if (j != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j);
            }
            int i = this.f15168b;
            return i != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    this.f15167a = codedInputByteBufferNano.readInt64();
                } else if (readTag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f15168b = codedInputByteBufferNano.readInt32();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            long j = this.f15167a;
            if (j != 0) {
                codedOutputByteBufferNano.writeInt64(1, j);
            }
            int i = this.f15168b;
            if (i != 0) {
                codedOutputByteBufferNano.writeInt32(2, i);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$f */
    /* loaded from: classes5.dex */
    public static final class f extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f15169a;

        /* renamed from: b  reason: collision with root package name */
        public byte[] f15170b;

        /* renamed from: c  reason: collision with root package name */
        public i f15171c;

        /* renamed from: d  reason: collision with root package name */
        public g[] f15172d;

        /* renamed from: e  reason: collision with root package name */
        public int f15173e;

        public f() {
            a();
        }

        public f a() {
            byte[] bArr = WireFormatNano.EMPTY_BYTES;
            this.f15169a = bArr;
            this.f15170b = bArr;
            this.f15171c = null;
            this.f15172d = g.b();
            this.f15173e = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!Arrays.equals(this.f15169a, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f15169a);
            }
            if (!Arrays.equals(this.f15170b, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(2, this.f15170b);
            }
            i iVar = this.f15171c;
            if (iVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, iVar);
            }
            g[] gVarArr = this.f15172d;
            if (gVarArr != null && gVarArr.length > 0) {
                int i = 0;
                while (true) {
                    g[] gVarArr2 = this.f15172d;
                    if (i >= gVarArr2.length) {
                        break;
                    }
                    g gVar = gVarArr2[i];
                    if (gVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, gVar);
                    }
                    i++;
                }
            }
            int i2 = this.f15173e;
            return i2 != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeUInt32Size(5, i2) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f15169a = codedInputByteBufferNano.readBytes();
                } else if (readTag == 18) {
                    this.f15170b = codedInputByteBufferNano.readBytes();
                } else if (readTag == 26) {
                    if (this.f15171c == null) {
                        this.f15171c = new i();
                    }
                    codedInputByteBufferNano.readMessage(this.f15171c);
                } else if (readTag == 34) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                    g[] gVarArr = this.f15172d;
                    int length = gVarArr == null ? 0 : gVarArr.length;
                    int i = repeatedFieldArrayLength + length;
                    g[] gVarArr2 = new g[i];
                    if (length != 0) {
                        System.arraycopy(gVarArr, 0, gVarArr2, 0, length);
                    }
                    while (length < i - 1) {
                        g gVar = new g();
                        gVarArr2[length] = gVar;
                        codedInputByteBufferNano.readMessage(gVar);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    g gVar2 = new g();
                    gVarArr2[length] = gVar2;
                    codedInputByteBufferNano.readMessage(gVar2);
                    this.f15172d = gVarArr2;
                } else if (readTag != 40) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f15173e = codedInputByteBufferNano.readUInt32();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!Arrays.equals(this.f15169a, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(1, this.f15169a);
            }
            if (!Arrays.equals(this.f15170b, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(2, this.f15170b);
            }
            i iVar = this.f15171c;
            if (iVar != null) {
                codedOutputByteBufferNano.writeMessage(3, iVar);
            }
            g[] gVarArr = this.f15172d;
            if (gVarArr != null && gVarArr.length > 0) {
                int i = 0;
                while (true) {
                    g[] gVarArr2 = this.f15172d;
                    if (i >= gVarArr2.length) {
                        break;
                    }
                    g gVar = gVarArr2[i];
                    if (gVar != null) {
                        codedOutputByteBufferNano.writeMessage(4, gVar);
                    }
                    i++;
                }
            }
            int i2 = this.f15173e;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeUInt32(5, i2);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$g */
    /* loaded from: classes5.dex */
    public static final class g extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile g[] f15174c;

        /* renamed from: a  reason: collision with root package name */
        public int f15175a;

        /* renamed from: b  reason: collision with root package name */
        public c f15176b;

        public g() {
            a();
        }

        public static g[] b() {
            if (f15174c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f15174c == null) {
                        f15174c = new g[0];
                    }
                }
            }
            return f15174c;
        }

        public g a() {
            this.f15175a = 0;
            this.f15176b = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            int i = this.f15175a;
            if (i != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i);
            }
            c cVar = this.f15176b;
            return cVar != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, cVar) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    this.f15175a = codedInputByteBufferNano.readUInt32();
                } else if (readTag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    if (this.f15176b == null) {
                        this.f15176b = new c();
                    }
                    codedInputByteBufferNano.readMessage(this.f15176b);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            int i = this.f15175a;
            if (i != 0) {
                codedOutputByteBufferNano.writeUInt32(1, i);
            }
            c cVar = this.f15176b;
            if (cVar != null) {
                codedOutputByteBufferNano.writeMessage(2, cVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$h */
    /* loaded from: classes5.dex */
    public static final class h extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public f f15177a;

        public h() {
            a();
        }

        public h a() {
            this.f15177a = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            f fVar = this.f15177a;
            return fVar != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(1, fVar) : computeSerializedSize;
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
                    if (this.f15177a == null) {
                        this.f15177a = new f();
                    }
                    codedInputByteBufferNano.readMessage(this.f15177a);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            f fVar = this.f15177a;
            if (fVar != null) {
                codedOutputByteBufferNano.writeMessage(1, fVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$i */
    /* loaded from: classes5.dex */
    public static final class i extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public a[] f15178a;

        /* renamed from: b  reason: collision with root package name */
        public int f15179b;

        /* renamed from: com.yandex.metrica.impl.ob.mf$i$a */
        /* loaded from: classes5.dex */
        public static final class a extends MessageNano {

            /* renamed from: c  reason: collision with root package name */
            private static volatile a[] f15180c;

            /* renamed from: a  reason: collision with root package name */
            public byte[] f15181a;

            /* renamed from: b  reason: collision with root package name */
            public byte[] f15182b;

            public a() {
                a();
            }

            public static a[] b() {
                if (f15180c == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (f15180c == null) {
                            f15180c = new a[0];
                        }
                    }
                }
                return f15180c;
            }

            public a a() {
                byte[] bArr = WireFormatNano.EMPTY_BYTES;
                this.f15181a = bArr;
                this.f15182b = bArr;
                this.cachedSize = -1;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.nano.ym.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                if (!Arrays.equals(this.f15181a, WireFormatNano.EMPTY_BYTES)) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f15181a);
                }
                return !Arrays.equals(this.f15182b, WireFormatNano.EMPTY_BYTES) ? computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f15182b) : computeSerializedSize;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        break;
                    } else if (readTag == 10) {
                        this.f15181a = codedInputByteBufferNano.readBytes();
                    } else if (readTag != 18) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        this.f15182b = codedInputByteBufferNano.readBytes();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                if (!Arrays.equals(this.f15181a, WireFormatNano.EMPTY_BYTES)) {
                    codedOutputByteBufferNano.writeBytes(1, this.f15181a);
                }
                if (!Arrays.equals(this.f15182b, WireFormatNano.EMPTY_BYTES)) {
                    codedOutputByteBufferNano.writeBytes(2, this.f15182b);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public i() {
            a();
        }

        public i a() {
            this.f15178a = a.b();
            this.f15179b = 0;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            a[] aVarArr = this.f15178a;
            if (aVarArr != null && aVarArr.length > 0) {
                int i = 0;
                while (true) {
                    a[] aVarArr2 = this.f15178a;
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
            int i2 = this.f15179b;
            return i2 != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeUInt32Size(2, i2) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                    a[] aVarArr = this.f15178a;
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
                    this.f15178a = aVarArr2;
                } else if (readTag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f15179b = codedInputByteBufferNano.readUInt32();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            a[] aVarArr = this.f15178a;
            if (aVarArr != null && aVarArr.length > 0) {
                int i = 0;
                while (true) {
                    a[] aVarArr2 = this.f15178a;
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
            int i2 = this.f15179b;
            if (i2 != 0) {
                codedOutputByteBufferNano.writeUInt32(2, i2);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$j */
    /* loaded from: classes5.dex */
    public static final class j extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public a f15183a;

        /* renamed from: b  reason: collision with root package name */
        public a[] f15184b;

        public j() {
            a();
        }

        public j a() {
            this.f15183a = null;
            this.f15184b = a.b();
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            a aVar = this.f15183a;
            if (aVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, aVar);
            }
            a[] aVarArr = this.f15184b;
            if (aVarArr != null && aVarArr.length > 0) {
                int i = 0;
                while (true) {
                    a[] aVarArr2 = this.f15184b;
                    if (i >= aVarArr2.length) {
                        break;
                    }
                    a aVar2 = aVarArr2[i];
                    if (aVar2 != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, aVar2);
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
                    if (this.f15183a == null) {
                        this.f15183a = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.f15183a);
                } else if (readTag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                    a[] aVarArr = this.f15184b;
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
                    this.f15184b = aVarArr2;
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            a aVar = this.f15183a;
            if (aVar != null) {
                codedOutputByteBufferNano.writeMessage(1, aVar);
            }
            a[] aVarArr = this.f15184b;
            if (aVarArr != null && aVarArr.length > 0) {
                int i = 0;
                while (true) {
                    a[] aVarArr2 = this.f15184b;
                    if (i >= aVarArr2.length) {
                        break;
                    }
                    a aVar2 = aVarArr2[i];
                    if (aVar2 != null) {
                        codedOutputByteBufferNano.writeMessage(2, aVar2);
                    }
                    i++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$k */
    /* loaded from: classes5.dex */
    public static final class k extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f15185a;

        /* renamed from: b  reason: collision with root package name */
        public byte[] f15186b;

        /* renamed from: c  reason: collision with root package name */
        public d f15187c;

        /* renamed from: d  reason: collision with root package name */
        public i f15188d;

        /* renamed from: e  reason: collision with root package name */
        public j f15189e;

        /* renamed from: f  reason: collision with root package name */
        public j f15190f;

        /* renamed from: g  reason: collision with root package name */
        public l[] f15191g;

        public k() {
            a();
        }

        public k a() {
            byte[] bArr = WireFormatNano.EMPTY_BYTES;
            this.f15185a = bArr;
            this.f15186b = bArr;
            this.f15187c = null;
            this.f15188d = null;
            this.f15189e = null;
            this.f15190f = null;
            this.f15191g = l.b();
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!Arrays.equals(this.f15185a, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f15185a);
            }
            if (!Arrays.equals(this.f15186b, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(2, this.f15186b);
            }
            d dVar = this.f15187c;
            if (dVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, dVar);
            }
            i iVar = this.f15188d;
            if (iVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, iVar);
            }
            j jVar = this.f15189e;
            if (jVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, jVar);
            }
            j jVar2 = this.f15190f;
            if (jVar2 != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(6, jVar2);
            }
            l[] lVarArr = this.f15191g;
            if (lVarArr != null && lVarArr.length > 0) {
                int i = 0;
                while (true) {
                    l[] lVarArr2 = this.f15191g;
                    if (i >= lVarArr2.length) {
                        break;
                    }
                    l lVar = lVarArr2[i];
                    if (lVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, lVar);
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
                    this.f15185a = codedInputByteBufferNano.readBytes();
                } else if (readTag == 18) {
                    this.f15186b = codedInputByteBufferNano.readBytes();
                } else if (readTag == 26) {
                    if (this.f15187c == null) {
                        this.f15187c = new d();
                    }
                    codedInputByteBufferNano.readMessage(this.f15187c);
                } else if (readTag == 34) {
                    if (this.f15188d == null) {
                        this.f15188d = new i();
                    }
                    codedInputByteBufferNano.readMessage(this.f15188d);
                } else if (readTag == 42) {
                    if (this.f15189e == null) {
                        this.f15189e = new j();
                    }
                    codedInputByteBufferNano.readMessage(this.f15189e);
                } else if (readTag == 50) {
                    if (this.f15190f == null) {
                        this.f15190f = new j();
                    }
                    codedInputByteBufferNano.readMessage(this.f15190f);
                } else if (readTag != 58) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                    l[] lVarArr = this.f15191g;
                    int length = lVarArr == null ? 0 : lVarArr.length;
                    int i = repeatedFieldArrayLength + length;
                    l[] lVarArr2 = new l[i];
                    if (length != 0) {
                        System.arraycopy(lVarArr, 0, lVarArr2, 0, length);
                    }
                    while (length < i - 1) {
                        l lVar = new l();
                        lVarArr2[length] = lVar;
                        codedInputByteBufferNano.readMessage(lVar);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    l lVar2 = new l();
                    lVarArr2[length] = lVar2;
                    codedInputByteBufferNano.readMessage(lVar2);
                    this.f15191g = lVarArr2;
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!Arrays.equals(this.f15185a, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(1, this.f15185a);
            }
            if (!Arrays.equals(this.f15186b, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(2, this.f15186b);
            }
            d dVar = this.f15187c;
            if (dVar != null) {
                codedOutputByteBufferNano.writeMessage(3, dVar);
            }
            i iVar = this.f15188d;
            if (iVar != null) {
                codedOutputByteBufferNano.writeMessage(4, iVar);
            }
            j jVar = this.f15189e;
            if (jVar != null) {
                codedOutputByteBufferNano.writeMessage(5, jVar);
            }
            j jVar2 = this.f15190f;
            if (jVar2 != null) {
                codedOutputByteBufferNano.writeMessage(6, jVar2);
            }
            l[] lVarArr = this.f15191g;
            if (lVarArr != null && lVarArr.length > 0) {
                int i = 0;
                while (true) {
                    l[] lVarArr2 = this.f15191g;
                    if (i >= lVarArr2.length) {
                        break;
                    }
                    l lVar = lVarArr2[i];
                    if (lVar != null) {
                        codedOutputByteBufferNano.writeMessage(7, lVar);
                    }
                    i++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$l */
    /* loaded from: classes5.dex */
    public static final class l extends MessageNano {

        /* renamed from: b  reason: collision with root package name */
        private static volatile l[] f15192b;

        /* renamed from: a  reason: collision with root package name */
        public byte[] f15193a;

        public l() {
            a();
        }

        public static l[] b() {
            if (f15192b == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f15192b == null) {
                        f15192b = new l[0];
                    }
                }
            }
            return f15192b;
        }

        public l a() {
            this.f15193a = WireFormatNano.EMPTY_BYTES;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            return !Arrays.equals(this.f15193a, WireFormatNano.EMPTY_BYTES) ? computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(1, this.f15193a) : computeSerializedSize;
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
                    this.f15193a = codedInputByteBufferNano.readBytes();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!Arrays.equals(this.f15193a, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(1, this.f15193a);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$m */
    /* loaded from: classes5.dex */
    public static final class m extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f15194a;

        /* renamed from: b  reason: collision with root package name */
        public byte[] f15195b;

        /* renamed from: c  reason: collision with root package name */
        public n f15196c;

        public m() {
            a();
        }

        public m a() {
            byte[] bArr = WireFormatNano.EMPTY_BYTES;
            this.f15194a = bArr;
            this.f15195b = bArr;
            this.f15196c = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!Arrays.equals(this.f15194a, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f15194a);
            }
            if (!Arrays.equals(this.f15195b, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(2, this.f15195b);
            }
            n nVar = this.f15196c;
            return nVar != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, nVar) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f15194a = codedInputByteBufferNano.readBytes();
                } else if (readTag == 18) {
                    this.f15195b = codedInputByteBufferNano.readBytes();
                } else if (readTag != 26) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    if (this.f15196c == null) {
                        this.f15196c = new n();
                    }
                    codedInputByteBufferNano.readMessage(this.f15196c);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!Arrays.equals(this.f15194a, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(1, this.f15194a);
            }
            if (!Arrays.equals(this.f15195b, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(2, this.f15195b);
            }
            n nVar = this.f15196c;
            if (nVar != null) {
                codedOutputByteBufferNano.writeMessage(3, nVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$n */
    /* loaded from: classes5.dex */
    public static final class n extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f15197a;

        /* renamed from: b  reason: collision with root package name */
        public d f15198b;

        /* renamed from: c  reason: collision with root package name */
        public byte[] f15199c;

        /* renamed from: d  reason: collision with root package name */
        public i f15200d;

        public n() {
            a();
        }

        public n a() {
            byte[] bArr = WireFormatNano.EMPTY_BYTES;
            this.f15197a = bArr;
            this.f15198b = null;
            this.f15199c = bArr;
            this.f15200d = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!Arrays.equals(this.f15197a, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.f15197a);
            }
            d dVar = this.f15198b;
            if (dVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, dVar);
            }
            if (!Arrays.equals(this.f15199c, WireFormatNano.EMPTY_BYTES)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(3, this.f15199c);
            }
            i iVar = this.f15200d;
            return iVar != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(4, iVar) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f15197a = codedInputByteBufferNano.readBytes();
                } else if (readTag == 18) {
                    if (this.f15198b == null) {
                        this.f15198b = new d();
                    }
                    codedInputByteBufferNano.readMessage(this.f15198b);
                } else if (readTag == 26) {
                    this.f15199c = codedInputByteBufferNano.readBytes();
                } else if (readTag != 34) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    if (this.f15200d == null) {
                        this.f15200d = new i();
                    }
                    codedInputByteBufferNano.readMessage(this.f15200d);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!Arrays.equals(this.f15197a, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(1, this.f15197a);
            }
            d dVar = this.f15198b;
            if (dVar != null) {
                codedOutputByteBufferNano.writeMessage(2, dVar);
            }
            if (!Arrays.equals(this.f15199c, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(3, this.f15199c);
            }
            i iVar = this.f15200d;
            if (iVar != null) {
                codedOutputByteBufferNano.writeMessage(4, iVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$o */
    /* loaded from: classes5.dex */
    public static final class o extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public k f15201a;

        /* renamed from: b  reason: collision with root package name */
        public n f15202b;

        public o() {
            a();
        }

        public o a() {
            this.f15201a = null;
            this.f15202b = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            k kVar = this.f15201a;
            if (kVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, kVar);
            }
            n nVar = this.f15202b;
            return nVar != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, nVar) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    if (this.f15201a == null) {
                        this.f15201a = new k();
                    }
                    codedInputByteBufferNano.readMessage(this.f15201a);
                } else if (readTag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    if (this.f15202b == null) {
                        this.f15202b = new n();
                    }
                    codedInputByteBufferNano.readMessage(this.f15202b);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            k kVar = this.f15201a;
            if (kVar != null) {
                codedOutputByteBufferNano.writeMessage(1, kVar);
            }
            n nVar = this.f15202b;
            if (nVar != null) {
                codedOutputByteBufferNano.writeMessage(2, nVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$p */
    /* loaded from: classes5.dex */
    public static final class p extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public k f15203a;

        /* renamed from: b  reason: collision with root package name */
        public m f15204b;

        public p() {
            a();
        }

        public p a() {
            this.f15203a = null;
            this.f15204b = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            k kVar = this.f15203a;
            if (kVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, kVar);
            }
            m mVar = this.f15204b;
            return mVar != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, mVar) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    if (this.f15203a == null) {
                        this.f15203a = new k();
                    }
                    codedInputByteBufferNano.readMessage(this.f15203a);
                } else if (readTag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    if (this.f15204b == null) {
                        this.f15204b = new m();
                    }
                    codedInputByteBufferNano.readMessage(this.f15204b);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            k kVar = this.f15203a;
            if (kVar != null) {
                codedOutputByteBufferNano.writeMessage(1, kVar);
            }
            m mVar = this.f15204b;
            if (mVar != null) {
                codedOutputByteBufferNano.writeMessage(2, mVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mf$q */
    /* loaded from: classes5.dex */
    public static final class q extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public n f15205a;

        public q() {
            a();
        }

        public q a() {
            this.f15205a = null;
            this.cachedSize = -1;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.ym.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            n nVar = this.f15205a;
            return nVar != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(1, nVar) : computeSerializedSize;
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
                    if (this.f15205a == null) {
                        this.f15205a = new n();
                    }
                    codedInputByteBufferNano.readMessage(this.f15205a);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            n nVar = this.f15205a;
            if (nVar != null) {
                codedOutputByteBufferNano.writeMessage(1, nVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public C1712mf() {
        a();
    }

    public C1712mf a() {
        this.f15152a = 0;
        this.f15153b = null;
        this.f15154c = null;
        this.f15155d = null;
        this.f15156e = null;
        this.f15157f = null;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i2 = this.f15152a;
        if (i2 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i2);
        }
        q qVar = this.f15153b;
        if (qVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, qVar);
        }
        o oVar = this.f15154c;
        if (oVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, oVar);
        }
        p pVar = this.f15155d;
        if (pVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, pVar);
        }
        b bVar = this.f15156e;
        if (bVar != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, bVar);
        }
        h hVar = this.f15157f;
        return hVar != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(6, hVar) : computeSerializedSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag != 0) {
                if (readTag == 8) {
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
                            this.f15152a = readInt32;
                            continue;
                    }
                } else if (readTag == 18) {
                    if (this.f15153b == null) {
                        this.f15153b = new q();
                    }
                    codedInputByteBufferNano.readMessage(this.f15153b);
                } else if (readTag == 26) {
                    if (this.f15154c == null) {
                        this.f15154c = new o();
                    }
                    codedInputByteBufferNano.readMessage(this.f15154c);
                } else if (readTag == 34) {
                    if (this.f15155d == null) {
                        this.f15155d = new p();
                    }
                    codedInputByteBufferNano.readMessage(this.f15155d);
                } else if (readTag == 42) {
                    if (this.f15156e == null) {
                        this.f15156e = new b();
                    }
                    codedInputByteBufferNano.readMessage(this.f15156e);
                } else if (readTag != 50) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    }
                } else {
                    if (this.f15157f == null) {
                        this.f15157f = new h();
                    }
                    codedInputByteBufferNano.readMessage(this.f15157f);
                }
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        int i2 = this.f15152a;
        if (i2 != 0) {
            codedOutputByteBufferNano.writeInt32(1, i2);
        }
        q qVar = this.f15153b;
        if (qVar != null) {
            codedOutputByteBufferNano.writeMessage(2, qVar);
        }
        o oVar = this.f15154c;
        if (oVar != null) {
            codedOutputByteBufferNano.writeMessage(3, oVar);
        }
        p pVar = this.f15155d;
        if (pVar != null) {
            codedOutputByteBufferNano.writeMessage(4, pVar);
        }
        b bVar = this.f15156e;
        if (bVar != null) {
            codedOutputByteBufferNano.writeMessage(5, bVar);
        }
        h hVar = this.f15157f;
        if (hVar != null) {
            codedOutputByteBufferNano.writeMessage(6, hVar);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
