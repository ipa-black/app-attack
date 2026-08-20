package c;

import android.content.Context;
import io.bidmachine.analytics.AnalyticsConfig;
import io.bidmachine.analytics.entity.AnalyticsMetricConfig;
import io.bidmachine.analytics.entity.Event;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicBoolean f21a = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    public static final List<c.a> f22b = new CopyOnWriteArrayList();

    /* loaded from: classes.dex */
    public static final class b implements c.b {
        private b() {
        }

        @Override // c.b
        public void a(Event event) {
            e.b.a(event);
        }
    }

    public static void a(Context context) {
        Context applicationContext = context.getApplicationContext();
        for (c.a aVar : f22b) {
            aVar.a(applicationContext);
        }
    }

    public static void a(Context context, AnalyticsConfig analyticsConfig) {
        if (f21a.compareAndSet(false, true)) {
            for (AnalyticsMetricConfig analyticsMetricConfig : analyticsConfig.getAnalyticsMetricConfigList()) {
                try {
                    if (analyticsMetricConfig.getEventName().equals("mimp")) {
                        f22b.add(new d.a(analyticsMetricConfig, new b()));
                    }
                } catch (Throwable unused) {
                }
            }
            a(context);
        }
    }
}
