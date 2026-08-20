package org.apache.ldap.common.message.spi;

import org.apache.ldap.common.message.Message;
/* loaded from: classes3.dex */
public interface TransformerSpi extends ProviderObject {
    Object transform(Message message) throws ProviderException;

    Message transform(Object obj) throws ProviderException;
}
