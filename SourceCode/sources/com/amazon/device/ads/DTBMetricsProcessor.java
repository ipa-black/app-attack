package com.amazon.device.ads;

import com.amazon.device.ads.DTBMetricReport;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes.dex */
public class DTBMetricsProcessor {
    static String ALERT_SDK_WRAPPING = "alert_sdk_wrapping";
    static String ALERT_SDK_WRAPPING_V2 = "alert_sdk_wrapping_v2";
    static String REPORT_LOAD_FAILURE = "fetch_failure";
    static String REPORT_LOAD_LATENCY = "fetch_latency";
    static String REPORT_LOST_BID = "lost_bid";
    static String REPORT_MEDIATION_LATENCY = "mediation_latency";
    private static String SIMPLE_TAG = "DTB_Metrics";
    private static DTBMetricsProcessor theProcessor = new DTBMetricsProcessor();
    private final Object lock = new Object();
    private List<DTBMetricReport> reportQueue = new ArrayList();
    private boolean running;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DTBMetricsProcessor getInstance() {
        return theProcessor;
    }

    private DTBMetricsProcessor() {
    }

    private boolean isMainThread() {
        return DTBAdUtil.isMainThread();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void submitExpiredReport(final List<DTBMetricReport.BidWrapper> list) {
        if (isMainThread()) {
            DtbThreadService.getInstance().execute(new Runnable() { // from class: com.amazon.device.ads.DTBMetricsProcessor$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DTBMetricsProcessor.this.m68x770f9e76(list);
                }
            });
        } else {
            m68x770f9e76(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: submitExpiredReportImpl */
    public void m68x770f9e76(List<DTBMetricReport.BidWrapper> list) {
        for (DTBMetricReport.BidWrapper bidWrapper : list) {
            addReport(DTBMetricReport.reportWithBidIdAndType(bidWrapper, REPORT_LOST_BID));
        }
        dispenseReport();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void submitSimpleReportBidId(DTBMetricReport.BidWrapper bidWrapper, String str) {
        addReport(DTBMetricReport.reportWithBidIdAndType(bidWrapper, str));
        dispenseReport();
    }

    void submitErrorReport(String str, Map<String, Object> map) {
        addReport(DTBMetricReport.reportWithTypeAndExtraProperties(str, map));
        dispenseReport();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void submitErrorReport(String str, Map<String, Object> map, DTBMetricReport.BidWrapper bidWrapper) {
        addReport(DTBMetricReport.reportWithTypeAndExtraProperties(str, map, bidWrapper));
        dispenseReport();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void submitLatencyReportBidId(DTBMetricReport.BidWrapper bidWrapper, String str, int i) {
        addReport(DTBMetricReport.reportWithBidTypeLatency(bidWrapper, str, i));
        dispenseReport();
    }

    private void dispenseReport() {
        if (isMainThread()) {
            DtbThreadService.getInstance().execute(new Runnable() { // from class: com.amazon.device.ads.DTBMetricsProcessor$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    DTBMetricsProcessor.this.m67xbe5b2681();
                }
            });
        } else {
            m67xbe5b2681();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dispenseReportImpl */
    public void m67xbe5b2681() {
        synchronized (this.lock) {
            if (this.running) {
                return;
            }
            this.running = true;
            while (this.reportQueue.size() > 0) {
                DTBMetricReport dTBMetricReport = this.reportQueue.get(0);
                if (!DTBMetricsConfiguration.getInstance().isTypeEnabled(dTBMetricReport.getType())) {
                    DtbLog.debug(SIMPLE_TAG, "Report type:" + dTBMetricReport.getType() + " is ignored");
                    removeFromQueue();
                } else {
                    try {
                        String completeURLForPixelsBasedOnReportURL = getCompleteURLForPixelsBasedOnReportURL(dTBMetricReport);
                        DtbLog.debug(SIMPLE_TAG, "Report URL:\n" + completeURLForPixelsBasedOnReportURL + "\nType:" + dTBMetricReport.getType());
                        DtbLog.debug(SIMPLE_TAG, "Report:\n" + dTBMetricReport);
                        new DtbHttpClient(completeURLForPixelsBasedOnReportURL).executeGET(60000);
                        removeFromQueue();
                        DtbLog.debug(SIMPLE_TAG, "Report Submission Success");
                    } catch (MalformedURLException e2) {
                        DtbLog.warn("Malformed Exception:" + e2.getMessage());
                    } catch (IOException e3) {
                        DtbLog.warn("IOException:" + e3.getMessage());
                        DtbLog.debug(SIMPLE_TAG, "Report Submission Failure");
                    } catch (JSONException e4) {
                        DtbLog.warn("JSON Exception:" + e4.getMessage());
                        removeFromQueue();
                    }
                }
            }
            this.running = false;
        }
    }

    private void addReport(DTBMetricReport dTBMetricReport) {
        synchronized (this.reportQueue) {
            this.reportQueue.add(dTBMetricReport);
        }
    }

    private void removeFromQueue() {
        synchronized (this.reportQueue) {
            this.reportQueue.remove(0);
        }
    }

    private String getCompleteURLForPixelsBasedOnReportURL(DTBMetricReport dTBMetricReport) throws UnsupportedEncodingException {
        String str;
        if (dTBMetricReport.getHostname() == null || dTBMetricReport.getHostname().trim().length() == 0) {
            str = DtbConstants.AAX_HOSTNAME;
        } else {
            str = dTBMetricReport.getHostname();
        }
        if (dTBMetricReport.getBidId() != null && dTBMetricReport.getBidId().trim().length() != 0) {
            return String.format("%s/x/px/%s/%s%s", str, dTBMetricReport.getBidId(), dTBMetricReport.toEncodedString(), cacheBusterQueryString());
        }
        return String.format("%s/x/px/p/PH/%s%s", str, dTBMetricReport.toEncodedString(), cacheBusterQueryString());
    }

    private static String cacheBusterQueryString() {
        if (AdRegistration.isTestMode()) {
            return "?cb=0";
        }
        return String.format("?cb=%d", Integer.valueOf((int) (Math.random() * 1.0E7d)));
    }
}
