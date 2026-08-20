package org.apache.ldap.server.authn;

import java.util.Enumeration;
import java.util.Properties;
/* loaded from: classes3.dex */
public class GenericAuthenticatorConfig implements AuthenticatorConfig {
    private String authenticatorClass;
    private AuthenticatorContext authenticatorContext;
    private String authenticatorName;
    private Properties properties = new Properties();

    @Override // org.apache.ldap.server.authn.AuthenticatorConfig
    public String getAuthenticatorName() {
        return this.authenticatorName;
    }

    public void setAuthenticatorName(String str) {
        this.authenticatorName = str;
    }

    public String getAuthenticatorClass() {
        return this.authenticatorClass;
    }

    public void setAuthenticatorClass(String str) {
        this.authenticatorClass = str;
    }

    public Properties getProperties() {
        return this.properties;
    }

    public void setProperties(Properties properties) {
        this.properties = properties;
    }

    @Override // org.apache.ldap.server.authn.AuthenticatorConfig
    public String getInitParameter(String str) {
        return this.properties.getProperty(str);
    }

    @Override // org.apache.ldap.server.authn.AuthenticatorConfig
    public Enumeration getInitParameterNames() {
        return this.properties.keys();
    }

    @Override // org.apache.ldap.server.authn.AuthenticatorConfig
    public AuthenticatorContext getAuthenticatorContext() {
        return this.authenticatorContext;
    }

    public void setAuthenticatorContext(AuthenticatorContext authenticatorContext) {
        this.authenticatorContext = authenticatorContext;
    }
}
