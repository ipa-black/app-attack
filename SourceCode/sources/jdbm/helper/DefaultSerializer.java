package jdbm.helper;

import java.io.IOException;
/* loaded from: classes5.dex */
public class DefaultSerializer implements Serializer {
    public static final DefaultSerializer INSTANCE = new DefaultSerializer();

    @Override // jdbm.helper.Serializer
    public byte[] serialize(Object obj) throws IOException {
        return Serialization.serialize(obj);
    }

    @Override // jdbm.helper.Serializer
    public Object deserialize(byte[] bArr) throws IOException {
        try {
            return Serialization.deserialize(bArr);
        } catch (ClassNotFoundException e2) {
            throw new WrappedRuntimeException(e2);
        }
    }
}
