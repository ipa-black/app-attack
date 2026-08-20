package com.yandex.metrica.uiaccessor;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
/* loaded from: classes5.dex */
public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0360a f16325a;

    /* renamed from: b  reason: collision with root package name */
    private FragmentManager.FragmentLifecycleCallbacks f16326b;

    /* renamed from: com.yandex.metrica.uiaccessor.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0360a {
        void fragmentAttached(Activity activity);
    }

    public a(InterfaceC0360a interfaceC0360a) throws Throwable {
        this.f16325a = interfaceC0360a;
    }

    @Override // com.yandex.metrica.uiaccessor.b
    public void subscribe(Activity activity) throws Throwable {
        if (activity instanceof FragmentActivity) {
            if (this.f16326b == null) {
                this.f16326b = new FragmentLifecycleCallback(this.f16325a, activity);
            }
            FragmentManager supportFragmentManager = ((FragmentActivity) activity).getSupportFragmentManager();
            supportFragmentManager.unregisterFragmentLifecycleCallbacks(this.f16326b);
            supportFragmentManager.registerFragmentLifecycleCallbacks(this.f16326b, true);
        }
    }

    @Override // com.yandex.metrica.uiaccessor.b
    public void unsubscribe(Activity activity) throws Throwable {
        if (!(activity instanceof FragmentActivity) || this.f16326b == null) {
            return;
        }
        ((FragmentActivity) activity).getSupportFragmentManager().unregisterFragmentLifecycleCallbacks(this.f16326b);
    }
}
