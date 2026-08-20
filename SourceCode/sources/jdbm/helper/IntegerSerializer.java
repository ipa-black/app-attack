package jdbm.helper;

import java.io.IOException;
/* loaded from: classes5.dex */
public class IntegerSerializer implements Serializer {
    public static final IntegerSerializer INSTANCE = new IntegerSerializer();

    @Override // jdbm.helper.Serializer
    public byte[] serialize(Object obj) throws IOException {
        return Conversion.convertToByteArray(((Integer) obj).intValue());
    }

    @Override // jdbm.helper.Serializer
    public Object deserialize(byte[] bArr) throws IOException {
        return new Integer(Conversion.convertToInt(bArr));
    }
}
