package com.appodeal.ads.context;

import android.app.Activity;
/* loaded from: classes2.dex */
public interface a {

    /* renamed from: com.appodeal.ads.context.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0122a implements a {

        /* renamed from: a  reason: collision with root package name */
        public final Activity f6581a;

        public C0122a(Activity activity) {
            this.f6581a = activity;
        }

        @Override // com.appodeal.ads.context.a
        public final Activity getActivity() {
            return this.f6581a;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements a {

        /* renamed from: a  reason: collision with root package name */
        public final Activity f6582a;

        public b(Activity activity) {
            this.f6582a = activity;
        }

        @Override // com.appodeal.ads.context.a
        public final Activity getActivity() {
            return this.f6582a;
        }
    }

    Activity getActivity();
}
