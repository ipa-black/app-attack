package d;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import c.b;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import io.bidmachine.analytics.entity.AnalyticsMetricConfig;
import io.bidmachine.analytics.entity.Event;
import java.util.List;
import java.util.UUID;
/* loaded from: classes5.dex */
public class a extends c.a {

    /* renamed from: b  reason: collision with root package name */
    public final C0361a f16327b;

    /* renamed from: d.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0361a implements AppLovinCommunicatorSubscriber {

        /* renamed from: a  reason: collision with root package name */
        public final AnalyticsMetricConfig f16328a;

        /* renamed from: b  reason: collision with root package name */
        public final b f16329b;

        /* renamed from: c  reason: collision with root package name */
        public final String f16330c = UUID.randomUUID().toString();

        public C0361a(AnalyticsMetricConfig analyticsMetricConfig, b bVar) {
            this.f16328a = analyticsMetricConfig;
            this.f16329b = bVar;
        }

        public final String a(Bundle bundle, String str) {
            Object obj = bundle.get(str);
            if (obj == null) {
                return null;
            }
            String valueOf = String.valueOf(obj);
            if (TextUtils.isEmpty(valueOf)) {
                return null;
            }
            return valueOf;
        }

        @Override // com.applovin.communicator.AppLovinCommunicatorEntity
        public String getCommunicatorId() {
            return this.f16330c;
        }

        @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
        public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
            if (appLovinCommunicatorMessage == null) {
                return;
            }
            try {
                if ("max_revenue_events".equals(appLovinCommunicatorMessage.getTopic())) {
                    Bundle messageData = appLovinCommunicatorMessage.getMessageData();
                    if (messageData.size() != 0) {
                        Event event = new Event("mimp");
                        List<String> dimensions = this.f16328a.getDimensions();
                        List<String> metrics = this.f16328a.getMetrics();
                        if ((dimensions != null && dimensions.size() != 0) || (metrics != null && metrics.size() != 0)) {
                            if (dimensions != null && dimensions.size() > 0) {
                                for (String str : dimensions) {
                                    try {
                                        String a2 = a(messageData, str);
                                        if (a2 != null) {
                                            event.addDimension(str, a2);
                                        }
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                            if (metrics != null && metrics.size() > 0) {
                                for (String str2 : metrics) {
                                    try {
                                        String a3 = a(messageData, str2);
                                        if (a3 != null) {
                                            event.addMetric(str2, Double.parseDouble(a3));
                                        }
                                    } catch (Exception unused2) {
                                    }
                                }
                            }
                            this.f16329b.a(event);
                        }
                        for (String str3 : messageData.keySet()) {
                            try {
                                String a4 = a(messageData, str3);
                                if (a4 != null) {
                                    try {
                                        event.addMetric(str3, Double.parseDouble(a4));
                                    } catch (NumberFormatException unused3) {
                                        event.addDimension(str3, a4);
                                    }
                                }
                            } catch (Exception unused4) {
                            }
                        }
                        this.f16329b.a(event);
                    }
                }
            } catch (Throwable unused5) {
            }
        }
    }

    public a(AnalyticsMetricConfig analyticsMetricConfig, b bVar) {
        this.f16327b = new C0361a(analyticsMetricConfig, bVar);
    }

    @Override // c.a
    public void b(Context context) {
        AppLovinCommunicator.getInstance(context).subscribe(this.f16327b, "max_revenue_events");
    }
}
