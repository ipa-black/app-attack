package org.apache.mina.examples.echoserver.ssl;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.ManagerFactoryParameters;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactorySpi;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes4.dex */
class BogusTrustManagerFactory extends TrustManagerFactorySpi {
    static final X509TrustManager X509;
    static final TrustManager[] X509_MANAGERS;

    @Override // javax.net.ssl.TrustManagerFactorySpi
    protected void engineInit(KeyStore keyStore) throws KeyStoreException {
    }

    @Override // javax.net.ssl.TrustManagerFactorySpi
    protected void engineInit(ManagerFactoryParameters managerFactoryParameters) throws InvalidAlgorithmParameterException {
    }

    static {
        X509TrustManager x509TrustManager = new X509TrustManager() { // from class: org.apache.mina.examples.echoserver.ssl.BogusTrustManagerFactory.1
            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            }

            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        };
        X509 = x509TrustManager;
        X509_MANAGERS = new TrustManager[]{x509TrustManager};
    }

    @Override // javax.net.ssl.TrustManagerFactorySpi
    protected TrustManager[] engineGetTrustManagers() {
        return X509_MANAGERS;
    }
}
