package com.yandex.metrica.impl.ob;

import androidx.work.WorkRequest;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.explorestack.iab.vast.VastError;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes5.dex */
public final class If extends MessageNano {
    public String A;
    public String B;
    public long C;
    public long D;
    public boolean E;
    public n F;
    public j G;
    public int H;
    public int I;
    public w J;
    public v K;
    public v L;
    public v M;
    public t N;
    public c O;
    public f P;
    public String[] Q;
    public b R;
    public a S;
    public h T;
    public g U;
    public r V;
    public l[] W;

    /* renamed from: a  reason: collision with root package name */
    public String f13071a;

    /* renamed from: b  reason: collision with root package name */
    public long f13072b;

    /* renamed from: c  reason: collision with root package name */
    public String[] f13073c;

    /* renamed from: d  reason: collision with root package name */
    public String f13074d;

    /* renamed from: e  reason: collision with root package name */
    public String f13075e;

    /* renamed from: f  reason: collision with root package name */
    public String[] f13076f;

    /* renamed from: g  reason: collision with root package name */
    public String[] f13077g;

    /* renamed from: h  reason: collision with root package name */
    public String[] f13078h;
    public String[] i;
    public d[] j;
    public i k;
    public k[] l;
    public q m;
    public o[] n;
    public String o;
    public String p;
    public String q;
    public boolean r;
    public String s;
    public String[] t;
    public s u;
    public boolean v;
    public m[] w;
    public p x;
    public String y;
    public String z;

    /* loaded from: classes5.dex */
    public static final class a extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public b[] f13079a;

        /* renamed from: com.yandex.metrica.impl.ob.If$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class C0348a extends MessageNano {

            /* renamed from: a  reason: collision with root package name */
            public String f13080a;

            public C0348a() {
                a();
            }

            public C0348a a() {
                this.f13080a = "";
                this.cachedSize = -1;
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            protected int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                return !this.f13080a.equals("") ? computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(1, this.f13080a) : computeSerializedSize;
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
                        this.f13080a = codedInputByteBufferNano.readString();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                if (!this.f13080a.equals("")) {
                    codedOutputByteBufferNano.writeString(1, this.f13080a);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends MessageNano {

            /* renamed from: c  reason: collision with root package name */
            private static volatile b[] f13081c;

            /* renamed from: a  reason: collision with root package name */
            public String f13082a;

            /* renamed from: b  reason: collision with root package name */
            public C0348a f13083b;

            public b() {
                a();
            }

            public static b[] b() {
                if (f13081c == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (f13081c == null) {
                            f13081c = new b[0];
                        }
                    }
                }
                return f13081c;
            }

            public b a() {
                this.f13082a = "";
                this.f13083b = null;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            protected int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                if (!this.f13082a.equals("")) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f13082a);
                }
                C0348a c0348a = this.f13083b;
                return c0348a != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, c0348a) : computeSerializedSize;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        break;
                    } else if (readTag == 10) {
                        this.f13082a = codedInputByteBufferNano.readString();
                    } else if (readTag != 18) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        if (this.f13083b == null) {
                            this.f13083b = new C0348a();
                        }
                        codedInputByteBufferNano.readMessage(this.f13083b);
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                if (!this.f13082a.equals("")) {
                    codedOutputByteBufferNano.writeString(1, this.f13082a);
                }
                C0348a c0348a = this.f13083b;
                if (c0348a != null) {
                    codedOutputByteBufferNano.writeMessage(2, c0348a);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public a() {
            a();
        }

        public a a() {
            this.f13079a = b.b();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            b[] bVarArr = this.f13079a;
            if (bVarArr != null && bVarArr.length > 0) {
                int i = 0;
                while (true) {
                    b[] bVarArr2 = this.f13079a;
                    if (i >= bVarArr2.length) {
                        break;
                    }
                    b bVar = bVarArr2[i];
                    if (bVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, bVar);
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
                    b[] bVarArr = this.f13079a;
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
                    this.f13079a = bVarArr2;
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            b[] bVarArr = this.f13079a;
            if (bVarArr != null && bVarArr.length > 0) {
                int i = 0;
                while (true) {
                    b[] bVarArr2 = this.f13079a;
                    if (i >= bVarArr2.length) {
                        break;
                    }
                    b bVar = bVarArr2[i];
                    if (bVar != null) {
                        codedOutputByteBufferNano.writeMessage(1, bVar);
                    }
                    i++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class b extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public int f13084a;

        /* renamed from: b  reason: collision with root package name */
        public int f13085b;

        public b() {
            a();
        }

        public b a() {
            this.f13084a = 86400;
            this.f13085b = 86400;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            int i = this.f13084a;
            if (i != 86400) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i);
            }
            int i2 = this.f13085b;
            return i2 != 86400 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i2) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    this.f13084a = codedInputByteBufferNano.readInt32();
                } else if (readTag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f13085b = codedInputByteBufferNano.readInt32();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            int i = this.f13084a;
            if (i != 86400) {
                codedOutputByteBufferNano.writeInt32(1, i);
            }
            int i2 = this.f13085b;
            if (i2 != 86400) {
                codedOutputByteBufferNano.writeInt32(2, i2);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f13086a;

        /* renamed from: b  reason: collision with root package name */
        public long f13087b;

        /* renamed from: c  reason: collision with root package name */
        public long f13088c;

        /* renamed from: d  reason: collision with root package name */
        public long f13089d;

        public c() {
            a();
        }

        public c a() {
            this.f13086a = 10000L;
            this.f13087b = 10000L;
            this.f13088c = 10000L;
            this.f13089d = 10000L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            long j = this.f13086a;
            if (j != 10000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j);
            }
            long j2 = this.f13087b;
            if (j2 != 10000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, j2);
            }
            long j3 = this.f13088c;
            if (j3 != 10000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(3, j3);
            }
            long j4 = this.f13089d;
            return j4 != 10000 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(4, j4) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    this.f13086a = codedInputByteBufferNano.readInt64();
                } else if (readTag == 16) {
                    this.f13087b = codedInputByteBufferNano.readInt64();
                } else if (readTag == 24) {
                    this.f13088c = codedInputByteBufferNano.readInt64();
                } else if (readTag != 32) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f13089d = codedInputByteBufferNano.readInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            long j = this.f13086a;
            if (j != 10000) {
                codedOutputByteBufferNano.writeInt64(1, j);
            }
            long j2 = this.f13087b;
            if (j2 != 10000) {
                codedOutputByteBufferNano.writeInt64(2, j2);
            }
            long j3 = this.f13088c;
            if (j3 != 10000) {
                codedOutputByteBufferNano.writeInt64(3, j3);
            }
            long j4 = this.f13089d;
            if (j4 != 10000) {
                codedOutputByteBufferNano.writeInt64(4, j4);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class d extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile d[] f13090c;

        /* renamed from: a  reason: collision with root package name */
        public String f13091a;

        /* renamed from: b  reason: collision with root package name */
        public String[] f13092b;

        public d() {
            a();
        }

        public static d[] b() {
            if (f13090c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f13090c == null) {
                        f13090c = new d[0];
                    }
                }
            }
            return f13090c;
        }

        public d a() {
            this.f13091a = "";
            this.f13092b = WireFormatNano.EMPTY_STRING_ARRAY;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!this.f13091a.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f13091a);
            }
            String[] strArr = this.f13092b;
            if (strArr == null || strArr.length <= 0) {
                return computeSerializedSize;
            }
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                String[] strArr2 = this.f13092b;
                if (i >= strArr2.length) {
                    return computeSerializedSize + i2 + i3;
                }
                String str = strArr2[i];
                if (str != null) {
                    i3++;
                    i2 += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
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
                    this.f13091a = codedInputByteBufferNano.readString();
                } else if (readTag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                    String[] strArr = this.f13092b;
                    int length = strArr == null ? 0 : strArr.length;
                    int i = repeatedFieldArrayLength + length;
                    String[] strArr2 = new String[i];
                    if (length != 0) {
                        System.arraycopy(strArr, 0, strArr2, 0, length);
                    }
                    while (length < i - 1) {
                        strArr2[length] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    strArr2[length] = codedInputByteBufferNano.readString();
                    this.f13092b = strArr2;
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!this.f13091a.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.f13091a);
            }
            String[] strArr = this.f13092b;
            if (strArr != null && strArr.length > 0) {
                int i = 0;
                while (true) {
                    String[] strArr2 = this.f13092b;
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

    /* loaded from: classes5.dex */
    public static final class e extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f13093a;

        /* renamed from: b  reason: collision with root package name */
        public int f13094b;

        public e() {
            a();
        }

        public e a() {
            this.f13093a = 0L;
            this.f13094b = 86400;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f13093a);
            int i = this.f13094b;
            return i != 86400 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, i) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    this.f13093a = codedInputByteBufferNano.readInt64();
                } else if (readTag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f13094b = codedInputByteBufferNano.readInt32();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeInt64(1, this.f13093a);
            int i = this.f13094b;
            if (i != 86400) {
                codedOutputByteBufferNano.writeInt32(2, i);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class f extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public e f13095a;

        /* renamed from: b  reason: collision with root package name */
        public e f13096b;

        /* renamed from: c  reason: collision with root package name */
        public e f13097c;

        public f() {
            a();
        }

        public f a() {
            this.f13095a = null;
            this.f13096b = null;
            this.f13097c = null;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            e eVar = this.f13095a;
            if (eVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, eVar);
            }
            e eVar2 = this.f13096b;
            if (eVar2 != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, eVar2);
            }
            e eVar3 = this.f13097c;
            return eVar3 != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, eVar3) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    if (this.f13095a == null) {
                        this.f13095a = new e();
                    }
                    codedInputByteBufferNano.readMessage(this.f13095a);
                } else if (readTag == 18) {
                    if (this.f13096b == null) {
                        this.f13096b = new e();
                    }
                    codedInputByteBufferNano.readMessage(this.f13096b);
                } else if (readTag != 26) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    if (this.f13097c == null) {
                        this.f13097c = new e();
                    }
                    codedInputByteBufferNano.readMessage(this.f13097c);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            e eVar = this.f13095a;
            if (eVar != null) {
                codedOutputByteBufferNano.writeMessage(1, eVar);
            }
            e eVar2 = this.f13096b;
            if (eVar2 != null) {
                codedOutputByteBufferNano.writeMessage(2, eVar2);
            }
            e eVar3 = this.f13097c;
            if (eVar3 != null) {
                codedOutputByteBufferNano.writeMessage(3, eVar3);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class g extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f13098a;

        public g() {
            a();
        }

        public g a() {
            this.f13098a = 1209600L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            long j = this.f13098a;
            return j != 1209600 ? computeSerializedSize + CodedOutputByteBufferNano.computeUInt64Size(1, j) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 8) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f13098a = codedInputByteBufferNano.readUInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            long j = this.f13098a;
            if (j != 1209600) {
                codedOutputByteBufferNano.writeUInt64(1, j);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class h extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public String f13099a;

        /* renamed from: b  reason: collision with root package name */
        public int f13100b;

        /* renamed from: c  reason: collision with root package name */
        public int f13101c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f13102d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f13103e;

        public h() {
            a();
        }

        public h a() {
            this.f13099a = "";
            this.f13100b = 600;
            this.f13101c = VastError.ERROR_CODE_GENERAL_WRAPPER;
            this.f13102d = false;
            this.f13103e = true;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!this.f13099a.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f13099a);
            }
            int i = this.f13100b;
            if (i != 600) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(2, i);
            }
            int i2 = this.f13101c;
            if (i2 != 300) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(3, i2);
            }
            boolean z = this.f13102d;
            if (z) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(4, z);
            }
            boolean z2 = this.f13103e;
            return !z2 ? computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(5, z2) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f13099a = codedInputByteBufferNano.readString();
                } else if (readTag == 16) {
                    this.f13100b = codedInputByteBufferNano.readUInt32();
                } else if (readTag == 24) {
                    this.f13101c = codedInputByteBufferNano.readUInt32();
                } else if (readTag == 32) {
                    this.f13102d = codedInputByteBufferNano.readBool();
                } else if (readTag != 40) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f13103e = codedInputByteBufferNano.readBool();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!this.f13099a.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.f13099a);
            }
            int i = this.f13100b;
            if (i != 600) {
                codedOutputByteBufferNano.writeUInt32(2, i);
            }
            int i2 = this.f13101c;
            if (i2 != 300) {
                codedOutputByteBufferNano.writeUInt32(3, i2);
            }
            boolean z = this.f13102d;
            if (z) {
                codedOutputByteBufferNano.writeBool(4, z);
            }
            boolean z2 = this.f13103e;
            if (!z2) {
                codedOutputByteBufferNano.writeBool(5, z2);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class i extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public boolean f13104a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f13105b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f13106c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f13107d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f13108e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f13109f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f13110g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f13111h;
        public boolean i;
        public boolean j;
        public boolean k;
        public boolean l;
        public boolean m;
        public boolean n;
        public boolean o;
        public boolean p;
        public boolean q;
        public boolean r;
        public boolean s;
        public boolean t;
        public boolean u;
        public boolean v;
        public boolean w;
        public int x;

        public i() {
            a();
        }

        public i a() {
            this.f13104a = false;
            this.f13105b = false;
            this.f13106c = false;
            this.f13107d = false;
            this.f13108e = false;
            this.f13109f = false;
            this.f13110g = false;
            this.f13111h = false;
            this.i = false;
            this.j = false;
            this.k = true;
            this.l = false;
            this.m = false;
            this.n = false;
            this.o = false;
            this.p = false;
            this.q = false;
            this.r = false;
            this.s = false;
            this.t = true;
            this.u = false;
            this.v = false;
            this.w = false;
            this.x = -1;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeBoolSize(1, this.f13104a) + CodedOutputByteBufferNano.computeBoolSize(2, this.f13105b) + CodedOutputByteBufferNano.computeBoolSize(3, this.f13106c) + CodedOutputByteBufferNano.computeBoolSize(4, this.f13107d) + CodedOutputByteBufferNano.computeBoolSize(6, this.f13108e) + CodedOutputByteBufferNano.computeBoolSize(8, this.f13109f) + CodedOutputByteBufferNano.computeBoolSize(9, this.f13110g) + CodedOutputByteBufferNano.computeBoolSize(11, this.f13111h) + CodedOutputByteBufferNano.computeBoolSize(12, this.i) + CodedOutputByteBufferNano.computeBoolSize(15, this.j) + CodedOutputByteBufferNano.computeBoolSize(16, this.k) + CodedOutputByteBufferNano.computeBoolSize(18, this.l) + CodedOutputByteBufferNano.computeBoolSize(19, this.m) + CodedOutputByteBufferNano.computeBoolSize(21, this.n) + CodedOutputByteBufferNano.computeBoolSize(22, this.o) + CodedOutputByteBufferNano.computeBoolSize(23, this.p) + CodedOutputByteBufferNano.computeBoolSize(24, this.q) + CodedOutputByteBufferNano.computeBoolSize(25, this.r) + CodedOutputByteBufferNano.computeBoolSize(26, this.s) + CodedOutputByteBufferNano.computeBoolSize(27, this.t) + CodedOutputByteBufferNano.computeBoolSize(28, this.u);
            boolean z = this.v;
            if (z) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(29, z);
            }
            boolean z2 = this.w;
            if (z2) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(33, z2);
            }
            int i = this.x;
            return i != -1 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(34, i) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        break;
                    case 8:
                        this.f13104a = codedInputByteBufferNano.readBool();
                        break;
                    case 16:
                        this.f13105b = codedInputByteBufferNano.readBool();
                        break;
                    case 24:
                        this.f13106c = codedInputByteBufferNano.readBool();
                        break;
                    case 32:
                        this.f13107d = codedInputByteBufferNano.readBool();
                        break;
                    case 48:
                        this.f13108e = codedInputByteBufferNano.readBool();
                        break;
                    case 64:
                        this.f13109f = codedInputByteBufferNano.readBool();
                        break;
                    case 72:
                        this.f13110g = codedInputByteBufferNano.readBool();
                        break;
                    case 88:
                        this.f13111h = codedInputByteBufferNano.readBool();
                        break;
                    case 96:
                        this.i = codedInputByteBufferNano.readBool();
                        break;
                    case 120:
                        this.j = codedInputByteBufferNano.readBool();
                        break;
                    case 128:
                        this.k = codedInputByteBufferNano.readBool();
                        break;
                    case 144:
                        this.l = codedInputByteBufferNano.readBool();
                        break;
                    case 152:
                        this.m = codedInputByteBufferNano.readBool();
                        break;
                    case 168:
                        this.n = codedInputByteBufferNano.readBool();
                        break;
                    case 176:
                        this.o = codedInputByteBufferNano.readBool();
                        break;
                    case 184:
                        this.p = codedInputByteBufferNano.readBool();
                        break;
                    case 192:
                        this.q = codedInputByteBufferNano.readBool();
                        break;
                    case 200:
                        this.r = codedInputByteBufferNano.readBool();
                        break;
                    case LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE:
                        this.s = codedInputByteBufferNano.readBool();
                        break;
                    case 216:
                        this.t = codedInputByteBufferNano.readBool();
                        break;
                    case 224:
                        this.u = codedInputByteBufferNano.readBool();
                        break;
                    case 232:
                        this.v = codedInputByteBufferNano.readBool();
                        break;
                    case 264:
                        this.w = codedInputByteBufferNano.readBool();
                        break;
                    case 272:
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        if (readInt32 != -1 && readInt32 != 0 && readInt32 != 1) {
                            break;
                        } else {
                            this.x = readInt32;
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
            codedOutputByteBufferNano.writeBool(1, this.f13104a);
            codedOutputByteBufferNano.writeBool(2, this.f13105b);
            codedOutputByteBufferNano.writeBool(3, this.f13106c);
            codedOutputByteBufferNano.writeBool(4, this.f13107d);
            codedOutputByteBufferNano.writeBool(6, this.f13108e);
            codedOutputByteBufferNano.writeBool(8, this.f13109f);
            codedOutputByteBufferNano.writeBool(9, this.f13110g);
            codedOutputByteBufferNano.writeBool(11, this.f13111h);
            codedOutputByteBufferNano.writeBool(12, this.i);
            codedOutputByteBufferNano.writeBool(15, this.j);
            codedOutputByteBufferNano.writeBool(16, this.k);
            codedOutputByteBufferNano.writeBool(18, this.l);
            codedOutputByteBufferNano.writeBool(19, this.m);
            codedOutputByteBufferNano.writeBool(21, this.n);
            codedOutputByteBufferNano.writeBool(22, this.o);
            codedOutputByteBufferNano.writeBool(23, this.p);
            codedOutputByteBufferNano.writeBool(24, this.q);
            codedOutputByteBufferNano.writeBool(25, this.r);
            codedOutputByteBufferNano.writeBool(26, this.s);
            codedOutputByteBufferNano.writeBool(27, this.t);
            codedOutputByteBufferNano.writeBool(28, this.u);
            boolean z = this.v;
            if (z) {
                codedOutputByteBufferNano.writeBool(29, z);
            }
            boolean z2 = this.w;
            if (z2) {
                codedOutputByteBufferNano.writeBool(33, z2);
            }
            int i = this.x;
            if (i != -1) {
                codedOutputByteBufferNano.writeInt32(34, i);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class j extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f13112a;

        public j() {
            a();
        }

        public j a() {
            this.f13112a = 900L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f13112a);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 8) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f13112a = codedInputByteBufferNano.readInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeInt64(1, this.f13112a);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class k extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile k[] f13113c;

        /* renamed from: a  reason: collision with root package name */
        public a f13114a;

        /* renamed from: b  reason: collision with root package name */
        public b f13115b;

        /* loaded from: classes5.dex */
        public static final class a extends MessageNano {

            /* renamed from: a  reason: collision with root package name */
            public long f13116a;

            /* renamed from: b  reason: collision with root package name */
            public float f13117b;

            /* renamed from: c  reason: collision with root package name */
            public int f13118c;

            /* renamed from: d  reason: collision with root package name */
            public int f13119d;

            /* renamed from: e  reason: collision with root package name */
            public long f13120e;

            /* renamed from: f  reason: collision with root package name */
            public int f13121f;

            /* renamed from: g  reason: collision with root package name */
            public boolean f13122g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f13123h;
            public boolean i;
            public long j;
            public C0349a k;
            public C0349a l;
            public C0349a m;
            public C0349a n;
            public b o;
            public boolean p;
            public boolean q;

            /* renamed from: com.yandex.metrica.impl.ob.If$k$a$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            public static final class C0349a extends MessageNano {

                /* renamed from: a  reason: collision with root package name */
                public boolean f13124a;

                /* renamed from: b  reason: collision with root package name */
                public boolean f13125b;

                /* renamed from: c  reason: collision with root package name */
                public C0350a f13126c;

                /* renamed from: com.yandex.metrica.impl.ob.If$k$a$a$a  reason: collision with other inner class name */
                /* loaded from: classes5.dex */
                public static final class C0350a extends MessageNano {

                    /* renamed from: a  reason: collision with root package name */
                    public long f13127a;

                    /* renamed from: b  reason: collision with root package name */
                    public long f13128b;

                    public C0350a() {
                        a();
                    }

                    public C0350a a() {
                        this.f13127a = 0L;
                        this.f13128b = 0L;
                        this.cachedSize = -1;
                        return this;
                    }

                    @Override // com.google.protobuf.nano.ym.MessageNano
                    protected int computeSerializedSize() {
                        return super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f13127a) + CodedOutputByteBufferNano.computeInt64Size(2, this.f13128b);
                    }

                    @Override // com.google.protobuf.nano.ym.MessageNano
                    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                        while (true) {
                            int readTag = codedInputByteBufferNano.readTag();
                            if (readTag == 0) {
                                break;
                            } else if (readTag == 8) {
                                this.f13127a = codedInputByteBufferNano.readInt64();
                            } else if (readTag != 16) {
                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                    break;
                                }
                            } else {
                                this.f13128b = codedInputByteBufferNano.readInt64();
                            }
                        }
                        return this;
                    }

                    @Override // com.google.protobuf.nano.ym.MessageNano
                    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                        codedOutputByteBufferNano.writeInt64(1, this.f13127a);
                        codedOutputByteBufferNano.writeInt64(2, this.f13128b);
                        super.writeTo(codedOutputByteBufferNano);
                    }
                }

                public C0349a() {
                    a();
                }

                public C0349a a() {
                    this.f13124a = true;
                    this.f13125b = false;
                    this.f13126c = null;
                    this.cachedSize = -1;
                    return this;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                protected int computeSerializedSize() {
                    int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeBoolSize(1, this.f13124a) + CodedOutputByteBufferNano.computeBoolSize(2, this.f13125b);
                    C0350a c0350a = this.f13126c;
                    return c0350a != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, c0350a) : computeSerializedSize;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                    while (true) {
                        int readTag = codedInputByteBufferNano.readTag();
                        if (readTag == 0) {
                            break;
                        } else if (readTag == 8) {
                            this.f13124a = codedInputByteBufferNano.readBool();
                        } else if (readTag == 16) {
                            this.f13125b = codedInputByteBufferNano.readBool();
                        } else if (readTag != 26) {
                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                break;
                            }
                        } else {
                            if (this.f13126c == null) {
                                this.f13126c = new C0350a();
                            }
                            codedInputByteBufferNano.readMessage(this.f13126c);
                        }
                    }
                    return this;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                    codedOutputByteBufferNano.writeBool(1, this.f13124a);
                    codedOutputByteBufferNano.writeBool(2, this.f13125b);
                    C0350a c0350a = this.f13126c;
                    if (c0350a != null) {
                        codedOutputByteBufferNano.writeMessage(3, c0350a);
                    }
                    super.writeTo(codedOutputByteBufferNano);
                }
            }

            /* loaded from: classes5.dex */
            public static final class b extends MessageNano {

                /* renamed from: a  reason: collision with root package name */
                public boolean f13129a;

                /* renamed from: b  reason: collision with root package name */
                public boolean f13130b;

                /* renamed from: c  reason: collision with root package name */
                public C0351a f13131c;

                /* renamed from: com.yandex.metrica.impl.ob.If$k$a$b$a  reason: collision with other inner class name */
                /* loaded from: classes5.dex */
                public static final class C0351a extends MessageNano {

                    /* renamed from: a  reason: collision with root package name */
                    public long f13132a;

                    /* renamed from: b  reason: collision with root package name */
                    public long f13133b;

                    /* renamed from: c  reason: collision with root package name */
                    public int f13134c;

                    public C0351a() {
                        a();
                    }

                    public C0351a a() {
                        this.f13132a = 0L;
                        this.f13133b = 0L;
                        this.f13134c = 0;
                        this.cachedSize = -1;
                        return this;
                    }

                    @Override // com.google.protobuf.nano.ym.MessageNano
                    protected int computeSerializedSize() {
                        return super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f13132a) + CodedOutputByteBufferNano.computeInt64Size(2, this.f13133b) + CodedOutputByteBufferNano.computeInt32Size(3, this.f13134c);
                    }

                    @Override // com.google.protobuf.nano.ym.MessageNano
                    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                        while (true) {
                            int readTag = codedInputByteBufferNano.readTag();
                            if (readTag == 0) {
                                break;
                            } else if (readTag == 8) {
                                this.f13132a = codedInputByteBufferNano.readInt64();
                            } else if (readTag == 16) {
                                this.f13133b = codedInputByteBufferNano.readInt64();
                            } else if (readTag != 24) {
                                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                    break;
                                }
                            } else {
                                int readInt32 = codedInputByteBufferNano.readInt32();
                                if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                                    this.f13134c = readInt32;
                                }
                            }
                        }
                        return this;
                    }

                    @Override // com.google.protobuf.nano.ym.MessageNano
                    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                        codedOutputByteBufferNano.writeInt64(1, this.f13132a);
                        codedOutputByteBufferNano.writeInt64(2, this.f13133b);
                        codedOutputByteBufferNano.writeInt32(3, this.f13134c);
                        super.writeTo(codedOutputByteBufferNano);
                    }
                }

                public b() {
                    a();
                }

                public b a() {
                    this.f13129a = true;
                    this.f13130b = false;
                    this.f13131c = null;
                    this.cachedSize = -1;
                    return this;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                protected int computeSerializedSize() {
                    int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeBoolSize(1, this.f13129a) + CodedOutputByteBufferNano.computeBoolSize(2, this.f13130b);
                    C0351a c0351a = this.f13131c;
                    return c0351a != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, c0351a) : computeSerializedSize;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                    while (true) {
                        int readTag = codedInputByteBufferNano.readTag();
                        if (readTag == 0) {
                            break;
                        } else if (readTag == 8) {
                            this.f13129a = codedInputByteBufferNano.readBool();
                        } else if (readTag == 16) {
                            this.f13130b = codedInputByteBufferNano.readBool();
                        } else if (readTag != 26) {
                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                break;
                            }
                        } else {
                            if (this.f13131c == null) {
                                this.f13131c = new C0351a();
                            }
                            codedInputByteBufferNano.readMessage(this.f13131c);
                        }
                    }
                    return this;
                }

                @Override // com.google.protobuf.nano.ym.MessageNano
                public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                    codedOutputByteBufferNano.writeBool(1, this.f13129a);
                    codedOutputByteBufferNano.writeBool(2, this.f13130b);
                    C0351a c0351a = this.f13131c;
                    if (c0351a != null) {
                        codedOutputByteBufferNano.writeMessage(3, c0351a);
                    }
                    super.writeTo(codedOutputByteBufferNano);
                }
            }

            public a() {
                a();
            }

            public a a() {
                this.f13116a = 5000L;
                this.f13117b = 10.0f;
                this.f13118c = 20;
                this.f13119d = 200;
                this.f13120e = 60000L;
                this.f13121f = 10000;
                this.f13122g = false;
                this.f13123h = false;
                this.i = true;
                this.j = 60000L;
                this.k = null;
                this.l = null;
                this.m = null;
                this.n = null;
                this.o = null;
                this.p = false;
                this.q = false;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            protected int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f13116a) + CodedOutputByteBufferNano.computeFloatSize(2, this.f13117b) + CodedOutputByteBufferNano.computeInt32Size(3, this.f13118c) + CodedOutputByteBufferNano.computeInt32Size(4, this.f13119d) + CodedOutputByteBufferNano.computeInt64Size(5, this.f13120e) + CodedOutputByteBufferNano.computeInt32Size(6, this.f13121f) + CodedOutputByteBufferNano.computeBoolSize(7, this.f13122g) + CodedOutputByteBufferNano.computeBoolSize(8, this.f13123h) + CodedOutputByteBufferNano.computeInt64Size(9, this.j);
                C0349a c0349a = this.k;
                if (c0349a != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(10, c0349a);
                }
                C0349a c0349a2 = this.l;
                if (c0349a2 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(11, c0349a2);
                }
                C0349a c0349a3 = this.m;
                if (c0349a3 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(12, c0349a3);
                }
                int computeBoolSize = computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(13, this.i);
                C0349a c0349a4 = this.n;
                if (c0349a4 != null) {
                    computeBoolSize += CodedOutputByteBufferNano.computeMessageSize(14, c0349a4);
                }
                b bVar = this.o;
                if (bVar != null) {
                    computeBoolSize += CodedOutputByteBufferNano.computeMessageSize(15, bVar);
                }
                boolean z = this.p;
                if (z) {
                    computeBoolSize += CodedOutputByteBufferNano.computeBoolSize(16, z);
                }
                boolean z2 = this.q;
                return z2 ? computeBoolSize + CodedOutputByteBufferNano.computeBoolSize(17, z2) : computeBoolSize;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    switch (readTag) {
                        case 0:
                            break;
                        case 8:
                            this.f13116a = codedInputByteBufferNano.readInt64();
                            break;
                        case 21:
                            this.f13117b = codedInputByteBufferNano.readFloat();
                            break;
                        case 24:
                            this.f13118c = codedInputByteBufferNano.readInt32();
                            break;
                        case 32:
                            this.f13119d = codedInputByteBufferNano.readInt32();
                            break;
                        case 40:
                            this.f13120e = codedInputByteBufferNano.readInt64();
                            break;
                        case 48:
                            this.f13121f = codedInputByteBufferNano.readInt32();
                            break;
                        case 56:
                            this.f13122g = codedInputByteBufferNano.readBool();
                            break;
                        case 64:
                            this.f13123h = codedInputByteBufferNano.readBool();
                            break;
                        case 72:
                            this.j = codedInputByteBufferNano.readInt64();
                            break;
                        case 82:
                            if (this.k == null) {
                                this.k = new C0349a();
                            }
                            codedInputByteBufferNano.readMessage(this.k);
                            break;
                        case 90:
                            if (this.l == null) {
                                this.l = new C0349a();
                            }
                            codedInputByteBufferNano.readMessage(this.l);
                            break;
                        case 98:
                            if (this.m == null) {
                                this.m = new C0349a();
                            }
                            codedInputByteBufferNano.readMessage(this.m);
                            break;
                        case 104:
                            this.i = codedInputByteBufferNano.readBool();
                            break;
                        case 114:
                            if (this.n == null) {
                                this.n = new C0349a();
                            }
                            codedInputByteBufferNano.readMessage(this.n);
                            break;
                        case 122:
                            if (this.o == null) {
                                this.o = new b();
                            }
                            codedInputByteBufferNano.readMessage(this.o);
                            break;
                        case 128:
                            this.p = codedInputByteBufferNano.readBool();
                            break;
                        case 136:
                            this.q = codedInputByteBufferNano.readBool();
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
                codedOutputByteBufferNano.writeInt64(1, this.f13116a);
                codedOutputByteBufferNano.writeFloat(2, this.f13117b);
                codedOutputByteBufferNano.writeInt32(3, this.f13118c);
                codedOutputByteBufferNano.writeInt32(4, this.f13119d);
                codedOutputByteBufferNano.writeInt64(5, this.f13120e);
                codedOutputByteBufferNano.writeInt32(6, this.f13121f);
                codedOutputByteBufferNano.writeBool(7, this.f13122g);
                codedOutputByteBufferNano.writeBool(8, this.f13123h);
                codedOutputByteBufferNano.writeInt64(9, this.j);
                C0349a c0349a = this.k;
                if (c0349a != null) {
                    codedOutputByteBufferNano.writeMessage(10, c0349a);
                }
                C0349a c0349a2 = this.l;
                if (c0349a2 != null) {
                    codedOutputByteBufferNano.writeMessage(11, c0349a2);
                }
                C0349a c0349a3 = this.m;
                if (c0349a3 != null) {
                    codedOutputByteBufferNano.writeMessage(12, c0349a3);
                }
                codedOutputByteBufferNano.writeBool(13, this.i);
                C0349a c0349a4 = this.n;
                if (c0349a4 != null) {
                    codedOutputByteBufferNano.writeMessage(14, c0349a4);
                }
                b bVar = this.o;
                if (bVar != null) {
                    codedOutputByteBufferNano.writeMessage(15, bVar);
                }
                boolean z = this.p;
                if (z) {
                    codedOutputByteBufferNano.writeBool(16, z);
                }
                boolean z2 = this.q;
                if (z2) {
                    codedOutputByteBufferNano.writeBool(17, z2);
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends MessageNano {

            /* renamed from: a  reason: collision with root package name */
            public int[] f13135a;

            /* renamed from: b  reason: collision with root package name */
            public int[] f13136b;

            public b() {
                a();
            }

            public b a() {
                int[] iArr = WireFormatNano.EMPTY_INT_ARRAY;
                this.f13135a = iArr;
                this.f13136b = iArr;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            protected int computeSerializedSize() {
                int[] iArr;
                int computeSerializedSize = super.computeSerializedSize();
                int[] iArr2 = this.f13135a;
                int i = 0;
                if (iArr2 != null && iArr2.length > 0) {
                    int i2 = 0;
                    int i3 = 0;
                    while (true) {
                        iArr = this.f13135a;
                        if (i2 >= iArr.length) {
                            break;
                        }
                        i3 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr[i2]);
                        i2++;
                    }
                    computeSerializedSize = computeSerializedSize + i3 + iArr.length;
                }
                int[] iArr3 = this.f13136b;
                if (iArr3 == null || iArr3.length <= 0) {
                    return computeSerializedSize;
                }
                int i4 = 0;
                while (true) {
                    int[] iArr4 = this.f13136b;
                    if (i < iArr4.length) {
                        i4 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr4[i]);
                        i++;
                    } else {
                        return computeSerializedSize + i4 + iArr4.length;
                    }
                }
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        break;
                    } else if (readTag == 8) {
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 8);
                        int[] iArr = new int[repeatedFieldArrayLength];
                        int i = 0;
                        for (int i2 = 0; i2 < repeatedFieldArrayLength; i2++) {
                            if (i2 != 0) {
                                codedInputByteBufferNano.readTag();
                            }
                            int readInt32 = codedInputByteBufferNano.readInt32();
                            if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3 || readInt32 == 4) {
                                iArr[i] = readInt32;
                                i++;
                            }
                        }
                        if (i != 0) {
                            int[] iArr2 = this.f13135a;
                            int length = iArr2 == null ? 0 : iArr2.length;
                            if (length == 0 && i == repeatedFieldArrayLength) {
                                this.f13135a = iArr;
                            } else {
                                int[] iArr3 = new int[length + i];
                                if (length != 0) {
                                    System.arraycopy(iArr2, 0, iArr3, 0, length);
                                }
                                System.arraycopy(iArr, 0, iArr3, length, i);
                                this.f13135a = iArr3;
                            }
                        }
                    } else if (readTag == 10) {
                        int pushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                        int position = codedInputByteBufferNano.getPosition();
                        int i3 = 0;
                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                            int readInt322 = codedInputByteBufferNano.readInt32();
                            if (readInt322 == 0 || readInt322 == 1 || readInt322 == 2 || readInt322 == 3 || readInt322 == 4) {
                                i3++;
                            }
                        }
                        if (i3 != 0) {
                            codedInputByteBufferNano.rewindToPosition(position);
                            int[] iArr4 = this.f13135a;
                            int length2 = iArr4 == null ? 0 : iArr4.length;
                            int[] iArr5 = new int[i3 + length2];
                            if (length2 != 0) {
                                System.arraycopy(iArr4, 0, iArr5, 0, length2);
                            }
                            while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                                int readInt323 = codedInputByteBufferNano.readInt32();
                                if (readInt323 == 0 || readInt323 == 1 || readInt323 == 2 || readInt323 == 3 || readInt323 == 4) {
                                    iArr5[length2] = readInt323;
                                    length2++;
                                }
                            }
                            this.f13135a = iArr5;
                        }
                        codedInputByteBufferNano.popLimit(pushLimit);
                    } else if (readTag == 16) {
                        int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 16);
                        int[] iArr6 = new int[repeatedFieldArrayLength2];
                        int i4 = 0;
                        for (int i5 = 0; i5 < repeatedFieldArrayLength2; i5++) {
                            if (i5 != 0) {
                                codedInputByteBufferNano.readTag();
                            }
                            int readInt324 = codedInputByteBufferNano.readInt32();
                            if (readInt324 == 0 || readInt324 == 2 || readInt324 == 3) {
                                iArr6[i4] = readInt324;
                                i4++;
                            }
                        }
                        if (i4 != 0) {
                            int[] iArr7 = this.f13136b;
                            int length3 = iArr7 == null ? 0 : iArr7.length;
                            if (length3 == 0 && i4 == repeatedFieldArrayLength2) {
                                this.f13136b = iArr6;
                            } else {
                                int[] iArr8 = new int[length3 + i4];
                                if (length3 != 0) {
                                    System.arraycopy(iArr7, 0, iArr8, 0, length3);
                                }
                                System.arraycopy(iArr6, 0, iArr8, length3, i4);
                                this.f13136b = iArr8;
                            }
                        }
                    } else if (readTag != 18) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        int pushLimit2 = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                        int position2 = codedInputByteBufferNano.getPosition();
                        int i6 = 0;
                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                            int readInt325 = codedInputByteBufferNano.readInt32();
                            if (readInt325 == 0 || readInt325 == 2 || readInt325 == 3) {
                                i6++;
                            }
                        }
                        if (i6 != 0) {
                            codedInputByteBufferNano.rewindToPosition(position2);
                            int[] iArr9 = this.f13136b;
                            int length4 = iArr9 == null ? 0 : iArr9.length;
                            int[] iArr10 = new int[i6 + length4];
                            if (length4 != 0) {
                                System.arraycopy(iArr9, 0, iArr10, 0, length4);
                            }
                            while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                                int readInt326 = codedInputByteBufferNano.readInt32();
                                if (readInt326 == 0 || readInt326 == 2 || readInt326 == 3) {
                                    iArr10[length4] = readInt326;
                                    length4++;
                                }
                            }
                            this.f13136b = iArr10;
                        }
                        codedInputByteBufferNano.popLimit(pushLimit2);
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                int[] iArr = this.f13135a;
                int i = 0;
                if (iArr != null && iArr.length > 0) {
                    int i2 = 0;
                    while (true) {
                        int[] iArr2 = this.f13135a;
                        if (i2 >= iArr2.length) {
                            break;
                        }
                        codedOutputByteBufferNano.writeInt32(1, iArr2[i2]);
                        i2++;
                    }
                }
                int[] iArr3 = this.f13136b;
                if (iArr3 != null && iArr3.length > 0) {
                    while (true) {
                        int[] iArr4 = this.f13136b;
                        if (i >= iArr4.length) {
                            break;
                        }
                        codedOutputByteBufferNano.writeInt32(2, iArr4[i]);
                        i++;
                    }
                }
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public k() {
            a();
        }

        public static k[] b() {
            if (f13113c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f13113c == null) {
                        f13113c = new k[0];
                    }
                }
            }
            return f13113c;
        }

        public k a() {
            this.f13114a = null;
            this.f13115b = null;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            a aVar = this.f13114a;
            if (aVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, aVar);
            }
            b bVar = this.f13115b;
            return bVar != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, bVar) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    if (this.f13114a == null) {
                        this.f13114a = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.f13114a);
                } else if (readTag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    if (this.f13115b == null) {
                        this.f13115b = new b();
                    }
                    codedInputByteBufferNano.readMessage(this.f13115b);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            a aVar = this.f13114a;
            if (aVar != null) {
                codedOutputByteBufferNano.writeMessage(1, aVar);
            }
            b bVar = this.f13115b;
            if (bVar != null) {
                codedOutputByteBufferNano.writeMessage(2, bVar);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class l extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile l[] f13137c;

        /* renamed from: a  reason: collision with root package name */
        public String f13138a;

        /* renamed from: b  reason: collision with root package name */
        public byte[] f13139b;

        public l() {
            a();
        }

        public static l[] b() {
            if (f13137c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f13137c == null) {
                        f13137c = new l[0];
                    }
                }
            }
            return f13137c;
        }

        public l a() {
            this.f13138a = "";
            this.f13139b = WireFormatNano.EMPTY_BYTES;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (!this.f13138a.equals("")) {
                computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f13138a);
            }
            return !Arrays.equals(this.f13139b, WireFormatNano.EMPTY_BYTES) ? computeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(2, this.f13139b) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f13138a = codedInputByteBufferNano.readString();
                } else if (readTag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f13139b = codedInputByteBufferNano.readBytes();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (!this.f13138a.equals("")) {
                codedOutputByteBufferNano.writeString(1, this.f13138a);
            }
            if (!Arrays.equals(this.f13139b, WireFormatNano.EMPTY_BYTES)) {
                codedOutputByteBufferNano.writeBytes(2, this.f13139b);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class m extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile m[] f13140c;

        /* renamed from: a  reason: collision with root package name */
        public String f13141a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f13142b;

        public m() {
            a();
        }

        public static m[] b() {
            if (f13140c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f13140c == null) {
                        f13140c = new m[0];
                    }
                }
            }
            return f13140c;
        }

        public m a() {
            this.f13141a = "";
            this.f13142b = false;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f13141a) + CodedOutputByteBufferNano.computeBoolSize(2, this.f13142b);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    this.f13141a = codedInputByteBufferNano.readString();
                } else if (readTag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f13142b = codedInputByteBufferNano.readBool();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeString(1, this.f13141a);
            codedOutputByteBufferNano.writeBool(2, this.f13142b);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class n extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f13143a;

        /* renamed from: b  reason: collision with root package name */
        public long f13144b;

        public n() {
            a();
        }

        public n a() {
            this.f13143a = 86400L;
            this.f13144b = 432000L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f13143a) + CodedOutputByteBufferNano.computeInt64Size(2, this.f13144b);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    this.f13143a = codedInputByteBufferNano.readInt64();
                } else if (readTag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f13144b = codedInputByteBufferNano.readInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeInt64(1, this.f13143a);
            codedOutputByteBufferNano.writeInt64(2, this.f13144b);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class o extends MessageNano {

        /* renamed from: g  reason: collision with root package name */
        private static volatile o[] f13145g;

        /* renamed from: a  reason: collision with root package name */
        public String f13146a;

        /* renamed from: b  reason: collision with root package name */
        public String f13147b;

        /* renamed from: c  reason: collision with root package name */
        public String f13148c;

        /* renamed from: d  reason: collision with root package name */
        public a[] f13149d;

        /* renamed from: e  reason: collision with root package name */
        public long f13150e;

        /* renamed from: f  reason: collision with root package name */
        public int[] f13151f;

        /* loaded from: classes5.dex */
        public static final class a extends MessageNano {

            /* renamed from: c  reason: collision with root package name */
            private static volatile a[] f13152c;

            /* renamed from: a  reason: collision with root package name */
            public String f13153a;

            /* renamed from: b  reason: collision with root package name */
            public String f13154b;

            public a() {
                a();
            }

            public static a[] b() {
                if (f13152c == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (f13152c == null) {
                            f13152c = new a[0];
                        }
                    }
                }
                return f13152c;
            }

            public a a() {
                this.f13153a = "";
                this.f13154b = "";
                this.cachedSize = -1;
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            protected int computeSerializedSize() {
                return super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f13153a) + CodedOutputByteBufferNano.computeStringSize(2, this.f13154b);
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        break;
                    } else if (readTag == 10) {
                        this.f13153a = codedInputByteBufferNano.readString();
                    } else if (readTag != 18) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            break;
                        }
                    } else {
                        this.f13154b = codedInputByteBufferNano.readString();
                    }
                }
                return this;
            }

            @Override // com.google.protobuf.nano.ym.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                codedOutputByteBufferNano.writeString(1, this.f13153a);
                codedOutputByteBufferNano.writeString(2, this.f13154b);
                super.writeTo(codedOutputByteBufferNano);
            }
        }

        public o() {
            a();
        }

        public static o[] b() {
            if (f13145g == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f13145g == null) {
                        f13145g = new o[0];
                    }
                }
            }
            return f13145g;
        }

        public o a() {
            this.f13146a = "";
            this.f13147b = "";
            this.f13148c = "";
            this.f13149d = a.b();
            this.f13150e = 0L;
            this.f13151f = WireFormatNano.EMPTY_INT_ARRAY;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.f13146a) + CodedOutputByteBufferNano.computeStringSize(2, this.f13147b) + CodedOutputByteBufferNano.computeStringSize(3, this.f13148c);
            a[] aVarArr = this.f13149d;
            int i = 0;
            if (aVarArr != null && aVarArr.length > 0) {
                int i2 = 0;
                while (true) {
                    a[] aVarArr2 = this.f13149d;
                    if (i2 >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i2];
                    if (aVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, aVar);
                    }
                    i2++;
                }
            }
            int computeInt64Size = computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(5, this.f13150e);
            int[] iArr = this.f13151f;
            if (iArr == null || iArr.length <= 0) {
                return computeInt64Size;
            }
            int i3 = 0;
            while (true) {
                int[] iArr2 = this.f13151f;
                if (i < iArr2.length) {
                    i3 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr2[i]);
                    i++;
                } else {
                    return computeInt64Size + i3 + iArr2.length;
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
                    this.f13146a = codedInputByteBufferNano.readString();
                } else if (readTag == 18) {
                    this.f13147b = codedInputByteBufferNano.readString();
                } else if (readTag == 26) {
                    this.f13148c = codedInputByteBufferNano.readString();
                } else if (readTag == 34) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                    a[] aVarArr = this.f13149d;
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
                    this.f13149d = aVarArr2;
                } else if (readTag == 40) {
                    this.f13150e = codedInputByteBufferNano.readInt64();
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
                        int[] iArr2 = this.f13151f;
                        int length2 = iArr2 == null ? 0 : iArr2.length;
                        if (length2 == 0 && i2 == repeatedFieldArrayLength2) {
                            this.f13151f = iArr;
                        } else {
                            int[] iArr3 = new int[length2 + i2];
                            if (length2 != 0) {
                                System.arraycopy(iArr2, 0, iArr3, 0, length2);
                            }
                            System.arraycopy(iArr, 0, iArr3, length2, i2);
                            this.f13151f = iArr3;
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
                        int[] iArr4 = this.f13151f;
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
                        this.f13151f = iArr5;
                    }
                    codedInputByteBufferNano.popLimit(pushLimit);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeString(1, this.f13146a);
            codedOutputByteBufferNano.writeString(2, this.f13147b);
            codedOutputByteBufferNano.writeString(3, this.f13148c);
            a[] aVarArr = this.f13149d;
            int i = 0;
            if (aVarArr != null && aVarArr.length > 0) {
                int i2 = 0;
                while (true) {
                    a[] aVarArr2 = this.f13149d;
                    if (i2 >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i2];
                    if (aVar != null) {
                        codedOutputByteBufferNano.writeMessage(4, aVar);
                    }
                    i2++;
                }
            }
            codedOutputByteBufferNano.writeInt64(5, this.f13150e);
            int[] iArr = this.f13151f;
            if (iArr != null && iArr.length > 0) {
                while (true) {
                    int[] iArr2 = this.f13151f;
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

    /* loaded from: classes5.dex */
    public static final class p extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f13155a;

        /* renamed from: b  reason: collision with root package name */
        public long f13156b;

        /* renamed from: c  reason: collision with root package name */
        public long f13157c;

        /* renamed from: d  reason: collision with root package name */
        public long f13158d;

        public p() {
            a();
        }

        public p a() {
            this.f13155a = 432000000L;
            this.f13156b = Constants.MILLIS_IN_DAY;
            this.f13157c = 10000L;
            this.f13158d = 3600000L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            long j = this.f13155a;
            if (j != 432000000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j);
            }
            long j2 = this.f13156b;
            if (j2 != Constants.MILLIS_IN_DAY) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, j2);
            }
            long j3 = this.f13157c;
            if (j3 != 10000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(3, j3);
            }
            long j4 = this.f13158d;
            return j4 != 3600000 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(4, j4) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    this.f13155a = codedInputByteBufferNano.readInt64();
                } else if (readTag == 16) {
                    this.f13156b = codedInputByteBufferNano.readInt64();
                } else if (readTag == 24) {
                    this.f13157c = codedInputByteBufferNano.readInt64();
                } else if (readTag != 32) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f13158d = codedInputByteBufferNano.readInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            long j = this.f13155a;
            if (j != 432000000) {
                codedOutputByteBufferNano.writeInt64(1, j);
            }
            long j2 = this.f13156b;
            if (j2 != Constants.MILLIS_IN_DAY) {
                codedOutputByteBufferNano.writeInt64(2, j2);
            }
            long j3 = this.f13157c;
            if (j3 != 10000) {
                codedOutputByteBufferNano.writeInt64(3, j3);
            }
            long j4 = this.f13158d;
            if (j4 != 3600000) {
                codedOutputByteBufferNano.writeInt64(4, j4);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class q extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f13159a;

        /* renamed from: b  reason: collision with root package name */
        public String f13160b;

        /* renamed from: c  reason: collision with root package name */
        public int[] f13161c;

        /* renamed from: d  reason: collision with root package name */
        public int[] f13162d;

        /* renamed from: e  reason: collision with root package name */
        public long f13163e;

        /* renamed from: f  reason: collision with root package name */
        public int f13164f;

        /* renamed from: g  reason: collision with root package name */
        public long f13165g;

        /* renamed from: h  reason: collision with root package name */
        public long f13166h;
        public long i;
        public long j;

        public q() {
            a();
        }

        public q a() {
            this.f13159a = 0L;
            this.f13160b = "";
            int[] iArr = WireFormatNano.EMPTY_INT_ARRAY;
            this.f13161c = iArr;
            this.f13162d = iArr;
            this.f13163e = 259200L;
            this.f13164f = 10;
            this.f13165g = 43200L;
            this.f13166h = 3600L;
            this.i = 86400L;
            this.j = 30L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int[] iArr;
            int[] iArr2;
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f13159a) + CodedOutputByteBufferNano.computeStringSize(2, this.f13160b);
            int[] iArr3 = this.f13161c;
            int i = 0;
            if (iArr3 != null && iArr3.length > 0) {
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    iArr2 = this.f13161c;
                    if (i2 >= iArr2.length) {
                        break;
                    }
                    i3 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr2[i2]);
                    i2++;
                }
                computeSerializedSize = computeSerializedSize + i3 + iArr2.length;
            }
            int computeInt64Size = computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(4, this.f13163e) + CodedOutputByteBufferNano.computeInt32Size(5, this.f13164f);
            long j = this.f13165g;
            if (j != 43200) {
                computeInt64Size += CodedOutputByteBufferNano.computeInt64Size(6, j);
            }
            long j2 = this.f13166h;
            if (j2 != 3600) {
                computeInt64Size += CodedOutputByteBufferNano.computeInt64Size(7, j2);
            }
            long j3 = this.i;
            if (j3 != 86400) {
                computeInt64Size += CodedOutputByteBufferNano.computeInt64Size(8, j3);
            }
            int[] iArr4 = this.f13162d;
            if (iArr4 != null && iArr4.length > 0) {
                int i4 = 0;
                while (true) {
                    iArr = this.f13162d;
                    if (i >= iArr.length) {
                        break;
                    }
                    i4 += CodedOutputByteBufferNano.computeInt32SizeNoTag(iArr[i]);
                    i++;
                }
                computeInt64Size = computeInt64Size + i4 + iArr.length;
            }
            long j4 = this.j;
            return j4 != 30 ? computeInt64Size + CodedOutputByteBufferNano.computeInt64Size(10, j4) : computeInt64Size;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        break;
                    case 8:
                        this.f13159a = codedInputByteBufferNano.readInt64();
                        break;
                    case 18:
                        this.f13160b = codedInputByteBufferNano.readString();
                        break;
                    case 24:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 24);
                        int[] iArr = this.f13161c;
                        int length = iArr == null ? 0 : iArr.length;
                        int i = repeatedFieldArrayLength + length;
                        int[] iArr2 = new int[i];
                        if (length != 0) {
                            System.arraycopy(iArr, 0, iArr2, 0, length);
                        }
                        while (length < i - 1) {
                            iArr2[length] = codedInputByteBufferNano.readInt32();
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        iArr2[length] = codedInputByteBufferNano.readInt32();
                        this.f13161c = iArr2;
                        break;
                    case 26:
                        int pushLimit = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                        int position = codedInputByteBufferNano.getPosition();
                        int i2 = 0;
                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                            codedInputByteBufferNano.readInt32();
                            i2++;
                        }
                        codedInputByteBufferNano.rewindToPosition(position);
                        int[] iArr3 = this.f13161c;
                        int length2 = iArr3 == null ? 0 : iArr3.length;
                        int i3 = i2 + length2;
                        int[] iArr4 = new int[i3];
                        if (length2 != 0) {
                            System.arraycopy(iArr3, 0, iArr4, 0, length2);
                        }
                        while (length2 < i3) {
                            iArr4[length2] = codedInputByteBufferNano.readInt32();
                            length2++;
                        }
                        this.f13161c = iArr4;
                        codedInputByteBufferNano.popLimit(pushLimit);
                        break;
                    case 32:
                        this.f13163e = codedInputByteBufferNano.readInt64();
                        break;
                    case 40:
                        this.f13164f = codedInputByteBufferNano.readInt32();
                        break;
                    case 48:
                        this.f13165g = codedInputByteBufferNano.readInt64();
                        break;
                    case 56:
                        this.f13166h = codedInputByteBufferNano.readInt64();
                        break;
                    case 64:
                        this.i = codedInputByteBufferNano.readInt64();
                        break;
                    case 72:
                        int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 72);
                        int[] iArr5 = this.f13162d;
                        int length3 = iArr5 == null ? 0 : iArr5.length;
                        int i4 = repeatedFieldArrayLength2 + length3;
                        int[] iArr6 = new int[i4];
                        if (length3 != 0) {
                            System.arraycopy(iArr5, 0, iArr6, 0, length3);
                        }
                        while (length3 < i4 - 1) {
                            iArr6[length3] = codedInputByteBufferNano.readInt32();
                            codedInputByteBufferNano.readTag();
                            length3++;
                        }
                        iArr6[length3] = codedInputByteBufferNano.readInt32();
                        this.f13162d = iArr6;
                        break;
                    case 74:
                        int pushLimit2 = codedInputByteBufferNano.pushLimit(codedInputByteBufferNano.readRawVarint32());
                        int position2 = codedInputByteBufferNano.getPosition();
                        int i5 = 0;
                        while (codedInputByteBufferNano.getBytesUntilLimit() > 0) {
                            codedInputByteBufferNano.readInt32();
                            i5++;
                        }
                        codedInputByteBufferNano.rewindToPosition(position2);
                        int[] iArr7 = this.f13162d;
                        int length4 = iArr7 == null ? 0 : iArr7.length;
                        int i6 = i5 + length4;
                        int[] iArr8 = new int[i6];
                        if (length4 != 0) {
                            System.arraycopy(iArr7, 0, iArr8, 0, length4);
                        }
                        while (length4 < i6) {
                            iArr8[length4] = codedInputByteBufferNano.readInt32();
                            length4++;
                        }
                        this.f13162d = iArr8;
                        codedInputByteBufferNano.popLimit(pushLimit2);
                        break;
                    case 80:
                        this.j = codedInputByteBufferNano.readInt64();
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
            codedOutputByteBufferNano.writeInt64(1, this.f13159a);
            codedOutputByteBufferNano.writeString(2, this.f13160b);
            int[] iArr = this.f13161c;
            int i = 0;
            if (iArr != null && iArr.length > 0) {
                int i2 = 0;
                while (true) {
                    int[] iArr2 = this.f13161c;
                    if (i2 >= iArr2.length) {
                        break;
                    }
                    codedOutputByteBufferNano.writeInt32(3, iArr2[i2]);
                    i2++;
                }
            }
            codedOutputByteBufferNano.writeInt64(4, this.f13163e);
            codedOutputByteBufferNano.writeInt32(5, this.f13164f);
            long j = this.f13165g;
            if (j != 43200) {
                codedOutputByteBufferNano.writeInt64(6, j);
            }
            long j2 = this.f13166h;
            if (j2 != 3600) {
                codedOutputByteBufferNano.writeInt64(7, j2);
            }
            long j3 = this.i;
            if (j3 != 86400) {
                codedOutputByteBufferNano.writeInt64(8, j3);
            }
            int[] iArr3 = this.f13162d;
            if (iArr3 != null && iArr3.length > 0) {
                while (true) {
                    int[] iArr4 = this.f13162d;
                    if (i >= iArr4.length) {
                        break;
                    }
                    codedOutputByteBufferNano.writeInt32(9, iArr4[i]);
                    i++;
                }
            }
            long j4 = this.j;
            if (j4 != 30) {
                codedOutputByteBufferNano.writeInt64(10, j4);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class r extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public int f13167a;

        public r() {
            a();
        }

        public r a() {
            this.f13167a = 86400;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            int i = this.f13167a;
            return i != 86400 ? computeSerializedSize + CodedOutputByteBufferNano.computeUInt32Size(1, i) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 8) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f13167a = codedInputByteBufferNano.readUInt32();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            int i = this.f13167a;
            if (i != 86400) {
                codedOutputByteBufferNano.writeUInt32(1, i);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class s extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public long f13168a;

        public s() {
            a();
        }

        public s a() {
            this.f13168a = WorkRequest.MAX_BACKOFF_MILLIS;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.f13168a);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag != 8) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f13168a = codedInputByteBufferNano.readInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeInt64(1, this.f13168a);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class t extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public u f13169a;

        /* renamed from: b  reason: collision with root package name */
        public u f13170b;

        public t() {
            a();
        }

        public t a() {
            this.f13169a = null;
            this.f13170b = null;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            u uVar = this.f13169a;
            if (uVar != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, uVar);
            }
            u uVar2 = this.f13170b;
            return uVar2 != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, uVar2) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 10) {
                    if (this.f13169a == null) {
                        this.f13169a = new u();
                    }
                    codedInputByteBufferNano.readMessage(this.f13169a);
                } else if (readTag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    if (this.f13170b == null) {
                        this.f13170b = new u();
                    }
                    codedInputByteBufferNano.readMessage(this.f13170b);
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            u uVar = this.f13169a;
            if (uVar != null) {
                codedOutputByteBufferNano.writeMessage(1, uVar);
            }
            u uVar2 = this.f13170b;
            if (uVar2 != null) {
                codedOutputByteBufferNano.writeMessage(2, uVar2);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class u extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public int f13171a;

        /* renamed from: b  reason: collision with root package name */
        public long f13172b;

        public u() {
            a();
        }

        public u a() {
            this.f13171a = 100;
            this.f13172b = 60L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            int i = this.f13171a;
            if (i != 100) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, i);
            }
            long j = this.f13172b;
            return j != 60 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(2, j) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    this.f13171a = codedInputByteBufferNano.readInt32();
                } else if (readTag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f13172b = codedInputByteBufferNano.readInt64();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            int i = this.f13171a;
            if (i != 100) {
                codedOutputByteBufferNano.writeInt32(1, i);
            }
            long j = this.f13172b;
            if (j != 60) {
                codedOutputByteBufferNano.writeInt64(2, j);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class v extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public boolean f13173a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f13174b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f13175c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f13176d;

        /* renamed from: e  reason: collision with root package name */
        public int f13177e;

        /* renamed from: f  reason: collision with root package name */
        public int f13178f;

        /* renamed from: g  reason: collision with root package name */
        public int f13179g;

        /* renamed from: h  reason: collision with root package name */
        public int f13180h;
        public boolean i;
        public boolean j;
        public boolean k;
        public boolean l;
        public y[] m;
        public boolean n;
        public boolean o;
        public int p;

        public v() {
            a();
        }

        public v a() {
            this.f13173a = true;
            this.f13174b = true;
            this.f13175c = true;
            this.f13176d = true;
            this.f13177e = 10000;
            this.f13178f = 1000;
            this.f13179g = 1000;
            this.f13180h = 200000;
            this.i = false;
            this.j = false;
            this.k = false;
            this.l = false;
            this.m = y.b();
            this.n = false;
            this.o = false;
            this.p = 4000;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            boolean z = this.f13173a;
            if (!z) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, z);
            }
            boolean z2 = this.f13174b;
            if (!z2) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(2, z2);
            }
            boolean z3 = this.f13175c;
            if (!z3) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(3, z3);
            }
            boolean z4 = this.f13176d;
            if (!z4) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(4, z4);
            }
            int i = this.f13177e;
            if (i != 10000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, i);
            }
            int i2 = this.f13178f;
            if (i2 != 1000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, i2);
            }
            int i3 = this.f13179g;
            if (i3 != 1000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, i3);
            }
            int i4 = this.f13180h;
            if (i4 != 200000) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, i4);
            }
            boolean z5 = this.i;
            if (z5) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(9, z5);
            }
            boolean z6 = this.j;
            if (z6) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(10, z6);
            }
            boolean z7 = this.k;
            if (z7) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(11, z7);
            }
            boolean z8 = this.l;
            if (z8) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(12, z8);
            }
            y[] yVarArr = this.m;
            if (yVarArr != null && yVarArr.length > 0) {
                int i5 = 0;
                while (true) {
                    y[] yVarArr2 = this.m;
                    if (i5 >= yVarArr2.length) {
                        break;
                    }
                    y yVar = yVarArr2[i5];
                    if (yVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(13, yVar);
                    }
                    i5++;
                }
            }
            boolean z9 = this.n;
            if (z9) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(14, z9);
            }
            boolean z10 = this.o;
            if (z10) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(15, z10);
            }
            int i6 = this.p;
            return i6 != 4000 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(16, i6) : computeSerializedSize;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        break;
                    case 8:
                        this.f13173a = codedInputByteBufferNano.readBool();
                        break;
                    case 16:
                        this.f13174b = codedInputByteBufferNano.readBool();
                        break;
                    case 24:
                        this.f13175c = codedInputByteBufferNano.readBool();
                        break;
                    case 32:
                        this.f13176d = codedInputByteBufferNano.readBool();
                        break;
                    case 40:
                        this.f13177e = codedInputByteBufferNano.readInt32();
                        break;
                    case 48:
                        this.f13178f = codedInputByteBufferNano.readInt32();
                        break;
                    case 56:
                        this.f13179g = codedInputByteBufferNano.readInt32();
                        break;
                    case 64:
                        this.f13180h = codedInputByteBufferNano.readInt32();
                        break;
                    case 72:
                        this.i = codedInputByteBufferNano.readBool();
                        break;
                    case 80:
                        this.j = codedInputByteBufferNano.readBool();
                        break;
                    case 88:
                        this.k = codedInputByteBufferNano.readBool();
                        break;
                    case 96:
                        this.l = codedInputByteBufferNano.readBool();
                        break;
                    case 106:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 106);
                        y[] yVarArr = this.m;
                        int length = yVarArr == null ? 0 : yVarArr.length;
                        int i = repeatedFieldArrayLength + length;
                        y[] yVarArr2 = new y[i];
                        if (length != 0) {
                            System.arraycopy(yVarArr, 0, yVarArr2, 0, length);
                        }
                        while (length < i - 1) {
                            y yVar = new y();
                            yVarArr2[length] = yVar;
                            codedInputByteBufferNano.readMessage(yVar);
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        y yVar2 = new y();
                        yVarArr2[length] = yVar2;
                        codedInputByteBufferNano.readMessage(yVar2);
                        this.m = yVarArr2;
                        break;
                    case 112:
                        this.n = codedInputByteBufferNano.readBool();
                        break;
                    case 120:
                        this.o = codedInputByteBufferNano.readBool();
                        break;
                    case 128:
                        this.p = codedInputByteBufferNano.readInt32();
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
            boolean z = this.f13173a;
            if (!z) {
                codedOutputByteBufferNano.writeBool(1, z);
            }
            boolean z2 = this.f13174b;
            if (!z2) {
                codedOutputByteBufferNano.writeBool(2, z2);
            }
            boolean z3 = this.f13175c;
            if (!z3) {
                codedOutputByteBufferNano.writeBool(3, z3);
            }
            boolean z4 = this.f13176d;
            if (!z4) {
                codedOutputByteBufferNano.writeBool(4, z4);
            }
            int i = this.f13177e;
            if (i != 10000) {
                codedOutputByteBufferNano.writeInt32(5, i);
            }
            int i2 = this.f13178f;
            if (i2 != 1000) {
                codedOutputByteBufferNano.writeInt32(6, i2);
            }
            int i3 = this.f13179g;
            if (i3 != 1000) {
                codedOutputByteBufferNano.writeInt32(7, i3);
            }
            int i4 = this.f13180h;
            if (i4 != 200000) {
                codedOutputByteBufferNano.writeInt32(8, i4);
            }
            boolean z5 = this.i;
            if (z5) {
                codedOutputByteBufferNano.writeBool(9, z5);
            }
            boolean z6 = this.j;
            if (z6) {
                codedOutputByteBufferNano.writeBool(10, z6);
            }
            boolean z7 = this.k;
            if (z7) {
                codedOutputByteBufferNano.writeBool(11, z7);
            }
            boolean z8 = this.l;
            if (z8) {
                codedOutputByteBufferNano.writeBool(12, z8);
            }
            y[] yVarArr = this.m;
            if (yVarArr != null && yVarArr.length > 0) {
                int i5 = 0;
                while (true) {
                    y[] yVarArr2 = this.m;
                    if (i5 >= yVarArr2.length) {
                        break;
                    }
                    y yVar = yVarArr2[i5];
                    if (yVar != null) {
                        codedOutputByteBufferNano.writeMessage(13, yVar);
                    }
                    i5++;
                }
            }
            boolean z9 = this.n;
            if (z9) {
                codedOutputByteBufferNano.writeBool(14, z9);
            }
            boolean z10 = this.o;
            if (z10) {
                codedOutputByteBufferNano.writeBool(15, z10);
            }
            int i6 = this.p;
            if (i6 != 4000) {
                codedOutputByteBufferNano.writeInt32(16, i6);
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class w extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public int f13181a;

        /* renamed from: b  reason: collision with root package name */
        public int f13182b;

        /* renamed from: c  reason: collision with root package name */
        public int f13183c;

        /* renamed from: d  reason: collision with root package name */
        public long f13184d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f13185e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f13186f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f13187g;

        /* renamed from: h  reason: collision with root package name */
        public y[] f13188h;

        public w() {
            a();
        }

        public w a() {
            this.f13181a = 10000;
            this.f13182b = 1000;
            this.f13183c = 100;
            this.f13184d = 5000L;
            this.f13185e = true;
            this.f13186f = false;
            this.f13187g = true;
            this.f13188h = y.b();
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt32Size(1, this.f13181a) + CodedOutputByteBufferNano.computeInt32Size(2, this.f13182b) + CodedOutputByteBufferNano.computeInt32Size(3, this.f13183c) + CodedOutputByteBufferNano.computeInt64Size(4, this.f13184d) + CodedOutputByteBufferNano.computeBoolSize(5, this.f13185e) + CodedOutputByteBufferNano.computeBoolSize(6, this.f13186f) + CodedOutputByteBufferNano.computeBoolSize(7, this.f13187g);
            y[] yVarArr = this.f13188h;
            if (yVarArr != null && yVarArr.length > 0) {
                int i = 0;
                while (true) {
                    y[] yVarArr2 = this.f13188h;
                    if (i >= yVarArr2.length) {
                        break;
                    }
                    y yVar = yVarArr2[i];
                    if (yVar != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(8, yVar);
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
                    this.f13181a = codedInputByteBufferNano.readInt32();
                } else if (readTag == 16) {
                    this.f13182b = codedInputByteBufferNano.readInt32();
                } else if (readTag == 24) {
                    this.f13183c = codedInputByteBufferNano.readInt32();
                } else if (readTag == 32) {
                    this.f13184d = codedInputByteBufferNano.readInt64();
                } else if (readTag == 40) {
                    this.f13185e = codedInputByteBufferNano.readBool();
                } else if (readTag == 48) {
                    this.f13186f = codedInputByteBufferNano.readBool();
                } else if (readTag == 56) {
                    this.f13187g = codedInputByteBufferNano.readBool();
                } else if (readTag != 66) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 66);
                    y[] yVarArr = this.f13188h;
                    int length = yVarArr == null ? 0 : yVarArr.length;
                    int i = repeatedFieldArrayLength + length;
                    y[] yVarArr2 = new y[i];
                    if (length != 0) {
                        System.arraycopy(yVarArr, 0, yVarArr2, 0, length);
                    }
                    while (length < i - 1) {
                        y yVar = new y();
                        yVarArr2[length] = yVar;
                        codedInputByteBufferNano.readMessage(yVar);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    y yVar2 = new y();
                    yVarArr2[length] = yVar2;
                    codedInputByteBufferNano.readMessage(yVar2);
                    this.f13188h = yVarArr2;
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeInt32(1, this.f13181a);
            codedOutputByteBufferNano.writeInt32(2, this.f13182b);
            codedOutputByteBufferNano.writeInt32(3, this.f13183c);
            codedOutputByteBufferNano.writeInt64(4, this.f13184d);
            codedOutputByteBufferNano.writeBool(5, this.f13185e);
            codedOutputByteBufferNano.writeBool(6, this.f13186f);
            codedOutputByteBufferNano.writeBool(7, this.f13187g);
            y[] yVarArr = this.f13188h;
            if (yVarArr != null && yVarArr.length > 0) {
                int i = 0;
                while (true) {
                    y[] yVarArr2 = this.f13188h;
                    if (i >= yVarArr2.length) {
                        break;
                    }
                    y yVar = yVarArr2[i];
                    if (yVar != null) {
                        codedOutputByteBufferNano.writeMessage(8, yVar);
                    }
                    i++;
                }
            }
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class x extends MessageNano {

        /* renamed from: a  reason: collision with root package name */
        public boolean f13189a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f13190b;

        public x() {
            a();
        }

        public x a() {
            this.f13189a = true;
            this.f13190b = false;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeBoolSize(1, this.f13189a) + CodedOutputByteBufferNano.computeBoolSize(2, this.f13190b);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    this.f13189a = codedInputByteBufferNano.readBool();
                } else if (readTag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f13190b = codedInputByteBufferNano.readBool();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeBool(1, this.f13189a);
            codedOutputByteBufferNano.writeBool(2, this.f13190b);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    /* loaded from: classes5.dex */
    public static final class y extends MessageNano {

        /* renamed from: c  reason: collision with root package name */
        private static volatile y[] f13191c;

        /* renamed from: a  reason: collision with root package name */
        public int f13192a;

        /* renamed from: b  reason: collision with root package name */
        public String f13193b;

        public y() {
            a();
        }

        public static y[] b() {
            if (f13191c == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (f13191c == null) {
                        f13191c = new y[0];
                    }
                }
            }
            return f13191c;
        }

        public y a() {
            this.f13192a = 0;
            this.f13193b = "";
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        protected int computeSerializedSize() {
            return super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt32Size(1, this.f13192a) + CodedOutputByteBufferNano.computeStringSize(2, this.f13193b);
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    break;
                } else if (readTag == 8) {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 == 0 || readInt32 == 1 || readInt32 == 2 || readInt32 == 3) {
                        this.f13192a = readInt32;
                    }
                } else if (readTag != 18) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        break;
                    }
                } else {
                    this.f13193b = codedInputByteBufferNano.readString();
                }
            }
            return this;
        }

        @Override // com.google.protobuf.nano.ym.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            codedOutputByteBufferNano.writeInt32(1, this.f13192a);
            codedOutputByteBufferNano.writeString(2, this.f13193b);
            super.writeTo(codedOutputByteBufferNano);
        }
    }

    public If() {
        a();
    }

    public If a() {
        this.f13071a = "";
        this.f13072b = 0L;
        String[] strArr = WireFormatNano.EMPTY_STRING_ARRAY;
        this.f13073c = strArr;
        this.f13074d = "";
        this.f13075e = "";
        this.f13076f = strArr;
        this.f13077g = strArr;
        this.f13078h = strArr;
        this.i = strArr;
        this.j = d.b();
        this.k = null;
        this.l = k.b();
        this.m = null;
        this.n = o.b();
        this.o = "";
        this.p = "";
        this.q = "";
        this.r = false;
        this.s = "";
        this.t = WireFormatNano.EMPTY_STRING_ARRAY;
        this.u = null;
        this.v = false;
        this.w = m.b();
        this.x = null;
        this.y = "";
        this.z = "";
        this.A = "";
        this.B = "";
        this.C = 0L;
        this.D = 0L;
        this.E = false;
        this.F = null;
        this.G = null;
        this.H = 600;
        this.I = 1;
        this.J = null;
        this.K = null;
        this.L = null;
        this.M = null;
        this.N = null;
        this.O = null;
        this.P = null;
        this.Q = WireFormatNano.EMPTY_STRING_ARRAY;
        this.R = null;
        this.S = null;
        this.T = null;
        this.U = null;
        this.V = null;
        this.W = l.b();
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    protected int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        if (!this.f13071a.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.f13071a);
        }
        int computeInt64Size = computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(3, this.f13072b);
        String[] strArr = this.f13073c;
        int i2 = 0;
        if (strArr != null && strArr.length > 0) {
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                String[] strArr2 = this.f13073c;
                if (i3 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i3];
                if (str != null) {
                    i5++;
                    i4 += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
                }
                i3++;
            }
            computeInt64Size = computeInt64Size + i4 + i5;
        }
        if (!this.f13074d.equals("")) {
            computeInt64Size += CodedOutputByteBufferNano.computeStringSize(5, this.f13074d);
        }
        if (!this.f13075e.equals("")) {
            computeInt64Size += CodedOutputByteBufferNano.computeStringSize(6, this.f13075e);
        }
        String[] strArr3 = this.f13076f;
        if (strArr3 != null && strArr3.length > 0) {
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            while (true) {
                String[] strArr4 = this.f13076f;
                if (i6 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i6];
                if (str2 != null) {
                    i8++;
                    i7 += CodedOutputByteBufferNano.computeStringSizeNoTag(str2);
                }
                i6++;
            }
            computeInt64Size = computeInt64Size + i7 + i8;
        }
        String[] strArr5 = this.f13077g;
        if (strArr5 != null && strArr5.length > 0) {
            int i9 = 0;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                String[] strArr6 = this.f13077g;
                if (i9 >= strArr6.length) {
                    break;
                }
                String str3 = strArr6[i9];
                if (str3 != null) {
                    i11++;
                    i10 += CodedOutputByteBufferNano.computeStringSizeNoTag(str3);
                }
                i9++;
            }
            computeInt64Size = computeInt64Size + i10 + i11;
        }
        String[] strArr7 = this.f13078h;
        if (strArr7 != null && strArr7.length > 0) {
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            while (true) {
                String[] strArr8 = this.f13078h;
                if (i12 >= strArr8.length) {
                    break;
                }
                String str4 = strArr8[i12];
                if (str4 != null) {
                    i14++;
                    i13 += CodedOutputByteBufferNano.computeStringSizeNoTag(str4);
                }
                i12++;
            }
            computeInt64Size = computeInt64Size + i13 + i14;
        }
        i iVar = this.k;
        if (iVar != null) {
            computeInt64Size += CodedOutputByteBufferNano.computeMessageSize(10, iVar);
        }
        k[] kVarArr = this.l;
        if (kVarArr != null && kVarArr.length > 0) {
            int i15 = 0;
            while (true) {
                k[] kVarArr2 = this.l;
                if (i15 >= kVarArr2.length) {
                    break;
                }
                k kVar = kVarArr2[i15];
                if (kVar != null) {
                    computeInt64Size += CodedOutputByteBufferNano.computeMessageSize(11, kVar);
                }
                i15++;
            }
        }
        q qVar = this.m;
        if (qVar != null) {
            computeInt64Size += CodedOutputByteBufferNano.computeMessageSize(13, qVar);
        }
        o[] oVarArr = this.n;
        if (oVarArr != null && oVarArr.length > 0) {
            int i16 = 0;
            while (true) {
                o[] oVarArr2 = this.n;
                if (i16 >= oVarArr2.length) {
                    break;
                }
                o oVar = oVarArr2[i16];
                if (oVar != null) {
                    computeInt64Size += CodedOutputByteBufferNano.computeMessageSize(14, oVar);
                }
                i16++;
            }
        }
        if (!this.o.equals("")) {
            computeInt64Size += CodedOutputByteBufferNano.computeStringSize(15, this.o);
        }
        if (!this.p.equals("")) {
            computeInt64Size += CodedOutputByteBufferNano.computeStringSize(16, this.p);
        }
        int computeBoolSize = computeInt64Size + CodedOutputByteBufferNano.computeBoolSize(17, this.r);
        if (!this.s.equals("")) {
            computeBoolSize += CodedOutputByteBufferNano.computeStringSize(19, this.s);
        }
        String[] strArr9 = this.t;
        if (strArr9 != null && strArr9.length > 0) {
            int i17 = 0;
            int i18 = 0;
            int i19 = 0;
            while (true) {
                String[] strArr10 = this.t;
                if (i17 >= strArr10.length) {
                    break;
                }
                String str5 = strArr10[i17];
                if (str5 != null) {
                    i19++;
                    i18 += CodedOutputByteBufferNano.computeStringSizeNoTag(str5);
                }
                i17++;
            }
            computeBoolSize = computeBoolSize + i18 + (i19 * 2);
        }
        s sVar = this.u;
        if (sVar != null) {
            computeBoolSize += CodedOutputByteBufferNano.computeMessageSize(21, sVar);
        }
        boolean z = this.v;
        if (z) {
            computeBoolSize += CodedOutputByteBufferNano.computeBoolSize(22, z);
        }
        m[] mVarArr = this.w;
        if (mVarArr != null && mVarArr.length > 0) {
            int i20 = 0;
            while (true) {
                m[] mVarArr2 = this.w;
                if (i20 >= mVarArr2.length) {
                    break;
                }
                m mVar = mVarArr2[i20];
                if (mVar != null) {
                    computeBoolSize += CodedOutputByteBufferNano.computeMessageSize(23, mVar);
                }
                i20++;
            }
        }
        p pVar = this.x;
        if (pVar != null) {
            computeBoolSize += CodedOutputByteBufferNano.computeMessageSize(24, pVar);
        }
        if (!this.y.equals("")) {
            computeBoolSize += CodedOutputByteBufferNano.computeStringSize(25, this.y);
        }
        if (!this.z.equals("")) {
            computeBoolSize += CodedOutputByteBufferNano.computeStringSize(26, this.z);
        }
        if (!this.A.equals("")) {
            computeBoolSize += CodedOutputByteBufferNano.computeStringSize(27, this.A);
        }
        int computeInt64Size2 = computeBoolSize + CodedOutputByteBufferNano.computeInt64Size(28, this.C) + CodedOutputByteBufferNano.computeInt64Size(29, this.D);
        boolean z2 = this.E;
        if (z2) {
            computeInt64Size2 += CodedOutputByteBufferNano.computeBoolSize(30, z2);
        }
        n nVar = this.F;
        if (nVar != null) {
            computeInt64Size2 += CodedOutputByteBufferNano.computeMessageSize(32, nVar);
        }
        j jVar = this.G;
        if (jVar != null) {
            computeInt64Size2 += CodedOutputByteBufferNano.computeMessageSize(33, jVar);
        }
        int computeInt32Size = computeInt64Size2 + CodedOutputByteBufferNano.computeInt32Size(35, this.H) + CodedOutputByteBufferNano.computeInt32Size(36, this.I);
        w wVar = this.J;
        if (wVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(37, wVar);
        }
        v vVar = this.K;
        if (vVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(38, vVar);
        }
        v vVar2 = this.L;
        if (vVar2 != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(39, vVar2);
        }
        t tVar = this.N;
        if (tVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(41, tVar);
        }
        c cVar = this.O;
        if (cVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(42, cVar);
        }
        v vVar3 = this.M;
        if (vVar3 != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(43, vVar3);
        }
        if (!this.q.equals("")) {
            computeInt32Size += CodedOutputByteBufferNano.computeStringSize(44, this.q);
        }
        f fVar = this.P;
        if (fVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(45, fVar);
        }
        String[] strArr11 = this.i;
        if (strArr11 != null && strArr11.length > 0) {
            int i21 = 0;
            int i22 = 0;
            int i23 = 0;
            while (true) {
                String[] strArr12 = this.i;
                if (i21 >= strArr12.length) {
                    break;
                }
                String str6 = strArr12[i21];
                if (str6 != null) {
                    i23++;
                    i22 += CodedOutputByteBufferNano.computeStringSizeNoTag(str6);
                }
                i21++;
            }
            computeInt32Size = computeInt32Size + i22 + (i23 * 2);
        }
        String[] strArr13 = this.Q;
        if (strArr13 != null && strArr13.length > 0) {
            int i24 = 0;
            int i25 = 0;
            int i26 = 0;
            while (true) {
                String[] strArr14 = this.Q;
                if (i24 >= strArr14.length) {
                    break;
                }
                String str7 = strArr14[i24];
                if (str7 != null) {
                    i26++;
                    i25 += CodedOutputByteBufferNano.computeStringSizeNoTag(str7);
                }
                i24++;
            }
            computeInt32Size = computeInt32Size + i25 + (i26 * 2);
        }
        b bVar = this.R;
        if (bVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(48, bVar);
        }
        if (!this.B.equals("")) {
            computeInt32Size += CodedOutputByteBufferNano.computeStringSize(49, this.B);
        }
        a aVar = this.S;
        if (aVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(51, aVar);
        }
        h hVar = this.T;
        if (hVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(52, hVar);
        }
        g gVar = this.U;
        if (gVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(53, gVar);
        }
        d[] dVarArr = this.j;
        if (dVarArr != null && dVarArr.length > 0) {
            int i27 = 0;
            while (true) {
                d[] dVarArr2 = this.j;
                if (i27 >= dVarArr2.length) {
                    break;
                }
                d dVar = dVarArr2[i27];
                if (dVar != null) {
                    computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(54, dVar);
                }
                i27++;
            }
        }
        r rVar = this.V;
        if (rVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(55, rVar);
        }
        l[] lVarArr = this.W;
        if (lVarArr != null && lVarArr.length > 0) {
            while (true) {
                l[] lVarArr2 = this.W;
                if (i2 >= lVarArr2.length) {
                    break;
                }
                l lVar = lVarArr2[i2];
                if (lVar != null) {
                    computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(56, lVar);
                }
                i2++;
            }
        }
        return computeInt32Size;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    break;
                case 10:
                    this.f13071a = codedInputByteBufferNano.readString();
                    break;
                case 24:
                    this.f13072b = codedInputByteBufferNano.readInt64();
                    break;
                case 34:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                    String[] strArr = this.f13073c;
                    int length = strArr == null ? 0 : strArr.length;
                    int i2 = repeatedFieldArrayLength + length;
                    String[] strArr2 = new String[i2];
                    if (length != 0) {
                        System.arraycopy(strArr, 0, strArr2, 0, length);
                    }
                    while (length < i2 - 1) {
                        strArr2[length] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    strArr2[length] = codedInputByteBufferNano.readString();
                    this.f13073c = strArr2;
                    break;
                case 42:
                    this.f13074d = codedInputByteBufferNano.readString();
                    break;
                case 50:
                    this.f13075e = codedInputByteBufferNano.readString();
                    break;
                case 58:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                    String[] strArr3 = this.f13076f;
                    int length2 = strArr3 == null ? 0 : strArr3.length;
                    int i3 = repeatedFieldArrayLength2 + length2;
                    String[] strArr4 = new String[i3];
                    if (length2 != 0) {
                        System.arraycopy(strArr3, 0, strArr4, 0, length2);
                    }
                    while (length2 < i3 - 1) {
                        strArr4[length2] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length2++;
                    }
                    strArr4[length2] = codedInputByteBufferNano.readString();
                    this.f13076f = strArr4;
                    break;
                case 66:
                    int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 66);
                    String[] strArr5 = this.f13077g;
                    int length3 = strArr5 == null ? 0 : strArr5.length;
                    int i4 = repeatedFieldArrayLength3 + length3;
                    String[] strArr6 = new String[i4];
                    if (length3 != 0) {
                        System.arraycopy(strArr5, 0, strArr6, 0, length3);
                    }
                    while (length3 < i4 - 1) {
                        strArr6[length3] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length3++;
                    }
                    strArr6[length3] = codedInputByteBufferNano.readString();
                    this.f13077g = strArr6;
                    break;
                case 74:
                    int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 74);
                    String[] strArr7 = this.f13078h;
                    int length4 = strArr7 == null ? 0 : strArr7.length;
                    int i5 = repeatedFieldArrayLength4 + length4;
                    String[] strArr8 = new String[i5];
                    if (length4 != 0) {
                        System.arraycopy(strArr7, 0, strArr8, 0, length4);
                    }
                    while (length4 < i5 - 1) {
                        strArr8[length4] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length4++;
                    }
                    strArr8[length4] = codedInputByteBufferNano.readString();
                    this.f13078h = strArr8;
                    break;
                case 82:
                    if (this.k == null) {
                        this.k = new i();
                    }
                    codedInputByteBufferNano.readMessage(this.k);
                    break;
                case 90:
                    int repeatedFieldArrayLength5 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 90);
                    k[] kVarArr = this.l;
                    int length5 = kVarArr == null ? 0 : kVarArr.length;
                    int i6 = repeatedFieldArrayLength5 + length5;
                    k[] kVarArr2 = new k[i6];
                    if (length5 != 0) {
                        System.arraycopy(kVarArr, 0, kVarArr2, 0, length5);
                    }
                    while (length5 < i6 - 1) {
                        k kVar = new k();
                        kVarArr2[length5] = kVar;
                        codedInputByteBufferNano.readMessage(kVar);
                        codedInputByteBufferNano.readTag();
                        length5++;
                    }
                    k kVar2 = new k();
                    kVarArr2[length5] = kVar2;
                    codedInputByteBufferNano.readMessage(kVar2);
                    this.l = kVarArr2;
                    break;
                case 106:
                    if (this.m == null) {
                        this.m = new q();
                    }
                    codedInputByteBufferNano.readMessage(this.m);
                    break;
                case 114:
                    int repeatedFieldArrayLength6 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 114);
                    o[] oVarArr = this.n;
                    int length6 = oVarArr == null ? 0 : oVarArr.length;
                    int i7 = repeatedFieldArrayLength6 + length6;
                    o[] oVarArr2 = new o[i7];
                    if (length6 != 0) {
                        System.arraycopy(oVarArr, 0, oVarArr2, 0, length6);
                    }
                    while (length6 < i7 - 1) {
                        o oVar = new o();
                        oVarArr2[length6] = oVar;
                        codedInputByteBufferNano.readMessage(oVar);
                        codedInputByteBufferNano.readTag();
                        length6++;
                    }
                    o oVar2 = new o();
                    oVarArr2[length6] = oVar2;
                    codedInputByteBufferNano.readMessage(oVar2);
                    this.n = oVarArr2;
                    break;
                case 122:
                    this.o = codedInputByteBufferNano.readString();
                    break;
                case TsExtractor.TS_STREAM_TYPE_HDMV_DTS /* 130 */:
                    this.p = codedInputByteBufferNano.readString();
                    break;
                case 136:
                    this.r = codedInputByteBufferNano.readBool();
                    break;
                case 154:
                    this.s = codedInputByteBufferNano.readString();
                    break;
                case 162:
                    int repeatedFieldArrayLength7 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 162);
                    String[] strArr9 = this.t;
                    int length7 = strArr9 == null ? 0 : strArr9.length;
                    int i8 = repeatedFieldArrayLength7 + length7;
                    String[] strArr10 = new String[i8];
                    if (length7 != 0) {
                        System.arraycopy(strArr9, 0, strArr10, 0, length7);
                    }
                    while (length7 < i8 - 1) {
                        strArr10[length7] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length7++;
                    }
                    strArr10[length7] = codedInputByteBufferNano.readString();
                    this.t = strArr10;
                    break;
                case 170:
                    if (this.u == null) {
                        this.u = new s();
                    }
                    codedInputByteBufferNano.readMessage(this.u);
                    break;
                case 176:
                    this.v = codedInputByteBufferNano.readBool();
                    break;
                case 186:
                    int repeatedFieldArrayLength8 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 186);
                    m[] mVarArr = this.w;
                    int length8 = mVarArr == null ? 0 : mVarArr.length;
                    int i9 = repeatedFieldArrayLength8 + length8;
                    m[] mVarArr2 = new m[i9];
                    if (length8 != 0) {
                        System.arraycopy(mVarArr, 0, mVarArr2, 0, length8);
                    }
                    while (length8 < i9 - 1) {
                        m mVar = new m();
                        mVarArr2[length8] = mVar;
                        codedInputByteBufferNano.readMessage(mVar);
                        codedInputByteBufferNano.readTag();
                        length8++;
                    }
                    m mVar2 = new m();
                    mVarArr2[length8] = mVar2;
                    codedInputByteBufferNano.readMessage(mVar2);
                    this.w = mVarArr2;
                    break;
                case 194:
                    if (this.x == null) {
                        this.x = new p();
                    }
                    codedInputByteBufferNano.readMessage(this.x);
                    break;
                case 202:
                    this.y = codedInputByteBufferNano.readString();
                    break;
                case LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE:
                    this.z = codedInputByteBufferNano.readString();
                    break;
                case 218:
                    this.A = codedInputByteBufferNano.readString();
                    break;
                case 224:
                    this.C = codedInputByteBufferNano.readInt64();
                    break;
                case 232:
                    this.D = codedInputByteBufferNano.readInt64();
                    break;
                case PsExtractor.VIDEO_STREAM_MASK /* 240 */:
                    this.E = codedInputByteBufferNano.readBool();
                    break;
                case 258:
                    if (this.F == null) {
                        this.F = new n();
                    }
                    codedInputByteBufferNano.readMessage(this.F);
                    break;
                case 266:
                    if (this.G == null) {
                        this.G = new j();
                    }
                    codedInputByteBufferNano.readMessage(this.G);
                    break;
                case 280:
                    this.H = codedInputByteBufferNano.readInt32();
                    break;
                case 288:
                    this.I = codedInputByteBufferNano.readInt32();
                    break;
                case 298:
                    if (this.J == null) {
                        this.J = new w();
                    }
                    codedInputByteBufferNano.readMessage(this.J);
                    break;
                case 306:
                    if (this.K == null) {
                        this.K = new v();
                    }
                    codedInputByteBufferNano.readMessage(this.K);
                    break;
                case 314:
                    if (this.L == null) {
                        this.L = new v();
                    }
                    codedInputByteBufferNano.readMessage(this.L);
                    break;
                case 330:
                    if (this.N == null) {
                        this.N = new t();
                    }
                    codedInputByteBufferNano.readMessage(this.N);
                    break;
                case 338:
                    if (this.O == null) {
                        this.O = new c();
                    }
                    codedInputByteBufferNano.readMessage(this.O);
                    break;
                case 346:
                    if (this.M == null) {
                        this.M = new v();
                    }
                    codedInputByteBufferNano.readMessage(this.M);
                    break;
                case 354:
                    this.q = codedInputByteBufferNano.readString();
                    break;
                case 362:
                    if (this.P == null) {
                        this.P = new f();
                    }
                    codedInputByteBufferNano.readMessage(this.P);
                    break;
                case 370:
                    int repeatedFieldArrayLength9 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 370);
                    String[] strArr11 = this.i;
                    int length9 = strArr11 == null ? 0 : strArr11.length;
                    int i10 = repeatedFieldArrayLength9 + length9;
                    String[] strArr12 = new String[i10];
                    if (length9 != 0) {
                        System.arraycopy(strArr11, 0, strArr12, 0, length9);
                    }
                    while (length9 < i10 - 1) {
                        strArr12[length9] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length9++;
                    }
                    strArr12[length9] = codedInputByteBufferNano.readString();
                    this.i = strArr12;
                    break;
                case 378:
                    int repeatedFieldArrayLength10 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 378);
                    String[] strArr13 = this.Q;
                    int length10 = strArr13 == null ? 0 : strArr13.length;
                    int i11 = repeatedFieldArrayLength10 + length10;
                    String[] strArr14 = new String[i11];
                    if (length10 != 0) {
                        System.arraycopy(strArr13, 0, strArr14, 0, length10);
                    }
                    while (length10 < i11 - 1) {
                        strArr14[length10] = codedInputByteBufferNano.readString();
                        codedInputByteBufferNano.readTag();
                        length10++;
                    }
                    strArr14[length10] = codedInputByteBufferNano.readString();
                    this.Q = strArr14;
                    break;
                case 386:
                    if (this.R == null) {
                        this.R = new b();
                    }
                    codedInputByteBufferNano.readMessage(this.R);
                    break;
                case 394:
                    this.B = codedInputByteBufferNano.readString();
                    break;
                case TTAdConstant.IMAGE_LIST_SIZE_CODE /* 410 */:
                    if (this.S == null) {
                        this.S = new a();
                    }
                    codedInputByteBufferNano.readMessage(this.S);
                    break;
                case 418:
                    if (this.T == null) {
                        this.T = new h();
                    }
                    codedInputByteBufferNano.readMessage(this.T);
                    break;
                case 426:
                    if (this.U == null) {
                        this.U = new g();
                    }
                    codedInputByteBufferNano.readMessage(this.U);
                    break;
                case 434:
                    int repeatedFieldArrayLength11 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 434);
                    d[] dVarArr = this.j;
                    int length11 = dVarArr == null ? 0 : dVarArr.length;
                    int i12 = repeatedFieldArrayLength11 + length11;
                    d[] dVarArr2 = new d[i12];
                    if (length11 != 0) {
                        System.arraycopy(dVarArr, 0, dVarArr2, 0, length11);
                    }
                    while (length11 < i12 - 1) {
                        d dVar = new d();
                        dVarArr2[length11] = dVar;
                        codedInputByteBufferNano.readMessage(dVar);
                        codedInputByteBufferNano.readTag();
                        length11++;
                    }
                    d dVar2 = new d();
                    dVarArr2[length11] = dVar2;
                    codedInputByteBufferNano.readMessage(dVar2);
                    this.j = dVarArr2;
                    break;
                case 442:
                    if (this.V == null) {
                        this.V = new r();
                    }
                    codedInputByteBufferNano.readMessage(this.V);
                    break;
                case 450:
                    int repeatedFieldArrayLength12 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 450);
                    l[] lVarArr = this.W;
                    int length12 = lVarArr == null ? 0 : lVarArr.length;
                    int i13 = repeatedFieldArrayLength12 + length12;
                    l[] lVarArr2 = new l[i13];
                    if (length12 != 0) {
                        System.arraycopy(lVarArr, 0, lVarArr2, 0, length12);
                    }
                    while (length12 < i13 - 1) {
                        l lVar = new l();
                        lVarArr2[length12] = lVar;
                        codedInputByteBufferNano.readMessage(lVar);
                        codedInputByteBufferNano.readTag();
                        length12++;
                    }
                    l lVar2 = new l();
                    lVarArr2[length12] = lVar2;
                    codedInputByteBufferNano.readMessage(lVar2);
                    this.W = lVarArr2;
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
        if (!this.f13071a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.f13071a);
        }
        codedOutputByteBufferNano.writeInt64(3, this.f13072b);
        String[] strArr = this.f13073c;
        int i2 = 0;
        if (strArr != null && strArr.length > 0) {
            int i3 = 0;
            while (true) {
                String[] strArr2 = this.f13073c;
                if (i3 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i3];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(4, str);
                }
                i3++;
            }
        }
        if (!this.f13074d.equals("")) {
            codedOutputByteBufferNano.writeString(5, this.f13074d);
        }
        if (!this.f13075e.equals("")) {
            codedOutputByteBufferNano.writeString(6, this.f13075e);
        }
        String[] strArr3 = this.f13076f;
        if (strArr3 != null && strArr3.length > 0) {
            int i4 = 0;
            while (true) {
                String[] strArr4 = this.f13076f;
                if (i4 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i4];
                if (str2 != null) {
                    codedOutputByteBufferNano.writeString(7, str2);
                }
                i4++;
            }
        }
        String[] strArr5 = this.f13077g;
        if (strArr5 != null && strArr5.length > 0) {
            int i5 = 0;
            while (true) {
                String[] strArr6 = this.f13077g;
                if (i5 >= strArr6.length) {
                    break;
                }
                String str3 = strArr6[i5];
                if (str3 != null) {
                    codedOutputByteBufferNano.writeString(8, str3);
                }
                i5++;
            }
        }
        String[] strArr7 = this.f13078h;
        if (strArr7 != null && strArr7.length > 0) {
            int i6 = 0;
            while (true) {
                String[] strArr8 = this.f13078h;
                if (i6 >= strArr8.length) {
                    break;
                }
                String str4 = strArr8[i6];
                if (str4 != null) {
                    codedOutputByteBufferNano.writeString(9, str4);
                }
                i6++;
            }
        }
        i iVar = this.k;
        if (iVar != null) {
            codedOutputByteBufferNano.writeMessage(10, iVar);
        }
        k[] kVarArr = this.l;
        if (kVarArr != null && kVarArr.length > 0) {
            int i7 = 0;
            while (true) {
                k[] kVarArr2 = this.l;
                if (i7 >= kVarArr2.length) {
                    break;
                }
                k kVar = kVarArr2[i7];
                if (kVar != null) {
                    codedOutputByteBufferNano.writeMessage(11, kVar);
                }
                i7++;
            }
        }
        q qVar = this.m;
        if (qVar != null) {
            codedOutputByteBufferNano.writeMessage(13, qVar);
        }
        o[] oVarArr = this.n;
        if (oVarArr != null && oVarArr.length > 0) {
            int i8 = 0;
            while (true) {
                o[] oVarArr2 = this.n;
                if (i8 >= oVarArr2.length) {
                    break;
                }
                o oVar = oVarArr2[i8];
                if (oVar != null) {
                    codedOutputByteBufferNano.writeMessage(14, oVar);
                }
                i8++;
            }
        }
        if (!this.o.equals("")) {
            codedOutputByteBufferNano.writeString(15, this.o);
        }
        if (!this.p.equals("")) {
            codedOutputByteBufferNano.writeString(16, this.p);
        }
        codedOutputByteBufferNano.writeBool(17, this.r);
        if (!this.s.equals("")) {
            codedOutputByteBufferNano.writeString(19, this.s);
        }
        String[] strArr9 = this.t;
        if (strArr9 != null && strArr9.length > 0) {
            int i9 = 0;
            while (true) {
                String[] strArr10 = this.t;
                if (i9 >= strArr10.length) {
                    break;
                }
                String str5 = strArr10[i9];
                if (str5 != null) {
                    codedOutputByteBufferNano.writeString(20, str5);
                }
                i9++;
            }
        }
        s sVar = this.u;
        if (sVar != null) {
            codedOutputByteBufferNano.writeMessage(21, sVar);
        }
        boolean z = this.v;
        if (z) {
            codedOutputByteBufferNano.writeBool(22, z);
        }
        m[] mVarArr = this.w;
        if (mVarArr != null && mVarArr.length > 0) {
            int i10 = 0;
            while (true) {
                m[] mVarArr2 = this.w;
                if (i10 >= mVarArr2.length) {
                    break;
                }
                m mVar = mVarArr2[i10];
                if (mVar != null) {
                    codedOutputByteBufferNano.writeMessage(23, mVar);
                }
                i10++;
            }
        }
        p pVar = this.x;
        if (pVar != null) {
            codedOutputByteBufferNano.writeMessage(24, pVar);
        }
        if (!this.y.equals("")) {
            codedOutputByteBufferNano.writeString(25, this.y);
        }
        if (!this.z.equals("")) {
            codedOutputByteBufferNano.writeString(26, this.z);
        }
        if (!this.A.equals("")) {
            codedOutputByteBufferNano.writeString(27, this.A);
        }
        codedOutputByteBufferNano.writeInt64(28, this.C);
        codedOutputByteBufferNano.writeInt64(29, this.D);
        boolean z2 = this.E;
        if (z2) {
            codedOutputByteBufferNano.writeBool(30, z2);
        }
        n nVar = this.F;
        if (nVar != null) {
            codedOutputByteBufferNano.writeMessage(32, nVar);
        }
        j jVar = this.G;
        if (jVar != null) {
            codedOutputByteBufferNano.writeMessage(33, jVar);
        }
        codedOutputByteBufferNano.writeInt32(35, this.H);
        codedOutputByteBufferNano.writeInt32(36, this.I);
        w wVar = this.J;
        if (wVar != null) {
            codedOutputByteBufferNano.writeMessage(37, wVar);
        }
        v vVar = this.K;
        if (vVar != null) {
            codedOutputByteBufferNano.writeMessage(38, vVar);
        }
        v vVar2 = this.L;
        if (vVar2 != null) {
            codedOutputByteBufferNano.writeMessage(39, vVar2);
        }
        t tVar = this.N;
        if (tVar != null) {
            codedOutputByteBufferNano.writeMessage(41, tVar);
        }
        c cVar = this.O;
        if (cVar != null) {
            codedOutputByteBufferNano.writeMessage(42, cVar);
        }
        v vVar3 = this.M;
        if (vVar3 != null) {
            codedOutputByteBufferNano.writeMessage(43, vVar3);
        }
        if (!this.q.equals("")) {
            codedOutputByteBufferNano.writeString(44, this.q);
        }
        f fVar = this.P;
        if (fVar != null) {
            codedOutputByteBufferNano.writeMessage(45, fVar);
        }
        String[] strArr11 = this.i;
        if (strArr11 != null && strArr11.length > 0) {
            int i11 = 0;
            while (true) {
                String[] strArr12 = this.i;
                if (i11 >= strArr12.length) {
                    break;
                }
                String str6 = strArr12[i11];
                if (str6 != null) {
                    codedOutputByteBufferNano.writeString(46, str6);
                }
                i11++;
            }
        }
        String[] strArr13 = this.Q;
        if (strArr13 != null && strArr13.length > 0) {
            int i12 = 0;
            while (true) {
                String[] strArr14 = this.Q;
                if (i12 >= strArr14.length) {
                    break;
                }
                String str7 = strArr14[i12];
                if (str7 != null) {
                    codedOutputByteBufferNano.writeString(47, str7);
                }
                i12++;
            }
        }
        b bVar = this.R;
        if (bVar != null) {
            codedOutputByteBufferNano.writeMessage(48, bVar);
        }
        if (!this.B.equals("")) {
            codedOutputByteBufferNano.writeString(49, this.B);
        }
        a aVar = this.S;
        if (aVar != null) {
            codedOutputByteBufferNano.writeMessage(51, aVar);
        }
        h hVar = this.T;
        if (hVar != null) {
            codedOutputByteBufferNano.writeMessage(52, hVar);
        }
        g gVar = this.U;
        if (gVar != null) {
            codedOutputByteBufferNano.writeMessage(53, gVar);
        }
        d[] dVarArr = this.j;
        if (dVarArr != null && dVarArr.length > 0) {
            int i13 = 0;
            while (true) {
                d[] dVarArr2 = this.j;
                if (i13 >= dVarArr2.length) {
                    break;
                }
                d dVar = dVarArr2[i13];
                if (dVar != null) {
                    codedOutputByteBufferNano.writeMessage(54, dVar);
                }
                i13++;
            }
        }
        r rVar = this.V;
        if (rVar != null) {
            codedOutputByteBufferNano.writeMessage(55, rVar);
        }
        l[] lVarArr = this.W;
        if (lVarArr != null && lVarArr.length > 0) {
            while (true) {
                l[] lVarArr2 = this.W;
                if (i2 >= lVarArr2.length) {
                    break;
                }
                l lVar = lVarArr2[i2];
                if (lVar != null) {
                    codedOutputByteBufferNano.writeMessage(56, lVar);
                }
                i2++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
