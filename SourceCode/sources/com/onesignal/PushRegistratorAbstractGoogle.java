package com.onesignal;

import android.content.Context;
import com.google.firebase.iid.GmsRpc;
import com.onesignal.OneSignal;
import com.onesignal.PushRegistrator;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class PushRegistratorAbstractGoogle implements PushRegistrator {
    private static int REGISTRATION_RETRY_BACKOFF_MS = 10000;
    private static int REGISTRATION_RETRY_COUNT = 5;
    private boolean firedCallback;
    private Thread registerThread;
    private PushRegistrator.RegisteredHandler registeredHandler;

    abstract String getProviderName();

    abstract String getToken(String str) throws Throwable;

    @Override // com.onesignal.PushRegistrator
    public void registerForPush(Context context, String str, PushRegistrator.RegisteredHandler registeredHandler) {
        this.registeredHandler = registeredHandler;
        if (isValidProjectNumber(str, registeredHandler)) {
            internalRegisterForPush(str);
        }
    }

    private void internalRegisterForPush(String str) {
        try {
            if (OSUtils.isGMSInstalledAndEnabled()) {
                registerInBackground(str);
            } else {
                GooglePlayServicesUpgradePrompt.showUpdateGPSDialog();
                OneSignal.Log(OneSignal.LOG_LEVEL.ERROR, "'Google Play services' app not installed or disabled on the device.");
                this.registeredHandler.complete(null, -7);
            }
        } catch (Throwable th) {
            OneSignal.Log(OneSignal.LOG_LEVEL.ERROR, "Could not register with " + getProviderName() + " due to an issue with your AndroidManifest.xml or with 'Google Play services'.", th);
            this.registeredHandler.complete(null, -8);
        }
    }

    private synchronized void registerInBackground(final String str) {
        Thread thread = this.registerThread;
        if (thread == null || !thread.isAlive()) {
            Thread thread2 = new Thread(new Runnable() { // from class: com.onesignal.PushRegistratorAbstractGoogle.1
                @Override // java.lang.Runnable
                public void run() {
                    int i = 0;
                    while (i < PushRegistratorAbstractGoogle.REGISTRATION_RETRY_COUNT && !PushRegistratorAbstractGoogle.this.attemptRegistration(str, i)) {
                        i++;
                        OSUtils.sleep(PushRegistratorAbstractGoogle.REGISTRATION_RETRY_BACKOFF_MS * i);
                    }
                }
            });
            this.registerThread = thread2;
            thread2.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean attemptRegistration(String str, int i) {
        try {
            String token = getToken(str);
            OneSignal.Log(OneSignal.LOG_LEVEL.INFO, "Device registered, push token = " + token);
            this.registeredHandler.complete(token, 1);
            return true;
        } catch (IOException e2) {
            int pushStatusFromThrowable = pushStatusFromThrowable(e2);
            String rootCauseMessage = OSUtils.getRootCauseMessage(e2);
            if (GmsRpc.ERROR_SERVICE_NOT_AVAILABLE.equals(rootCauseMessage) || "AUTHENTICATION_FAILED".equals(rootCauseMessage)) {
                Exception exc = new Exception(e2);
                if (i >= REGISTRATION_RETRY_COUNT - 1) {
                    OneSignal.Log(OneSignal.LOG_LEVEL.ERROR, "Retry count of " + REGISTRATION_RETRY_COUNT + " exceed! Could not get a " + getProviderName() + " Token.", exc);
                    return false;
                }
                OneSignal.Log(OneSignal.LOG_LEVEL.INFO, "'Google Play services' returned " + rootCauseMessage + " error. Current retry count: " + i, exc);
                if (i == 2) {
                    this.registeredHandler.complete(null, pushStatusFromThrowable);
                    this.firedCallback = true;
                    return true;
                }
                return false;
            }
            OneSignal.Log(OneSignal.LOG_LEVEL.ERROR, "Error Getting " + getProviderName() + " Token", new Exception(e2));
            if (!this.firedCallback) {
                this.registeredHandler.complete(null, pushStatusFromThrowable);
            }
            return true;
        } catch (Throwable th) {
            Exception exc2 = new Exception(th);
            int pushStatusFromThrowable2 = pushStatusFromThrowable(th);
            OneSignal.Log(OneSignal.LOG_LEVEL.ERROR, "Unknown error getting " + getProviderName() + " Token", exc2);
            this.registeredHandler.complete(null, pushStatusFromThrowable2);
            return true;
        }
    }

    private static int pushStatusFromThrowable(Throwable th) {
        String rootCauseMessage = OSUtils.getRootCauseMessage(th);
        if (th instanceof IOException) {
            if (GmsRpc.ERROR_SERVICE_NOT_AVAILABLE.equals(rootCauseMessage)) {
                return -9;
            }
            return "AUTHENTICATION_FAILED".equals(rootCauseMessage) ? -29 : -11;
        }
        return -12;
    }

    private boolean isValidProjectNumber(String str, PushRegistrator.RegisteredHandler registeredHandler) {
        try {
            Float.parseFloat(str);
            return true;
        } catch (Throwable unused) {
            OneSignal.Log(OneSignal.LOG_LEVEL.ERROR, "Missing Google Project number!\nPlease enter a Google Project number / Sender ID on under App Settings > Android > Configuration on the OneSignal dashboard.");
            registeredHandler.complete(null, -6);
            return false;
        }
    }
}
