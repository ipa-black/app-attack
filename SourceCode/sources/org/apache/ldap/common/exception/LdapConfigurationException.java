package org.apache.ldap.common.exception;

import javax.naming.ConfigurationException;
import org.apache.ldap.common.message.ResultCodeEnum;
/* loaded from: classes3.dex */
public class LdapConfigurationException extends ConfigurationException implements LdapException {
    public LdapConfigurationException() {
    }

    public LdapConfigurationException(String str) {
        super(str);
    }

    @Override // org.apache.ldap.common.exception.LdapException
    public ResultCodeEnum getResultCode() {
        return ResultCodeEnum.OTHER;
    }
}
