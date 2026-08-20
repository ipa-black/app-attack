package com.apm.insight.k;

import androidx.browser.trusted.sharing.ShareTarget;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private final String f972a;

    /* renamed from: b  reason: collision with root package name */
    private HttpURLConnection f973b;

    /* renamed from: c  reason: collision with root package name */
    private String f974c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f975d;

    /* renamed from: e  reason: collision with root package name */
    private f f976e;

    /* renamed from: f  reason: collision with root package name */
    private m f977f;

    public j(String str, String str2, boolean z) {
        this.f974c = str2;
        this.f975d = z;
        String str3 = "AAA" + System.currentTimeMillis() + "AAA";
        this.f972a = str3;
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        this.f973b = httpURLConnection;
        httpURLConnection.setUseCaches(false);
        this.f973b.setDoOutput(true);
        this.f973b.setDoInput(true);
        this.f973b.setRequestMethod(ShareTarget.METHOD_POST);
        this.f973b.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + str3);
        if (!z) {
            this.f976e = new f(this.f973b.getOutputStream());
            return;
        }
        this.f973b.setRequestProperty("Content-Encoding", "gzip");
        this.f977f = new m(this.f973b.getOutputStream());
    }

    public String a() {
        ArrayList<String> arrayList = new ArrayList();
        byte[] bytes = ("\r\n--" + this.f972a + "--\r\n").getBytes();
        if (this.f975d) {
            this.f977f.write(bytes);
            this.f977f.b();
            this.f977f.a();
        } else {
            this.f976e.write(bytes);
            this.f976e.flush();
            this.f976e.a();
        }
        int responseCode = this.f973b.getResponseCode();
        if (responseCode == 200) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f973b.getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                arrayList.add(readLine);
            }
            bufferedReader.close();
            this.f973b.disconnect();
            StringBuilder sb = new StringBuilder();
            for (String str : arrayList) {
                sb.append(str);
            }
            return sb.toString();
        }
        throw new IOException("Server returned non-OK status: " + responseCode);
    }

    public void a(String str, File file, Map<String, String> map) {
        String name = file.getName();
        StringBuilder sb = new StringBuilder("--");
        sb.append(this.f972a).append("\r\nContent-Disposition: form-data; name=\"").append(str).append("\"; filename=\"").append(name).append("\"");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb.append("; ").append(entry.getKey()).append("=\"").append(entry.getValue()).append("\"");
        }
        sb.append("\r\nContent-Transfer-Encoding: binary\r\n\r\n");
        if (this.f975d) {
            this.f977f.write(sb.toString().getBytes());
        } else {
            this.f976e.write(sb.toString().getBytes());
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[8192];
        while (true) {
            int read = fileInputStream.read(bArr);
            if (read == -1) {
                break;
            } else if (this.f975d) {
                this.f977f.write(bArr, 0, read);
            } else {
                this.f976e.write(bArr, 0, read);
            }
        }
        fileInputStream.close();
        if (this.f975d) {
            this.f977f.write("\r\n".getBytes());
            return;
        }
        this.f976e.write("\r\n".getBytes());
        this.f976e.flush();
    }

    public void a(String str, String str2) {
        a(str, str2, false);
    }

    public void a(String str, String str2, boolean z) {
        StringBuilder sb = new StringBuilder("--");
        sb.append(this.f972a).append("\r\nContent-Disposition: form-data; name=\"").append(str).append("\"\r\nContent-Type: text/plain; charset=").append(this.f974c).append("\r\n\r\n");
        try {
            if (this.f975d) {
                this.f977f.write(sb.toString().getBytes());
            } else {
                this.f976e.write(sb.toString().getBytes());
            }
        } catch (IOException unused) {
        }
        byte[] bytes = str2.getBytes();
        if (z) {
            bytes = com.apm.insight.i.i().getEncryptImpl().a(bytes);
        }
        try {
            if (this.f975d) {
                this.f977f.write(bytes);
                this.f977f.write("\r\n".getBytes());
                return;
            }
            this.f976e.write(bytes);
            this.f976e.write("\r\n".getBytes());
        } catch (IOException unused2) {
        }
    }

    public void a(String str, File... fileArr) {
        StringBuilder sb = new StringBuilder("--");
        sb.append(this.f972a).append("\r\nContent-Disposition: form-data; name=\"").append(str).append("\"; filename=\"").append(str).append("\"\r\nContent-Transfer-Encoding: binary\r\n\r\n");
        if (this.f975d) {
            this.f977f.write(sb.toString().getBytes());
        } else {
            this.f976e.write(sb.toString().getBytes());
        }
        com.apm.insight.l.h.a(this.f975d ? this.f977f : this.f976e, fileArr);
        if (this.f975d) {
            this.f977f.write("\r\n".getBytes());
            return;
        }
        this.f976e.write("\r\n".getBytes());
        this.f976e.flush();
    }
}
