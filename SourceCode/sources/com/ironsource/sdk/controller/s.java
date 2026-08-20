package com.ironsource.sdk.controller;

import android.webkit.JavascriptInterface;
/* loaded from: classes3.dex */
final class s {

    /* renamed from: a  reason: collision with root package name */
    private t f11781a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f11782b = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(t tVar) {
        this.f11781a = tVar;
    }

    @JavascriptInterface
    public final String getTokenForMessaging() {
        if (this.f11782b) {
            return "";
        }
        this.f11782b = true;
        return this.f11781a.f11783a;
    }
}
