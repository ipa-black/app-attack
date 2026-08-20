package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.InternalNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.of  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1762of extends MessageNano {
    private static volatile C1762of[] q;

    /* renamed from: a  reason: collision with root package name */
    public int f15339a;

    /* renamed from: b  reason: collision with root package name */
    public int f15340b;

    /* renamed from: c  reason: collision with root package name */
    public int f15341c;

    /* renamed from: d  reason: collision with root package name */
    public int f15342d;

    /* renamed from: e  reason: collision with root package name */
    public int f15343e;

    /* renamed from: f  reason: collision with root package name */
    public String f15344f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f15345g;

    /* renamed from: h  reason: collision with root package name */
    public int f15346h;
    public int i;
    public long j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;

    public C1762of() {
        a();
    }

    public static C1762of[] b() {
        if (q == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (q == null) {
                    q = new C1762of[0];
                }
            }
        }
        return q;
    }

    public C1762of a() {
        this.f15339a = -1;
        this.f15340b = 0;
        this.f15341c = -1;
        this.f15342d = -1;
        this.f15343e = -1;
        this.f15344f = "";
        this.f15345g = false;
        this.f15346h = 0;
        this.i = -1;
        this.j = 0L;
        this.k = Integer.MAX_VALUE;
        this.l = Integer.MAX_VALUE;
        this.m = Integer.MAX_VALUE;
        this.n = -1;
        this.o = -1;
        this.p = -1;
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        int i = this.f15339a;
        if (i != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i);
        }
        int i2 = this.f15340b;
        if (i2 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(2, i2);
        }
        int i3 = this.f15341c;
        if (i3 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(3, i3);
        }
        int i4 = this.f15342d;
        if (i4 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(4, i4);
        }
        int i5 = this.f15343e;
        if (i5 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(5, i5);
        }
        if (!this.f15344f.equals("")) {
            computeSerializedSize += CodedOutputByteBufferNano.computeStringSize(6, this.f15344f);
        }
        boolean z = this.f15345g;
        if (z) {
            computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(7, z);
        }
        int i6 = this.f15346h;
        if (i6 != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, i6);
        }
        int i7 = this.i;
        if (i7 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(9, i7);
        }
        long j = this.j;
        if (j != 0) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(10, j);
        }
        int i8 = this.k;
        if (i8 != Integer.MAX_VALUE) {
            computeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(11, i8);
        }
        int i9 = this.l;
        if (i9 != Integer.MAX_VALUE) {
            computeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(12, i9);
        }
        int i10 = this.m;
        if (i10 != Integer.MAX_VALUE) {
            computeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(13, i10);
        }
        int i11 = this.n;
        if (i11 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(14, i11);
        }
        int i12 = this.o;
        if (i12 != -1) {
            computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(15, i12);
        }
        int i13 = this.p;
        return i13 != -1 ? computeSerializedSize + CodedOutputByteBufferNano.computeUInt32Size(16, i13) : computeSerializedSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            switch (readTag) {
                case 0:
                    break;
                case 8:
                    this.f15339a = codedInputByteBufferNano.readUInt32();
                    break;
                case 16:
                    this.f15340b = codedInputByteBufferNano.readSInt32();
                    break;
                case 24:
                    this.f15341c = codedInputByteBufferNano.readUInt32();
                    break;
                case 32:
                    this.f15342d = codedInputByteBufferNano.readUInt32();
                    break;
                case 40:
                    this.f15343e = codedInputByteBufferNano.readUInt32();
                    break;
                case 50:
                    this.f15344f = codedInputByteBufferNano.readString();
                    break;
                case 56:
                    this.f15345g = codedInputByteBufferNano.readBool();
                    break;
                case 64:
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    if (readInt32 != 0 && readInt32 != 1 && readInt32 != 2 && readInt32 != 3 && readInt32 != 4) {
                        break;
                    } else {
                        this.f15346h = readInt32;
                        break;
                    }
                case 72:
                    this.i = codedInputByteBufferNano.readUInt32();
                    break;
                case 80:
                    this.j = codedInputByteBufferNano.readUInt64();
                    break;
                case 88:
                    this.k = codedInputByteBufferNano.readSInt32();
                    break;
                case 96:
                    this.l = codedInputByteBufferNano.readSInt32();
                    break;
                case 104:
                    this.m = codedInputByteBufferNano.readSInt32();
                    break;
                case 112:
                    this.n = codedInputByteBufferNano.readUInt32();
                    break;
                case 120:
                    this.o = codedInputByteBufferNano.readUInt32();
                    break;
                case 128:
                    this.p = codedInputByteBufferNano.readUInt32();
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
        int i = this.f15339a;
        if (i != -1) {
            codedOutputByteBufferNano.writeUInt32(1, i);
        }
        int i2 = this.f15340b;
        if (i2 != 0) {
            codedOutputByteBufferNano.writeSInt32(2, i2);
        }
        int i3 = this.f15341c;
        if (i3 != -1) {
            codedOutputByteBufferNano.writeUInt32(3, i3);
        }
        int i4 = this.f15342d;
        if (i4 != -1) {
            codedOutputByteBufferNano.writeUInt32(4, i4);
        }
        int i5 = this.f15343e;
        if (i5 != -1) {
            codedOutputByteBufferNano.writeUInt32(5, i5);
        }
        if (!this.f15344f.equals("")) {
            codedOutputByteBufferNano.writeString(6, this.f15344f);
        }
        boolean z = this.f15345g;
        if (z) {
            codedOutputByteBufferNano.writeBool(7, z);
        }
        int i6 = this.f15346h;
        if (i6 != 0) {
            codedOutputByteBufferNano.writeInt32(8, i6);
        }
        int i7 = this.i;
        if (i7 != -1) {
            codedOutputByteBufferNano.writeUInt32(9, i7);
        }
        long j = this.j;
        if (j != 0) {
            codedOutputByteBufferNano.writeUInt64(10, j);
        }
        int i8 = this.k;
        if (i8 != Integer.MAX_VALUE) {
            codedOutputByteBufferNano.writeSInt32(11, i8);
        }
        int i9 = this.l;
        if (i9 != Integer.MAX_VALUE) {
            codedOutputByteBufferNano.writeSInt32(12, i9);
        }
        int i10 = this.m;
        if (i10 != Integer.MAX_VALUE) {
            codedOutputByteBufferNano.writeSInt32(13, i10);
        }
        int i11 = this.n;
        if (i11 != -1) {
            codedOutputByteBufferNano.writeUInt32(14, i11);
        }
        int i12 = this.o;
        if (i12 != -1) {
            codedOutputByteBufferNano.writeUInt32(15, i12);
        }
        int i13 = this.p;
        if (i13 != -1) {
            codedOutputByteBufferNano.writeUInt32(16, i13);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
