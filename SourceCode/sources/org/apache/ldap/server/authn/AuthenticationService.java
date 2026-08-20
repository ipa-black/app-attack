package org.apache.ldap.server.authn;

import androidx.room.FtsOptions;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Hashtable;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.exception.LdapAuthenticationException;
import org.apache.ldap.common.exception.LdapAuthenticationNotSupportedException;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.common.util.StringTools;
import org.apache.ldap.server.interceptor.Interceptor;
import org.apache.ldap.server.interceptor.InterceptorContext;
import org.apache.ldap.server.interceptor.NextInterceptor;
import org.apache.ldap.server.invocation.Invocation;
import org.apache.ldap.server.jndi.EnvKeys;
import org.apache.ldap.server.jndi.ServerLdapContext;
/* loaded from: classes3.dex */
public class AuthenticationService implements Interceptor {
    private static final String AUTH_TYPE = "java.naming.security.authentication";
    private static final String CREDS = "java.naming.security.credentials";
    public Map authenticators = new LinkedHashMap();

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public void init(InterceptorContext interceptorContext) throws NamingException {
        GenericAuthenticatorContext genericAuthenticatorContext = new GenericAuthenticatorContext();
        genericAuthenticatorContext.setPartitionNexus(interceptorContext.getRootNexus());
        genericAuthenticatorContext.setAllowAnonymous(!interceptorContext.getEnvironment().containsKey(EnvKeys.DISABLE_ANONYMOUS));
        try {
            GenericAuthenticatorConfig genericAuthenticatorConfig = new GenericAuthenticatorConfig();
            genericAuthenticatorConfig.setAuthenticatorName("none");
            genericAuthenticatorConfig.setAuthenticatorContext(genericAuthenticatorContext);
            Authenticator anonymousAuthenticator = new AnonymousAuthenticator();
            anonymousAuthenticator.init(genericAuthenticatorConfig);
            register(anonymousAuthenticator);
            GenericAuthenticatorConfig genericAuthenticatorConfig2 = new GenericAuthenticatorConfig();
            genericAuthenticatorConfig2.setAuthenticatorName(FtsOptions.TOKENIZER_SIMPLE);
            genericAuthenticatorConfig2.setAuthenticatorContext(genericAuthenticatorContext);
            Authenticator simpleAuthenticator = new SimpleAuthenticator();
            simpleAuthenticator.init(genericAuthenticatorConfig2);
            register(simpleAuthenticator);
            AuthenticatorConfig[] authenticatorConfigs = AuthenticatorConfigBuilder.getAuthenticatorConfigs(new Hashtable(interceptorContext.getEnvironment()));
            for (int i = 0; i < authenticatorConfigs.length; i++) {
                try {
                    authenticatorConfigs[i].setAuthenticatorContext(genericAuthenticatorContext);
                    Authenticator authenticator = (AbstractAuthenticator) Class.forName(authenticatorConfigs[i].getAuthenticatorClass()).getConstructor(new Class[0]).newInstance(new Object[0]);
                    authenticator.init(authenticatorConfigs[i]);
                    register(authenticator);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        } catch (Exception e3) {
            throw new NamingException(e3.getMessage());
        }
    }

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public void destroy() {
        this.authenticators.clear();
    }

    public void register(Authenticator authenticator) {
        Collection authenticators = getAuthenticators(authenticator.getAuthenticatorType());
        if (authenticators == null) {
            authenticators = new ArrayList();
            this.authenticators.put(authenticator.getAuthenticatorType(), authenticators);
        }
        authenticators.add(authenticator);
    }

    public void unregister(Authenticator authenticator) {
        Collection authenticators = getAuthenticators(authenticator.getAuthenticatorType());
        if (authenticators == null) {
            return;
        }
        authenticators.remove(authenticator);
    }

    public Collection getAuthenticators(String str) {
        return (Collection) this.authenticators.get(str);
    }

    @Override // org.apache.ldap.server.interceptor.Interceptor
    public void process(NextInterceptor nextInterceptor, Invocation invocation) throws NamingException {
        ServerLdapContext serverLdapContext = (ServerLdapContext) invocation.getContextStack().peek();
        if (serverLdapContext.getPrincipal() != null) {
            if (serverLdapContext.getEnvironment().containsKey(CREDS)) {
                serverLdapContext.removeFromEnvironment(CREDS);
            }
            nextInterceptor.process(invocation);
            return;
        }
        String str = (String) serverLdapContext.getEnvironment().get(AUTH_TYPE);
        if (str == null) {
            if (serverLdapContext.getEnvironment().containsKey(CREDS)) {
                str = FtsOptions.TOKENIZER_SIMPLE;
            } else {
                str = "none";
            }
        }
        String[] split = StringTools.deepTrim(str).split(" ");
        Collection<Authenticator> collection = null;
        for (int i = 0; i < split.length && (collection = getAuthenticators(split[i])) == null; i++) {
        }
        if (collection == null) {
            serverLdapContext.getEnvironment();
            throw new LdapAuthenticationNotSupportedException(ResultCodeEnum.AUTHMETHODNOTSUPPORTED);
        }
        for (Authenticator authenticator : collection) {
            try {
                serverLdapContext.setPrincipal(new TrustedPrincipalWrapper(this, authenticator.authenticate(serverLdapContext), null));
                serverLdapContext.removeFromEnvironment(CREDS);
                nextInterceptor.process(invocation);
                return;
            } catch (LdapAuthenticationException unused) {
            }
        }
        throw new LdapAuthenticationException();
    }

    /* loaded from: classes3.dex */
    public final class TrustedPrincipalWrapper {
        private final LdapPrincipal principal;

        private TrustedPrincipalWrapper(LdapPrincipal ldapPrincipal) {
            this.principal = ldapPrincipal;
        }

        /* synthetic */ TrustedPrincipalWrapper(AuthenticationService authenticationService, LdapPrincipal ldapPrincipal, TrustedPrincipalWrapper trustedPrincipalWrapper) {
            this(ldapPrincipal);
        }

        public LdapPrincipal getPrincipal() {
            return this.principal;
        }
    }
}
