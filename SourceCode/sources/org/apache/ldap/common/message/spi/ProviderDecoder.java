package org.apache.ldap.common.message.spi;

import java.io.InputStream;
import org.apache.asn1.codec.stateful.StatefulDecoder;
/* loaded from: classes3.dex */
public interface ProviderDecoder extends ProviderObject, StatefulDecoder {
    Object decode(Object obj, InputStream inputStream) throws ProviderException;
}
