package com.criteo.publisher.l0;

import android.content.SharedPreferences;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ConsentData.kt */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f8925a;

    static {
        new C0250a(null);
    }

    /* compiled from: ConsentData.kt */
    /* renamed from: com.criteo.publisher.l0.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0250a {
        private C0250a() {
        }

        public /* synthetic */ C0250a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public a(SharedPreferences sharedPreferences) {
        Intrinsics.checkParameterIsNotNull(sharedPreferences, "sharedPreferences");
        this.f8925a = sharedPreferences;
    }

    public SharedPreferences a() {
        return this.f8925a;
    }

    public boolean b() {
        return a().getBoolean("CRTO_ConsentGiven", false);
    }

    public void a(boolean z) {
        SharedPreferences.Editor edit = a().edit();
        edit.putBoolean("CRTO_ConsentGiven", z);
        edit.apply();
    }
}
