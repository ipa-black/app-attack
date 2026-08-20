package org.apache.ldap.server.authn;

import java.util.Enumeration;
/* loaded from: classes3.dex */
public interface AuthenticatorConfig {
    AuthenticatorContext getAuthenticatorContext();

    String getAuthenticatorName();

    String getInitParameter(String str);

    Enumeration getInitParameterNames();
}
