package org.apache.kerberos.exceptions;
/* loaded from: classes5.dex */
public class KerberosException extends Exception {
    private final int errorCode;
    private byte[] explanatoryData;

    public KerberosException(int i, String str) {
        super(str);
        this.errorCode = i;
    }

    public KerberosException(int i, String str, Throwable th) {
        super(str, th);
        this.errorCode = i;
    }

    public KerberosException(ErrorType errorType) {
        super(errorType.getMessage());
        this.errorCode = errorType.getOrdinal();
    }

    public KerberosException(ErrorType errorType, byte[] bArr) {
        super(errorType.getMessage());
        this.errorCode = errorType.getOrdinal();
        this.explanatoryData = bArr;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public byte[] getExplanatoryData() {
        return this.explanatoryData;
    }
}
