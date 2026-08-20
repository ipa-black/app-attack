package com.bykv.vk.openvk.component.video.Qhi.ac;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.bykv.vk.openvk.component.video.Qhi.cJ.Tgh;
import com.bykv.vk.openvk.component.video.Qhi.cJ.WAv;
import com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac;
import com.bytedance.sdk.component.Sf.ROR;
import com.bytedance.sdk.component.Sf.hm;
import com.google.android.exoplayer2.C;
import com.google.common.net.HttpHeaders;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.RandomAccessFile;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* compiled from: Util.java */
/* loaded from: classes2.dex */
public final class Qhi {
    private static final Handler cJ = new Handler(Looper.getMainLooper());
    public static final Charset Qhi = Charset.forName(C.UTF8_NAME);

    public static void Qhi(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void Qhi(ServerSocket serverSocket) {
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void Qhi(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void Qhi(RandomAccessFile randomAccessFile) {
        if (randomAccessFile != null) {
            try {
                randomAccessFile.getFD().sync();
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean Qhi(String str) {
        if (str != null) {
            return str.startsWith("http://") || str.startsWith("https://");
        }
        return false;
    }

    public static int cJ(String str) {
        return Qhi(str, 0);
    }

    public static int Qhi(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public static String Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Qhi qhi, int i) {
        int Qhi2;
        if (qhi == null || !qhi.cJ()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(qhi.fl().toUpperCase()).append(' ').append(qhi.Qhi()).append(' ').append(qhi.Tgh()).append("\r\n");
        if (Tgh.ac) {
            Log.i("TAG_PROXY_headers", qhi.fl().toUpperCase() + " " + qhi.Qhi() + " " + qhi.Tgh());
        }
        List<WAv.cJ> Qhi3 = Qhi(qhi.ac());
        boolean z = true;
        if (Qhi3 != null) {
            int size = Qhi3.size();
            for (int i2 = 0; i2 < size; i2++) {
                WAv.cJ cJVar = Qhi3.get(i2);
                if (cJVar != null) {
                    String str = cJVar.Qhi;
                    String str2 = cJVar.cJ;
                    sb.append(str).append(": ").append(str2).append("\r\n");
                    if (HttpHeaders.CONTENT_RANGE.equalsIgnoreCase(str) || (HttpHeaders.ACCEPT_RANGES.equalsIgnoreCase(str) && "bytes".equalsIgnoreCase(str2))) {
                        z = false;
                    }
                }
            }
        }
        if (z && (Qhi2 = Qhi(qhi)) > 0) {
            sb.append("Content-Range: bytes ").append(Math.max(i, 0)).append("-").append(Qhi2 - 1).append("/").append(Qhi2).append("\r\n");
        }
        sb.append("Connection: close\r\n\r\n");
        String sb2 = sb.toString();
        if (Tgh.ac) {
            Log.i("TAG_PROXY_WRITE_TO_MP", sb2);
        }
        return sb2;
    }

    public static String Qhi(int i, int i2) {
        String cJ2 = cJ(i, i2);
        if (cJ2 == null) {
            return null;
        }
        return "bytes=".concat(String.valueOf(cJ2));
    }

    public static String cJ(int i, int i2) {
        if (i < 0 || i2 <= 0) {
            if (i > 0) {
                return i + "-";
            }
            if (i >= 0 || i2 <= 0) {
                return null;
            }
            return "-".concat(String.valueOf(i2));
        }
        return i + "-" + i2;
    }

    public static List<String> Qhi(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (Qhi(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    public static String Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.Qhi qhi, int i) {
        StringBuilder sb = new StringBuilder();
        if (i <= 0) {
            sb.append("HTTP/1.1 200 OK\r\n");
        } else {
            sb.append("HTTP/1.1 206 Partial Content\r\n");
        }
        sb.append("Accept-Ranges: bytes\r\nContent-Type: ");
        sb.append(qhi.cJ).append("\r\n");
        if (i <= 0) {
            sb.append("Content-Length: ").append(qhi.ac).append("\r\n");
        } else {
            sb.append("Content-Range: bytes ").append(i).append("-").append(qhi.ac - 1).append("/").append(qhi.ac).append("\r\nContent-Length: ");
            sb.append(qhi.ac - i).append("\r\n");
        }
        sb.append("Connection: close\r\n\r\n");
        String sb2 = sb.toString();
        if (Tgh.ac) {
            Log.i("TAG_PROXY_WRITE_TO_MP", sb2);
        }
        return sb2;
    }

    public static int Qhi() {
        return Math.max(Runtime.getRuntime().availableProcessors(), 1);
    }

    /* compiled from: Util.java */
    /* renamed from: com.bykv.vk.openvk.component.video.Qhi.ac.Qhi$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static class AnonymousClass1 implements FilenameFilter {
        private Pattern Qhi = Pattern.compile("^cpu[0-9]+$");

        AnonymousClass1() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return this.Qhi.matcher(str).matches();
        }
    }

    public static int Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Qhi qhi) {
        int lastIndexOf;
        if (qhi == null) {
            return -1;
        }
        if (qhi.Qhi() == 200) {
            return Qhi(qhi.Qhi("Content-Length", null), -1);
        }
        if (qhi.Qhi() == 206) {
            String Qhi2 = qhi.Qhi(HttpHeaders.CONTENT_RANGE, null);
            if (!TextUtils.isEmpty(Qhi2) && (lastIndexOf = Qhi2.lastIndexOf("/")) >= 0 && lastIndexOf < Qhi2.length() - 1) {
                return Qhi(Qhi2.substring(lastIndexOf + 1), -1);
            }
        }
        return -1;
    }

    public static String Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Qhi qhi, boolean z, boolean z2) {
        String Qhi2;
        if (qhi == null) {
            if (Tgh.ac) {
                Log.e("TAG_PROXY_Response", "response null");
            }
            return "response null";
        } else if (!qhi.cJ()) {
            if (Tgh.ac) {
                Log.e("TAG_PROXY_Response", "response code: " + qhi.Qhi());
            }
            return "response code: " + qhi.Qhi();
        } else {
            String Qhi3 = qhi.Qhi("Content-Type", null);
            if (!ac(Qhi3)) {
                if (Tgh.ac) {
                    Log.e("TAG_PROXY_Response", "Content-Type: ".concat(String.valueOf(Qhi3)));
                }
                return "Content-Type: ".concat(String.valueOf(Qhi3));
            }
            int Qhi4 = Qhi(qhi);
            if (Qhi4 <= 0) {
                if (Tgh.ac) {
                    Log.e("TAG_PROXY_Response", "Content-Length: ".concat(String.valueOf(Qhi4)));
                }
                return "Content-Length: ".concat(String.valueOf(Qhi4));
            } else if (z && ((Qhi2 = qhi.Qhi(HttpHeaders.ACCEPT_RANGES, null)) == null || !Qhi2.contains("bytes"))) {
                if (Tgh.ac) {
                    Log.e("TAG_PROXY_Response", "Accept-Ranges: ".concat(String.valueOf(Qhi2)));
                }
                return "Accept-Ranges: ".concat(String.valueOf(Qhi2));
            } else if (z2 && qhi.CJ() == null) {
                if (Tgh.ac) {
                    Log.e("TAG_PROXY_Response", "response body null");
                }
                return "response body null";
            } else {
                return null;
            }
        }
    }

    public static boolean ac(String str) {
        if (str != null) {
            return str.startsWith("video/") || "application/octet-stream".equals(str) || "binary/octet-stream".equals(str);
        }
        return false;
    }

    public static boolean cJ() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public static void Qhi(hm hmVar) {
        if (hmVar != null) {
            if (cJ()) {
                ROR.cJ(hmVar);
                if (Tgh.ac) {
                    Log.e("TAG_PROXY_UTIL", "invoke in pool thread");
                    return;
                }
                return;
            }
            hmVar.run();
            if (Tgh.ac) {
                Log.e("TAG_PROXY_UTIL", "invoke calling thread");
            }
        }
    }

    public static void Qhi(Runnable runnable) {
        if (runnable != null) {
            if (cJ()) {
                runnable.run();
            } else {
                cJ.post(runnable);
            }
        }
    }

    public static List<WAv.cJ> Qhi(List<WAv.cJ> list) {
        WAv.cJ cJVar;
        WAv.cJ cJVar2;
        if (list == null || list.size() == 0) {
            return null;
        }
        if (Tgh.ac) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i) != null) {
                    Log.i("TAG_PROXY_PRE_FILTER", cJVar2.Qhi + ": " + cJVar2.Qhi);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (WAv.cJ cJVar3 : list) {
            if (HttpHeaders.HOST.equals(cJVar3.Qhi) || HttpHeaders.KEEP_ALIVE.equals(cJVar3.Qhi) || "Connection".equals(cJVar3.Qhi) || "Proxy-Connection".equals(cJVar3.Qhi)) {
                arrayList.add(cJVar3);
            }
        }
        list.removeAll(arrayList);
        if (Tgh.ac) {
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                if (list.get(i2) != null) {
                    Log.i("TAG_PROXY_POST_FILTER", cJVar.Qhi + ": " + cJVar.cJ);
                }
            }
        }
        return list;
    }

    public static List<WAv.cJ> Qhi(Map<String, String> map) {
        if (map != null && !map.isEmpty()) {
            try {
                Set<Map.Entry<String, String>> entrySet = map.entrySet();
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<String, String> entry : entrySet) {
                    arrayList.add(new WAv.cJ(entry.getKey(), entry.getValue()));
                }
                return arrayList;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.Qhi Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Qhi qhi, ac acVar, String str, int i) {
        String str2;
        String str3;
        String str4;
        com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.Qhi Qhi2 = acVar.Qhi(str, i);
        if (Qhi2 == null) {
            int Qhi3 = Qhi(qhi);
            String Qhi4 = qhi.Qhi("Content-Type", null);
            if (Qhi3 <= 0 || TextUtils.isEmpty(Qhi4)) {
                return Qhi2;
            }
            com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Tgh ROR = qhi.ROR();
            if (ROR == null) {
                str2 = "";
                str3 = str2;
            } else {
                str3 = ROR.cJ;
                str2 = cJ(ROR.fl);
            }
            String cJ2 = cJ(qhi.ac());
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(IronSourceConstants.REQUEST_URL, str3);
                jSONObject.put("requestHeaders", str2);
                jSONObject.put("responseHeaders", cJ2);
                str4 = jSONObject.toString();
            } catch (Throwable unused) {
                str4 = "";
            }
            com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.Qhi qhi2 = new com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.Qhi(str, Qhi4, Qhi3, i, str4);
            acVar.Qhi(qhi2);
            return qhi2;
        }
        return Qhi2;
    }

    public static String cJ(List<WAv.cJ> list) {
        if (list == null || list.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            WAv.cJ cJVar = list.get(0);
            if (cJVar != null) {
                sb.append(cJVar.Qhi).append(": ").append(cJVar.cJ).append("\r\n");
            }
        }
        return sb.toString();
    }

    public static String cJ(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb.append((Object) entry.getKey()).append(": ").append((Object) entry.getValue()).append("\r\n");
        }
        return sb.toString();
    }
}
