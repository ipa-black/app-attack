package com.amazon.device.ads;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DtbHttpClient {
    private String message;
    private int responseCode;
    private String url;
    private boolean secure = true;
    private boolean isQueryParamsEnabled = false;
    private String response = null;
    private HashMap<String, Object> params = new HashMap<>();
    private HashMap<String, Object> headers = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum HTTPMethod {
        POST,
        GET
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getResponse() {
        return this.response;
    }

    protected String getErrorMessage() {
        return this.message;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getResponseCode() {
        return this.responseCode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DtbHttpClient(String str) {
        this.url = str;
    }

    protected void addParam(String str, String str2) {
        this.params.put(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addHeader(String str, String str2) {
        this.headers.put(str, str2);
    }

    protected HashMap<String, Object> getParams() {
        return this.params;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setParams(HashMap<String, Object> hashMap) {
        this.params = hashMap;
    }

    protected HashMap<String, Object> getHeaders() {
        return this.headers;
    }

    protected void setHeaders(HashMap<String, Object> hashMap) {
        this.headers = hashMap;
    }

    protected String getUrl() {
        return this.url;
    }

    protected void setUrl(String str) {
        this.url = str;
    }

    public void setUseSecure(boolean z) {
        this.secure = z;
    }

    public void enableQueryParams() {
        this.isQueryParamsEnabled = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void executePOST(int i) throws JSONException, IOException {
        URL url;
        String str = (this.secure ? "https://" : "http://") + this.url;
        DtbLog.debug("POST URL:" + str);
        if (this.isQueryParamsEnabled) {
            String queryParams = getQueryParams();
            DtbLog.debug("with query params:[" + queryParams + "]");
            url = new URL(str + queryParams);
        } else {
            url = new URL(str);
        }
        executeRequest(HTTPMethod.POST, url, i);
    }

    public boolean isHttpStatusCodeOK() {
        return this.responseCode == 200;
    }

    private String getQueryParams() {
        if (this.params.isEmpty()) {
            return "";
        }
        String str = "?";
        for (String str2 : this.params.keySet()) {
            if (this.params.get(str2) != null) {
                String str3 = str2 + "=" + DtbCommonUtils.getURLEncodedString(this.params.get(str2).toString());
                if (str.length() > 1) {
                    str = str + "&" + str3;
                } else {
                    str = str + str3;
                }
            }
        }
        return str;
    }

    private String getParamsAsJsonString() throws JSONException {
        return DtbCommonUtils.getParamsAsJsonString(this.params);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void executeGET(int i) throws JSONException, IOException {
        String queryParams = getQueryParams();
        String str = this.url;
        if (!str.startsWith("https://") && !this.url.startsWith("http://")) {
            str = (this.secure ? "https://" : "http://") + this.url;
        }
        DtbLog.debug("GET URL:" + str);
        DtbLog.debug("with params: " + queryParams);
        executeRequest(HTTPMethod.GET, new URL(str + queryParams), i);
    }

    private void executeRequest(HTTPMethod hTTPMethod, URL url, int i) throws JSONException, IOException {
        InputStream inputStream;
        HttpURLConnection createDefaultConnection = createDefaultConnection(url, i);
        StringBuilder sb = new StringBuilder();
        for (String str : this.headers.keySet()) {
            String obj = this.headers.get(str) != null ? this.headers.get(str).toString() : "";
            createDefaultConnection.setRequestProperty(str, obj);
            sb.append(str + ":" + obj + " ");
        }
        DtbLog.debug("with headers:[" + sb.toString() + "]");
        if (hTTPMethod == HTTPMethod.POST) {
            createDefaultConnection.setDoOutput(true);
            if (!this.isQueryParamsEnabled && !this.params.isEmpty()) {
                createDefaultConnection.setRequestProperty("content-type", "application/json; charset=utf-8");
                String paramsAsJsonString = getParamsAsJsonString();
                DtbLog.debug("with json params:[" + paramsAsJsonString + "]");
                OutputStream outputStream = createDefaultConnection.getOutputStream();
                outputStream.write(paramsAsJsonString.getBytes());
                outputStream.flush();
                outputStream.close();
            }
        }
        try {
            try {
                inputStream = createDefaultConnection.getInputStream();
            } catch (Exception e2) {
                this.response = null;
                DtbLog.debug("Error while connecting to remote server: " + createDefaultConnection.getURL().toString() + " with error:" + e2.getMessage());
            }
            if (inputStream == null) {
                return;
            }
            this.responseCode = createDefaultConnection.getResponseCode();
            this.message = createDefaultConnection.getResponseMessage();
            this.response = convertStreamToString(inputStream);
            inputStream.close();
            DtbLog.debug("Response :" + this.response);
        } finally {
            createDefaultConnection.disconnect();
        }
    }

    private HttpURLConnection createDefaultConnection(URL url, int i) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(1000);
        httpURLConnection.setReadTimeout(i);
        return httpURLConnection;
    }

    private static String convertStreamToString(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append(readLine + "\n");
                    }
                } catch (Throwable th) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                    throw th;
                }
            } catch (IOException e2) {
                DtbLog.debug("Error converting stream to string. Ex=" + e2);
            }
            try {
                break;
            } catch (IOException unused2) {
                return sb.toString();
            }
        }
        inputStream.close();
    }
}
