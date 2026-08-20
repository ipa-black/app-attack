package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public class AbstractRequest extends AbstractMessage implements Request {
    private final boolean m_hasResponse;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractRequest(int i, MessageTypeEnum messageTypeEnum, boolean z) {
        super(i, messageTypeEnum);
        this.m_hasResponse = z;
    }

    @Override // org.apache.ldap.common.message.Request
    public boolean hasResponse() {
        return this.m_hasResponse;
    }
}
