package org.apache.ldap.common.exception;

import javax.naming.directory.SchemaViolationException;
import org.apache.ldap.common.message.ResultCodeEnum;
/* loaded from: classes3.dex */
public class LdapSchemaViolationException extends SchemaViolationException implements LdapException {
    private final ResultCodeEnum resultCode;

    public LdapSchemaViolationException(ResultCodeEnum resultCodeEnum) {
        int value = resultCodeEnum.getValue();
        if (value != 65 && value != 67 && value != 69) {
            throw new IllegalArgumentException(new StringBuffer().append(resultCodeEnum.getName()).append(" is not an acceptable result code.").toString());
        }
        this.resultCode = resultCodeEnum;
    }

    public LdapSchemaViolationException(String str, ResultCodeEnum resultCodeEnum) {
        super(str);
        this.resultCode = resultCodeEnum;
    }

    @Override // org.apache.ldap.common.exception.LdapException
    public ResultCodeEnum getResultCode() {
        return this.resultCode;
    }
}
