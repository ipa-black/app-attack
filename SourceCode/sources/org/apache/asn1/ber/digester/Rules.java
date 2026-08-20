package org.apache.asn1.ber.digester;

import java.util.List;
import org.apache.commons.collections.primitives.IntStack;
/* loaded from: classes5.dex */
public interface Rules {
    void add(int[] iArr, Rule rule);

    void clear();

    BERDigester getDigester();

    List match(IntStack intStack);

    List match(int[] iArr);

    List rules();

    void setDigester(BERDigester bERDigester);
}
