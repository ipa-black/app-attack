package com.ironsource.sdk.controller;

import android.webkit.JavascriptInterface;
import com.ironsource.sdk.controller.x;
import com.ironsource.sdk.utils.Logger;
import java.lang.reflect.Method;
import java.security.AccessControlException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private static final String f11620b = "d";

    /* renamed from: a  reason: collision with root package name */
    final x.d f11621a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(x.d dVar) {
        this.f11621a = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void a(String str, String str2) {
        if (this.f11621a == null) {
            Logger.e(f11620b, "!!! nativeAPI == null !!!");
            return;
        }
        Method declaredMethod = x.d.class.getDeclaredMethod(str, String.class);
        if (!declaredMethod.isAnnotationPresent(JavascriptInterface.class)) {
            throw new AccessControlException("Trying to access a private function: " + str);
        }
        declaredMethod.invoke(this.f11621a, str2);
    }
}
