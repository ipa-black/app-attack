package com.yandex.metrica.uiaccessor;

import android.app.Activity;
import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.yandex.metrica.uiaccessor.a;
import java.lang.ref.WeakReference;
/* loaded from: classes5.dex */
public class FragmentLifecycleCallback extends FragmentManager.FragmentLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private final a.InterfaceC0360a f16323a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<Activity> f16324b;

    public FragmentLifecycleCallback(a.InterfaceC0360a interfaceC0360a, Activity activity) {
        this.f16323a = interfaceC0360a;
        this.f16324b = new WeakReference<>(activity);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentAttached(FragmentManager fragmentManager, Fragment fragment, Context context) {
        super.onFragmentAttached(fragmentManager, fragment, context);
        Activity activity = this.f16324b.get();
        if (activity != null) {
            this.f16323a.fragmentAttached(activity);
        }
    }
}
