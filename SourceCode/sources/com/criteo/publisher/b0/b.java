package com.criteo.publisher.b0;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* compiled from: Redirection.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f8686a;

    public b(Context context) {
        this.f8686a = context;
    }

    public void a(String str, ComponentName componentName, c cVar) {
        Intent addFlags = new Intent("android.intent.action.VIEW", Uri.parse(str)).addFlags(268435456);
        if (this.f8686a.getPackageManager().queryIntentActivities(addFlags, 65536).size() > 0) {
            this.f8686a.startActivity(addFlags);
            cVar.b();
            if (componentName != null) {
                Application application = (Application) this.f8686a.getApplicationContext();
                application.registerActivityLifecycleCallbacks(new a(application, componentName, cVar));
            }
        }
    }

    /* compiled from: Redirection.java */
    /* loaded from: classes2.dex */
    private static class a extends com.criteo.publisher.a0.a {

        /* renamed from: a  reason: collision with root package name */
        private final Application f8687a;

        /* renamed from: b  reason: collision with root package name */
        private final ComponentName f8688b;

        /* renamed from: c  reason: collision with root package name */
        private c f8689c;

        public a(Application application, ComponentName componentName, c cVar) {
            this.f8687a = application;
            this.f8688b = componentName;
            this.f8689c = cVar;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            c cVar;
            if (this.f8688b.equals(activity.getComponentName()) && (cVar = this.f8689c) != null) {
                cVar.a();
                this.f8687a.unregisterActivityLifecycleCallbacks(this);
                this.f8689c = null;
            }
        }
    }
}
