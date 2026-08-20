package com.yandex.metrica.impl.ob;

import android.net.Uri;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Map;
/* loaded from: classes5.dex */
public abstract class Ah {

    /* renamed from: a  reason: collision with root package name */
    final Socket f12638a;

    /* renamed from: b  reason: collision with root package name */
    final Gh f12639b;

    /* renamed from: c  reason: collision with root package name */
    final C1491di f12640c;

    /* renamed from: d  reason: collision with root package name */
    final Uri f12641d;

    /* renamed from: e  reason: collision with root package name */
    final Hh f12642e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ah(Socket socket, Uri uri, Gh gh, C1491di c1491di, Hh hh) {
        this.f12638a = socket;
        this.f12641d = uri;
        this.f12639b = gh;
        this.f12640c = c1491di;
        this.f12642e = hh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, Map<String, String> map, byte[] bArr) {
        BufferedOutputStream bufferedOutputStream;
        this.f12642e.b();
        BufferedOutputStream bufferedOutputStream2 = null;
        BufferedOutputStream bufferedOutputStream3 = null;
        BufferedOutputStream bufferedOutputStream4 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(this.f12638a.getOutputStream());
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e2) {
            e = e2;
        }
        try {
            bufferedOutputStream.write(str.getBytes());
            a(bufferedOutputStream);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                a(bufferedOutputStream, key, entry.getValue());
                bufferedOutputStream3 = key;
            }
            a(bufferedOutputStream);
            bufferedOutputStream.write(bArr);
            bufferedOutputStream.flush();
            this.f12642e.c();
            ((Jh) this.f12639b).b(this.f12638a.getLocalPort(), this.f12642e);
            bufferedOutputStream2 = bufferedOutputStream3;
        } catch (IOException e3) {
            e = e3;
            bufferedOutputStream4 = bufferedOutputStream;
            ((Jh) this.f12639b).a("io_exception_during_sync", e);
            bufferedOutputStream = bufferedOutputStream4;
            bufferedOutputStream2 = bufferedOutputStream4;
            A2.a((Closeable) bufferedOutputStream);
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream2 = bufferedOutputStream;
            A2.a((Closeable) bufferedOutputStream2);
            throw th;
        }
        A2.a((Closeable) bufferedOutputStream);
    }

    private void a(OutputStream outputStream, String str, String str2) throws IOException {
        outputStream.write((str + ": " + str2).getBytes());
        a(outputStream);
    }

    private void a(OutputStream outputStream) throws IOException {
        outputStream.write("\r\n".getBytes());
    }
}
