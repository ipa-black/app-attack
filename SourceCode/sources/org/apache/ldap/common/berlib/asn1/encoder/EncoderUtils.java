package org.apache.ldap.common.berlib.asn1.encoder;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.DefaultMutableTupleNode;
import org.apache.asn1.ber.TagEnum;
import org.apache.asn1.ber.Tuple;
import org.apache.asn1.ber.TupleNode;
import org.apache.asn1.ber.primitives.PrimitiveUtils;
import org.apache.asn1.ber.primitives.UniversalTag;
/* loaded from: classes3.dex */
public class EncoderUtils {
    public static TupleNode encode(String str) {
        return encode(UniversalTag.OCTET_STRING, str);
    }

    public static TupleNode encode(TagEnum tagEnum, String str) {
        Tuple tuple = new Tuple();
        tuple.setTag(tagEnum, true);
        ByteBuffer wrap = ByteBuffer.wrap(str.getBytes());
        tuple.setLength(wrap.remaining());
        tuple.setLastValueChunk(wrap);
        return new DefaultMutableTupleNode(tuple);
    }

    public static TupleNode encode(byte[] bArr) {
        return encode(UniversalTag.OCTET_STRING, bArr);
    }

    public static TupleNode encode(TagEnum tagEnum, byte[] bArr) {
        Tuple tuple = new Tuple();
        tuple.setTag(tagEnum, true);
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        tuple.setLength(wrap.remaining());
        tuple.setLastValueChunk(wrap);
        return new DefaultMutableTupleNode(tuple);
    }

    public static TupleNode encode(int i) {
        return encode(UniversalTag.INTEGER, i);
    }

    public static TupleNode encode(TagEnum tagEnum, int i) {
        Tuple tuple = new Tuple();
        tuple.setTag(tagEnum, true);
        ByteBuffer wrap = ByteBuffer.wrap(PrimitiveUtils.encodeInt(i));
        tuple.setLength(wrap.remaining());
        tuple.setLastValueChunk(wrap);
        return new DefaultMutableTupleNode(tuple);
    }

    public static TupleNode encode(boolean z) {
        return encode(UniversalTag.BOOLEAN, z);
    }

    public static TupleNode encode(TagEnum tagEnum, boolean z) {
        Tuple tuple = new Tuple();
        tuple.setTag(tagEnum, true);
        ByteBuffer wrap = ByteBuffer.wrap(PrimitiveUtils.encodeBoolean(z));
        tuple.setLength(wrap.remaining());
        tuple.setLastValueChunk(wrap);
        return new DefaultMutableTupleNode(tuple);
    }
}
