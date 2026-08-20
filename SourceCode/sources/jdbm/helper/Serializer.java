package jdbm.helper;

import java.io.IOException;
import java.io.Serializable;
/* loaded from: classes5.dex */
public interface Serializer extends Serializable {
    Object deserialize(byte[] bArr) throws IOException;

    byte[] serialize(Object obj) throws IOException;
}
