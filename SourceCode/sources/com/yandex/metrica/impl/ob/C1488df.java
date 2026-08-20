package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedInputByteBufferNano;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ym.MessageNano;
import com.google.protobuf.nano.ym.WireFormatNano;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.df  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1488df extends MessageNano {

    /* renamed from: a  reason: collision with root package name */
    public C1662kf f14594a;

    /* renamed from: b  reason: collision with root package name */
    public C1662kf[] f14595b;

    /* renamed from: c  reason: collision with root package name */
    public String f14596c;

    public C1488df() {
        a();
    }

    public C1488df a() {
        this.f14594a = null;
        this.f14595b = C1662kf.b();
        this.f14596c = "";
        this.cachedSize = -1;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        int computeSerializedSize = super.computeSerializedSize();
        C1662kf c1662kf = this.f14594a;
        if (c1662kf != null) {
            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1662kf);
        }
        C1662kf[] c1662kfArr = this.f14595b;
        if (c1662kfArr != null && c1662kfArr.length > 0) {
            int i = 0;
            while (true) {
                C1662kf[] c1662kfArr2 = this.f14595b;
                if (i >= c1662kfArr2.length) {
                    break;
                }
                C1662kf c1662kf2 = c1662kfArr2[i];
                if (c1662kf2 != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c1662kf2);
                }
                i++;
            }
        }
        return !this.f14596c.equals("") ? computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(3, this.f14596c) : computeSerializedSize;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public MessageNano mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int readTag = codedInputByteBufferNano.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag == 10) {
                if (this.f14594a == null) {
                    this.f14594a = new C1662kf();
                }
                codedInputByteBufferNano.readMessage(this.f14594a);
            } else if (readTag == 18) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                C1662kf[] c1662kfArr = this.f14595b;
                int length = c1662kfArr == null ? 0 : c1662kfArr.length;
                int i = repeatedFieldArrayLength + length;
                C1662kf[] c1662kfArr2 = new C1662kf[i];
                if (length != 0) {
                    System.arraycopy(c1662kfArr, 0, c1662kfArr2, 0, length);
                }
                while (length < i - 1) {
                    C1662kf c1662kf = new C1662kf();
                    c1662kfArr2[length] = c1662kf;
                    codedInputByteBufferNano.readMessage(c1662kf);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1662kf c1662kf2 = new C1662kf();
                c1662kfArr2[length] = c1662kf2;
                codedInputByteBufferNano.readMessage(c1662kf2);
                this.f14595b = c1662kfArr2;
            } else if (readTag != 26) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                    break;
                }
            } else {
                this.f14596c = codedInputByteBufferNano.readString();
            }
        }
        return this;
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C1662kf c1662kf = this.f14594a;
        if (c1662kf != null) {
            codedOutputByteBufferNano.writeMessage(1, c1662kf);
        }
        C1662kf[] c1662kfArr = this.f14595b;
        if (c1662kfArr != null && c1662kfArr.length > 0) {
            int i = 0;
            while (true) {
                C1662kf[] c1662kfArr2 = this.f14595b;
                if (i >= c1662kfArr2.length) {
                    break;
                }
                C1662kf c1662kf2 = c1662kfArr2[i];
                if (c1662kf2 != null) {
                    codedOutputByteBufferNano.writeMessage(2, c1662kf2);
                }
                i++;
            }
        }
        if (!this.f14596c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.f14596c);
        }
        super.writeTo(codedOutputByteBufferNano);
    }
}
