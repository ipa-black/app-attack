package org.apache.ldap.common.message.spi;

import java.io.OutputStream;
import java.nio.ByteBuffer;
import org.apache.asn1.codec.stateful.StatefulEncoder;
/* loaded from: classes3.dex */
public interface ProviderEncoder extends ProviderObject, StatefulEncoder {
    ByteBuffer encodeBlocking(Object obj) throws ProviderException;

    void encodeBlocking(Object obj, OutputStream outputStream, Object obj2) throws ProviderException;
}
