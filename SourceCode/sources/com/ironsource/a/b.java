package com.ironsource.a;

import android.net.Uri;
import android.util.Log;
import androidx.browser.trusted.sharing.ShareTarget;
import com.ironsource.d.b;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    a f10484a;

    /* renamed from: b  reason: collision with root package name */
    private c f10485b;

    /* renamed from: c  reason: collision with root package name */
    private d f10486c;

    /* renamed from: d  reason: collision with root package name */
    private ExecutorService f10487d;

    public b(a aVar, c cVar) {
        if (aVar == null) {
            throw new InvalidParameterException("Null configuration not supported ");
        }
        if (aVar.f10475d == null) {
            throw new InvalidParameterException("Null formatter not supported ");
        }
        this.f10484a = aVar;
        this.f10485b = cVar;
        this.f10486c = aVar.f10475d;
        this.f10487d = Executors.newSingleThreadExecutor();
    }

    private static void a(Map<String, Object> map, Map<String, Object> map2) {
        try {
            map.putAll(map2);
        } catch (Exception unused) {
        }
    }

    void a(String str) {
        if (this.f10484a.f10476e) {
            Log.d("EventsTracker", str);
        }
    }

    public final void a(String str, Map<String, Object> map) {
        a(String.format(Locale.ENGLISH, "%s %s", str, map.toString()));
        if (this.f10484a.f10473b && !str.isEmpty()) {
            HashMap hashMap = new HashMap();
            hashMap.put("eventname", str);
            a(hashMap, this.f10485b.a());
            a(hashMap, map);
            final String a2 = this.f10486c.a(hashMap);
            this.f10487d.submit(new Runnable() { // from class: com.ironsource.a.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        com.ironsource.d.c cVar = new com.ironsource.d.c();
                        ArrayList arrayList = new ArrayList(b.this.f10484a.f10477f);
                        if (ShareTarget.METHOD_POST.equals(b.this.f10484a.f10474c)) {
                            cVar = com.ironsource.d.b.a(b.this.f10484a.f10472a, a2, arrayList);
                        } else if (ShareTarget.METHOD_GET.equals(b.this.f10484a.f10474c)) {
                            String str2 = b.this.f10484a.f10472a;
                            String str3 = a2;
                            Uri build = Uri.parse(str2).buildUpon().encodedQuery(str3).build();
                            b.a.C0318a c0318a = new b.a.C0318a();
                            c0318a.f10511b = build.toString();
                            c0318a.f10513d = str3;
                            c0318a.f10512c = ShareTarget.METHOD_GET;
                            c0318a.a(arrayList);
                            cVar = com.ironsource.d.b.a(c0318a.a());
                        }
                        b.this.a("response status code: " + cVar.f10517a);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            });
        }
    }
}
