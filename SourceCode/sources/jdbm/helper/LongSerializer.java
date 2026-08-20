package jdbm.helper;

import java.io.IOException;
/* loaded from: classes5.dex */
public class LongSerializer implements Serializer {
    public static final LongSerializer INSTANCE = new LongSerializer();

    @Override // jdbm.helper.Serializer
    public byte[] serialize(Object obj) throws IOException {
        return Conversion.convertToByteArray(((Long) obj).longValue());
    }

    @Override // jdbm.helper.Serializer
    public Object deserialize(byte[] bArr) throws IOException {
        return new Long(Conversion.convertToLong(bArr));
    }
}
