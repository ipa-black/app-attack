package e;

import android.content.Context;
import io.bidmachine.analytics.AnalyticsConfig;
import io.bidmachine.analytics.entity.Event;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicBoolean f16336a = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    public static a f16337b;

    public static void a(Context context, AnalyticsConfig analyticsConfig) {
        if (f16336a.compareAndSet(false, true)) {
            h.b bVar = new h.b(context);
            bVar.b();
            f16337b = new a(analyticsConfig, bVar);
        }
    }

    public static void a(Event event) {
        a aVar = f16337b;
        if (aVar != null) {
            aVar.b(event);
        }
    }
}
