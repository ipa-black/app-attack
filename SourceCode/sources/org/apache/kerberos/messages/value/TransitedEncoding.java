package org.apache.kerberos.messages.value;
/* loaded from: classes5.dex */
public class TransitedEncoding {
    private byte[] _contents;
    private TransitedEncodingType _type;

    public TransitedEncoding() {
        this._type = TransitedEncodingType.NULL;
        this._contents = new byte[0];
    }

    public TransitedEncoding(TransitedEncodingType transitedEncodingType, byte[] bArr) {
        this._type = transitedEncodingType;
        this._contents = bArr;
    }

    public byte[] getContents() {
        return this._contents;
    }

    public TransitedEncodingType getType() {
        return this._type;
    }
}
