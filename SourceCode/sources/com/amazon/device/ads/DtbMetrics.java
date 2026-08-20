package com.amazon.device.ads;

import com.amazon.device.ads.DtbMetric;
import com.amazon.device.ads.DtbMetrics;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DtbMetrics implements Cloneable {
    private final String LOG_TAG = "DtbMetrics";
    private volatile Map<DtbMetric, Long> collectedMetrics = new EnumMap(DtbMetric.class);
    private volatile Map<DtbMetric, Long> tempTimer = new EnumMap(DtbMetric.class);
    private String instPxlUrl = null;

    public void incrementMetric(DtbMetric dtbMetric) {
        if (dtbMetric == null || dtbMetric.getMetricType() != DtbMetric.DtbMetricType.COUNTER) {
            throw new IllegalArgumentException("Either metric is null or metric type is not counter.");
        }
        if (this.collectedMetrics.get(dtbMetric) == null) {
            this.collectedMetrics.put(dtbMetric, 0L);
        }
        this.collectedMetrics.put(dtbMetric, Long.valueOf(this.collectedMetrics.get(dtbMetric).longValue() + 1));
    }

    public void startTimer(DtbMetric dtbMetric) {
        if (dtbMetric == null || dtbMetric.getMetricType() != DtbMetric.DtbMetricType.TIMER) {
            throw new IllegalArgumentException("Either metric is null or metric type is not timer.");
        }
        if (this.collectedMetrics.get(dtbMetric) != null) {
            throw new IllegalArgumentException(dtbMetric + " is already set, your operation is trying to override a value.");
        }
        this.tempTimer.put(dtbMetric, Long.valueOf(System.currentTimeMillis()));
    }

    public void resetMetric(DtbMetric dtbMetric) {
        this.collectedMetrics.remove(dtbMetric);
    }

    public void stopTimer(DtbMetric dtbMetric) {
        if (dtbMetric == null || dtbMetric.getMetricType() == DtbMetric.DtbMetricType.COUNTER) {
            throw new IllegalArgumentException("Either metric is null or metric type is not timer.");
        }
        if (this.tempTimer.get(dtbMetric) == null) {
            throw new IllegalArgumentException("You are trying to stop a metric, which is not yet started: " + dtbMetric);
        }
        if (this.collectedMetrics.get(dtbMetric) != null) {
            throw new IllegalArgumentException(dtbMetric + " is already set, your operation is trying to override a value.");
        }
        this.collectedMetrics.put(dtbMetric, Long.valueOf(System.currentTimeMillis() - this.tempTimer.get(dtbMetric).longValue()));
        this.tempTimer.remove(dtbMetric);
    }

    public boolean isStarted(DtbMetric dtbMetric) {
        return this.tempTimer.containsKey(dtbMetric);
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("c", "dtbm");
            for (Map.Entry<DtbMetric, Long> entry : this.collectedMetrics.entrySet()) {
                jSONObject.put(entry.getKey().getAAXName(), entry.getValue());
            }
        } catch (JSONException e2) {
            DtbLog.debug("Error while adding values to JSON object: " + e2.getLocalizedMessage());
        }
        return jSONObject.toString();
    }

    public String toURLEncodedString() {
        return DtbCommonUtils.getURLEncodedString(toString());
    }

    public int getMetricsCount() {
        return this.collectedMetrics.size();
    }

    public String getInstPxlUrl() {
        return this.instPxlUrl;
    }

    public void setInstPxlUrl(String str) {
        int indexOf;
        if (str != null && (indexOf = str.indexOf("://")) != -1) {
            str = str.substring(indexOf + 3);
        }
        this.instPxlUrl = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: clone */
    public DtbMetrics m69clone() {
        DtbMetrics dtbMetrics = new DtbMetrics();
        dtbMetrics.collectedMetrics.putAll(this.collectedMetrics);
        dtbMetrics.tempTimer.putAll(this.tempTimer);
        dtbMetrics.instPxlUrl = this.instPxlUrl;
        return dtbMetrics;
    }

    public void reset() {
        this.collectedMetrics.clear();
        this.tempTimer.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Submitter {
        public static final Submitter INSTANCE = new Submitter();
        private final String LOG_TAG = Submitter.class.getSimpleName();
        private final Queue<DtbMetrics> metricsQueue = new ConcurrentLinkedQueue();

        private Submitter() {
        }

        public void submitMetrics(DtbMetrics dtbMetrics) {
            if (dtbMetrics.getMetricsCount() > 0) {
                this.metricsQueue.add(dtbMetrics.m69clone());
                dtbMetrics.reset();
                DtbLog.debug("Scheduling metrics submission in background thread.");
                DtbThreadService.getInstance().schedule(new Runnable() { // from class: com.amazon.device.ads.DtbMetrics$Submitter$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DtbMetrics.Submitter.this.m70x3fcaf7b7();
                    }
                });
                DtbLog.debug("Dispatched the metrics submit task on a background schedule thread.");
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$submitMetrics$0$com-amazon-device-ads-DtbMetrics$Submitter  reason: not valid java name */
        public /* synthetic */ void m70x3fcaf7b7() {
            DtbLog.debug("Starting metrics submission..");
            submitMetrics();
            DtbLog.debug("Metrics submission thread complete.");
        }

        private void submitMetrics() {
            Iterator<DtbMetrics> it = this.metricsQueue.iterator();
            int i = 0;
            while (it.hasNext()) {
                DtbMetrics next = it.next();
                i++;
                DtbLog.debug("Starting metrics submission - Sequence " + i);
                if (next.getInstPxlUrl() == null) {
                    it.remove();
                    DtbLog.debug("No metric url found- Sequence " + i + ", skipping..");
                } else {
                    String str = next.getInstPxlUrl() + next.toURLEncodedString();
                    DtbLog.debug("Metrics URL:" + str);
                    try {
                        DtbHttpClient dtbHttpClient = new DtbHttpClient(str);
                        dtbHttpClient.setUseSecure(DtbDebugProperties.getIsSecure(true));
                        dtbHttpClient.executeGET(60000);
                        if (!dtbHttpClient.isHttpStatusCodeOK()) {
                            DtbLog.debug("Metrics submission failed- Sequence " + i + ", response invalid");
                            return;
                        } else {
                            DtbLog.debug("Metrics submitted- Sequence " + i);
                            it.remove();
                        }
                    } catch (Exception e2) {
                        DtbLog.debug("Metrics submission failed- Sequence " + i + ", encountered error:" + e2.toString());
                        return;
                    }
                }
            }
        }
    }
}
