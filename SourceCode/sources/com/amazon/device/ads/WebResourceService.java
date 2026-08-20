package com.amazon.device.ads;

import com.amazon.aps.shared.APSAnalytics;
import com.amazon.aps.shared.analytics.APSEventSeverity;
import com.amazon.aps.shared.analytics.APSEventType;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Date;
/* loaded from: classes.dex */
class WebResourceService implements Runnable {
    private static final String LOG_TAG = "WebResourceService";
    private static final long REFRESH_INTERVAL = 86400000;
    private static final String WEB_DIR = "/mdtb_web/";
    private static boolean inProgress = false;
    private static WebResourceService theService;

    WebResourceService() {
    }

    public static void init() {
        try {
            if (inProgress) {
                return;
            }
            WebResourceService webResourceService = getInstance();
            Long webResoucesLastPing = DtbSharedPreferences.getInstance().getWebResoucesLastPing();
            if (webResoucesLastPing == null || new Date().getTime() - webResoucesLastPing.longValue() > 86400000) {
                inProgress = true;
                DtbThreadService.getInstance().execute(webResourceService);
            }
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute init method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute init method", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static WebResourceService getInstance() {
        if (theService == null) {
            theService = new WebResourceService();
        }
        return theService;
    }

    @Override // java.lang.Runnable
    public void run() {
        String[] cDNResources;
        DtbHttpClient dtbHttpClient;
        File filesDir;
        try {
            createWebDirIfNeeded();
            boolean z = true;
            for (String str : WebResourceOptions.getCDNResources()) {
                try {
                    dtbHttpClient = new DtbHttpClient(WebResourceOptions.getCDNHost(str) + str);
                    dtbHttpClient.setUseSecure(DtbDebugProperties.getIsSecure(true));
                    dtbHttpClient.executeGET(60000);
                } catch (Exception e2) {
                    DtbLog.error("Error registering device for ads:" + e2.toString());
                    z = false;
                }
                if (dtbHttpClient.getResponseCode() != 200) {
                    throw new RuntimeException("resource " + str + " not available");
                    break;
                }
                String response = dtbHttpClient.getResponse();
                File createTempFile = File.createTempFile("dtb-temp", "js", AdRegistration.getContext().getFilesDir());
                FileWriter fileWriter = new FileWriter(createTempFile);
                fileWriter.write(response);
                fileWriter.close();
                renameTo(createTempFile, new File(filesDir.getAbsolutePath() + WEB_DIR + str));
            }
            if (z) {
                DtbSharedPreferences.getInstance().saveWebResoucesLastPing(new Date().getTime());
            }
            inProgress = false;
        } catch (RuntimeException e3) {
            DtbLog.error(LOG_TAG, "Fail to execute init method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute init method", e3);
        }
    }

    private void createWebDirIfNeeded() {
        File file = new File(AdRegistration.getContext().getFilesDir().getAbsolutePath() + WEB_DIR);
        if (file.isDirectory() || file.exists()) {
            return;
        }
        file.mkdir();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void deleteWebDirContent() {
        File file = new File(AdRegistration.getContext().getFilesDir().getAbsolutePath() + WEB_DIR);
        if (file.exists() && file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                file2.delete();
            }
        }
    }

    private synchronized void renameTo(File file, File file2) {
        file.renameTo(file2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String loadFile(String str) throws IOException {
        File file = new File(AdRegistration.getContext().getFilesDir().getAbsolutePath() + WEB_DIR + str + ".js");
        if (!file.exists()) {
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                sb.append(readLine.trim()).append("\n");
            } else {
                bufferedReader.close();
                fileInputStream.close();
                return sb.toString();
            }
        }
    }
}
