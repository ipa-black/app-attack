package org.apache.kerberos.jaas;

import java.io.IOException;
import javax.security.auth.callback.Callback;
import javax.security.auth.callback.CallbackHandler;
import javax.security.auth.callback.NameCallback;
import javax.security.auth.callback.PasswordCallback;
import javax.security.auth.callback.UnsupportedCallbackException;
/* loaded from: classes5.dex */
public class CallbackHandlerBean implements CallbackHandler {
    private String name;
    private String password;

    public CallbackHandlerBean(String str, String str2) {
        this.name = str;
        this.password = str2;
    }

    @Override // javax.security.auth.callback.CallbackHandler
    public void handle(Callback[] callbackArr) throws UnsupportedCallbackException, IOException {
        for (Callback callback : callbackArr) {
            if (callback instanceof NameCallback) {
                ((NameCallback) callback).setName(this.name);
            } else if (callback instanceof PasswordCallback) {
                ((PasswordCallback) callback).setPassword(this.password.toCharArray());
            } else {
                throw new UnsupportedCallbackException(callback, "Callback not supported");
            }
        }
    }
}
