package org.apache.kerberos.messages.value;
/* loaded from: classes5.dex */
public class AuthorizationDataEntry {
    private byte[] _authorizationData;
    private AuthorizationType _authorizationDataType;

    public AuthorizationDataEntry(AuthorizationType authorizationType, byte[] bArr) {
        this._authorizationDataType = authorizationType;
        this._authorizationData = bArr;
    }

    public byte[] getAuthorizationData() {
        return this._authorizationData;
    }

    public AuthorizationType getAuthorizationDataType() {
        return this._authorizationDataType;
    }
}
