package org.apache.ldap.common.exception;

import javax.naming.directory.AttributeInUseException;
import org.apache.ldap.common.message.ResultCodeEnum;
/* loaded from: classes3.dex */
public class LdapAttributeInUseException extends AttributeInUseException implements LdapException {
    public LdapAttributeInUseException() {
    }

    public LdapAttributeInUseException(String str) {
        super(str);
    }

    @Override // org.apache.ldap.common.exception.LdapException
    public ResultCodeEnum getResultCode() {
        return ResultCodeEnum.ENTRYALREADYEXISTS;
    }
}
