package org.apache.asn1.ber.digester;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TypeClass;
/* loaded from: classes5.dex */
public interface Rule {
    void finish();

    BERDigester getDigester();

    void length(int i);

    void setDigester(BERDigester bERDigester);

    void tag(int i, boolean z, TypeClass typeClass);

    void value(ByteBuffer byteBuffer);
}
