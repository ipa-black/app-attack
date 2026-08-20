package io.bidmachine;

import a.a;
import android.content.Context;
import c.c;
import e.b;
import io.bidmachine.analytics.AnalyticsConfig;
import io.bidmachine.analytics.InitializeListener;
import io.bidmachine.analytics.entity.Event;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class BidMachineAnalytics {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicBoolean f16350a = new AtomicBoolean(false);

    public static /* synthetic */ void a(Context context, AnalyticsConfig analyticsConfig, InitializeListener initializeListener) {
        try {
            b.a(context, analyticsConfig);
            c.a(context, analyticsConfig);
            if (initializeListener != null) {
                initializeListener.onInitialized();
            }
        } catch (Throwable unused) {
        }
    }

    public static void initialize(Context context, AnalyticsConfig analyticsConfig) {
        initialize(context, analyticsConfig, null);
    }

    public static void initialize(Context context, final AnalyticsConfig analyticsConfig, final InitializeListener initializeListener) {
        if (f16350a.compareAndSet(false, true)) {
            final Context applicationContext = context.getApplicationContext();
            a.b(new Runnable() { // from class: io.bidmachine.BidMachineAnalytics$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BidMachineAnalytics.a(applicationContext, analyticsConfig, initializeListener);
                }
            });
        }
    }

    public static void trackEvent(Event event) {
        b.a(event);
    }
}
