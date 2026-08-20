package com.apm.insight.k;

import android.content.Context;
import com.apm.insight.CrashType;
import com.apm.insight.Npth;
import com.apm.insight.l.n;
import com.apm.insight.l.p;
import com.apm.insight.l.q;
import com.apm.insight.runtime.r;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static volatile d f943a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Context f944b;

    private d(Context context) {
        this.f944b = context;
    }

    public static d a() {
        if (f943a == null) {
            f943a = new d(com.apm.insight.i.g());
        }
        return f943a;
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() <= 0) {
            return;
        }
        try {
            String f2 = e.f();
            File file = new File(n.a(this.f944b), n.c());
            com.apm.insight.l.h.a(file, file.getName(), f2, jSONObject, e.b());
            if (e.a(f2, jSONObject.toString()).a()) {
                com.apm.insight.l.h.a(file);
            }
        } catch (Throwable th) {
            p.b(th);
        }
    }

    public void a(JSONObject jSONObject, long j, boolean z) {
        File[] fileArr;
        if (jSONObject != null && jSONObject.length() > 0) {
            try {
                String c2 = e.c();
                int i = 0;
                File file = new File(n.a(this.f944b), com.apm.insight.i.a(j, CrashType.ANR, false, false));
                com.apm.insight.l.h.a(file, file.getName(), c2, jSONObject, e.b());
                if (z && !Npth.isStopUpload()) {
                    jSONObject.put("upload_scene", "direct");
                    jSONObject.put("crash_uuid", file.getName());
                    q.a(jSONObject);
                    if (com.apm.insight.runtime.a.j()) {
                        HashMap<String, r.a> a2 = r.a(j, "anr_trace");
                        fileArr = new File[a2.size() + 2];
                        for (Map.Entry<String, r.a> entry : a2.entrySet()) {
                            if (!entry.getKey().equals(com.apm.insight.l.a.c(this.f944b))) {
                                fileArr[i] = n.a(this.f944b, entry.getValue().f1151b);
                                i++;
                            }
                        }
                    } else {
                        fileArr = new File[2];
                    }
                    fileArr[fileArr.length - 1] = n.a(this.f944b, com.apm.insight.i.f());
                    fileArr[fileArr.length - 2] = r.a(j);
                    if (!e.a(c2, jSONObject.toString(), fileArr).a()) {
                        return;
                    }
                    com.apm.insight.l.h.a(file);
                    if (Npth.hasCrash()) {
                        return;
                    }
                    com.apm.insight.l.h.a(n.e(com.apm.insight.i.g()));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public boolean a(long j, JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() > 0) {
            try {
                String c2 = e.c();
                File file = new File(n.a(this.f944b), n.a(com.apm.insight.i.e()));
                com.apm.insight.l.h.a(file, file.getName(), c2, jSONObject, e.a());
                jSONObject.put("upload_scene", "direct");
                q.a(jSONObject);
                if (e.b(c2, jSONObject.toString()).a()) {
                    com.apm.insight.l.h.a(file);
                    return true;
                }
                return false;
            } catch (Throwable th) {
                p.b(th);
            }
        }
        return false;
    }

    public boolean a(JSONObject jSONObject, File file, File file2) {
        try {
            String g2 = e.g();
            q.a(jSONObject);
            return e.a(g2, jSONObject.toString(), file, file2, r.a(System.currentTimeMillis()), new File(com.apm.insight.h.b.a())).a();
        } catch (Throwable th) {
            p.b(th);
            return false;
        }
    }

    public void b(final JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        com.apm.insight.runtime.p.b().a(new Runnable() { // from class: com.apm.insight.k.d.1
            @Override // java.lang.Runnable
            public void run() {
                String c2 = e.c();
                try {
                    jSONObject.put("upload_scene", "direct");
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                e.b(c2, jSONObject.toString());
            }
        });
    }
}
