package com.yandex.metrica.impl.ob;

import android.net.Uri;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.Socket;
import java.util.Map;
/* loaded from: classes5.dex */
class Ch {

    /* renamed from: a  reason: collision with root package name */
    private final Socket f12764a;

    /* renamed from: b  reason: collision with root package name */
    private final Gh f12765b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Bh> f12766c;

    /* renamed from: d  reason: collision with root package name */
    private final Hh f12767d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ch(Socket socket, Gh gh, Map<String, Bh> map, Hh hh) {
        this.f12764a = socket;
        this.f12765b = gh;
        this.f12766c = map;
        this.f12767d = hh;
    }

    public void a() {
        BufferedReader bufferedReader;
        int indexOf;
        int indexOf2;
        BufferedReader bufferedReader2 = null;
        String str = null;
        try {
            try {
                this.f12764a.setSoTimeout(1000);
                bufferedReader = new BufferedReader(new InputStreamReader(this.f12764a.getInputStream()));
            } catch (Throwable unused) {
                return;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f12767d.a();
            String readLine = bufferedReader.readLine();
            if (!TextUtils.isEmpty(readLine) && ((readLine.startsWith("GET /") || readLine.startsWith("POST /")) && (indexOf2 = readLine.indexOf(32, (indexOf = readLine.indexOf(47) + 1))) > 0)) {
                str = readLine.substring(indexOf, indexOf2);
            } else {
                ((Jh) this.f12765b).a("invalid_route", readLine);
            }
            if (str != null) {
                Uri parse = Uri.parse(str);
                Bh bh = this.f12766c.get(parse.getPath());
                if (bh != null) {
                    Ah a2 = bh.a(this.f12764a, parse, this.f12767d);
                    if (a2.f12640c.f14617b.equals(a2.f12641d.getQueryParameter(com.appnext.base.a.c.d.COLUMN_TYPE))) {
                        a2.a();
                    } else {
                        ((Jh) a2.f12639b).a("request_with_wrong_token");
                    }
                } else {
                    ((Jh) this.f12765b).a("request_to_unknown_path", str);
                }
            }
            bufferedReader.close();
        } catch (Throwable th2) {
            th = th2;
            bufferedReader2 = bufferedReader;
            try {
                ((Jh) this.f12765b).a("LocalHttpServer exception", th);
                if (bufferedReader2 != null) {
                    bufferedReader2.close();
                }
            } catch (Throwable th3) {
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused2) {
                    }
                }
                throw th3;
            }
        }
    }
}
