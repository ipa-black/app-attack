package f;

import io.bidmachine.protobuf.analytics.SDKAnalyticPayload;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class e extends a<e> {

    /* renamed from: f  reason: collision with root package name */
    public final List<b.a> f16348f;

    public e(String str, List<b.a> list) {
        super(d.Post, str);
        this.f16348f = list;
    }

    public final SDKAnalyticPayload.Metric.MetricData a(b.a aVar) {
        try {
            SDKAnalyticPayload.Metric.MetricData.Builder name = SDKAnalyticPayload.Metric.MetricData.newBuilder().setTimestamp(String.valueOf(aVar.f())).setName(aVar.e());
            JSONObject b2 = aVar.b();
            if (b2.length() > 0) {
                Iterator<String> keys = b2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    name.addDimensions(SDKAnalyticPayload.Metric.MetricData.Dimension.newBuilder().setName(next).setValue(b2.optString(next)));
                }
            }
            JSONObject d2 = aVar.d();
            if (d2.length() > 0) {
                Iterator<String> keys2 = d2.keys();
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    name.addMeasures(SDKAnalyticPayload.Metric.MetricData.Measure.newBuilder().setName(next2).setValue(d2.optDouble(next2)));
                }
            }
            return name.build();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // f.a
    public void c(URLConnection uRLConnection) {
        uRLConnection.setRequestProperty("Content-Type", "application/x-protobuf");
    }

    @Override // f.a
    public byte[] e() {
        try {
            HashMap hashMap = new HashMap();
            for (b.a aVar : this.f16348f) {
                String a2 = aVar.a();
                SDKAnalyticPayload.Metric.Builder builder = (SDKAnalyticPayload.Metric.Builder) hashMap.get(a2);
                if (builder == null) {
                    builder = SDKAnalyticPayload.Metric.newBuilder().setContext(a2);
                    hashMap.put(a2, builder);
                }
                builder.addData(a(aVar));
            }
            SDKAnalyticPayload.Builder newBuilder = SDKAnalyticPayload.newBuilder();
            for (SDKAnalyticPayload.Metric.Builder builder2 : hashMap.values()) {
                newBuilder.addMetrics(builder2);
            }
            return newBuilder.build().toByteArray();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // f.a
    /* renamed from: g */
    public e d() {
        return this;
    }

    public List<b.a> h() {
        return this.f16348f;
    }
}
