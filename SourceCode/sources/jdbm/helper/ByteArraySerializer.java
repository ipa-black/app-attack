package jdbm.helper;

import java.io.IOException;
/* loaded from: classes5.dex */
public final class ByteArraySerializer implements Serializer {
    public static final ByteArraySerializer INSTANCE = new ByteArraySerializer();
    static final long serialVersionUID = 1;

    @Override // jdbm.helper.Serializer
    public Object deserialize(byte[] bArr) throws IOException {
        return bArr;
    }

    @Override // jdbm.helper.Serializer
    public byte[] serialize(Object obj) throws IOException {
        return (byte[]) obj;
    }
}
