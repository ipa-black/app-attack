package org.apache.ldap.common.exception;

import javax.naming.NameAlreadyBoundException;
import org.apache.ldap.common.message.ResultCodeEnum;
/* loaded from: classes3.dex */
public class LdapNameAlreadyBoundException extends NameAlreadyBoundException implements LdapException {
    public LdapNameAlreadyBoundException() {
    }

    public LdapNameAlreadyBoundException(String str) {
        super(str);
    }

    @Override // org.apache.ldap.common.exception.LdapException
    public ResultCodeEnum getResultCode() {
        return ResultCodeEnum.ENTRYALREADYEXISTS;
    }
}
