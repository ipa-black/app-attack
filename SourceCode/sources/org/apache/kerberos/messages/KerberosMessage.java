package org.apache.kerberos.messages;
/* loaded from: classes5.dex */
public class KerberosMessage {
    public static final int PVNO = 5;
    private MessageType _messageType;
    private int _protocolVersionNumber;

    public KerberosMessage(MessageType messageType) {
        this(5, messageType);
    }

    public KerberosMessage(int i, MessageType messageType) {
        this._protocolVersionNumber = i;
        this._messageType = messageType;
    }

    public MessageType getMessageType() {
        return this._messageType;
    }

    public void setMessageType(MessageType messageType) {
        this._messageType = messageType;
    }

    public int getProtocolVersionNumber() {
        return this._protocolVersionNumber;
    }

    public void setProtocolVersionNumber(int i) {
        this._protocolVersionNumber = i;
    }
}
