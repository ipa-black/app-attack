package com.pgl.ssdk.ces.out;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.pgl.ssdk.AbstractC1372c;
import com.pgl.ssdk.C1389u;
import com.pgl.ssdk.C1390v;
import com.pgl.ssdk.S;
import com.pgl.ssdk.ces.a;
import com.pgl.ssdk.ces.b;
import com.pgl.ssdk.ces.c;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class PglSSManager {
    public static final int INIT_STATUS_FAIL_CONTEXT_NULL = 4;
    public static final int INIT_STATUS_FAIL_SO_LOADFAIL = 3;
    public static final int INIT_STATUS_FAIL_SO_MISSING = 2;
    public static final int INIT_STATUS_OK = 0;
    public static final int INIT_STATUS_UNINITIALIZE = 1;

    /* renamed from: c  reason: collision with root package name */
    private static volatile PglSSManager f12220c;

    /* renamed from: a  reason: collision with root package name */
    private final c f12221a;

    /* renamed from: b  reason: collision with root package name */
    private volatile int f12222b = 0;

    private PglSSManager(Context context, PglSSConfig pglSSConfig) {
        this.f12221a = c.a(context, pglSSConfig.getAppId(), pglSSConfig.getOVRegionType(), pglSSConfig.getCollectMode(), pglSSConfig.getAdSdkVersionCode());
    }

    public static int getInitStatus() {
        return c.f();
    }

    public static PglSSManager getInstance() {
        return f12220c;
    }

    public static String getLoadError() {
        if (c.h() != null) {
            return c.h().f12181b;
        }
        return null;
    }

    @DungeonFlag
    public static PglSSManager init(Context context, PglSSConfig pglSSConfig, String str, String str2, String str3, String str4) {
        if (context == null && pglSSConfig == null) {
            return null;
        }
        if (f12220c == null) {
            synchronized (PglSSManager.class) {
                if (f12220c == null) {
                    f12220c = new PglSSManager(context, pglSSConfig);
                    if (c.f() == 0) {
                        f12220c.f12221a.a(str, str3, str2, str4);
                    }
                }
            }
        }
        return f12220c;
    }

    public void checkEventVirtual(MotionEvent motionEvent) {
        if (c.f() == 0) {
            C1389u.a(motionEvent, this.f12221a.f12198a);
        }
    }

    public Map<String, String> getFeatureHash(String str, byte[] bArr) {
        if (c.f() == 0) {
            c cVar = this.f12221a;
            cVar.getClass();
            HashMap hashMap = new HashMap();
            if (str == null) {
                str = "";
            }
            if (bArr == null) {
                bArr = new byte[0];
            }
            String str2 = (String) a.meta(224, cVar.f12198a, new Object[]{str, bArr});
            if (!TextUtils.isEmpty(str2)) {
                hashMap.put("X-Armors", str2);
            }
            return hashMap;
        }
        return null;
    }

    public String getSofChara() {
        if (c.f() == 0) {
            this.f12221a.getClass();
            return C1390v.c();
        }
        return null;
    }

    public String getToken() {
        if (c.f() == 0) {
            this.f12221a.getClass();
            return S.b();
        }
        return null;
    }

    public void reportNow(String str) {
        if (c.f() == 0) {
            if (this.f12222b % 5 == 0) {
                this.f12221a.a(str);
            }
            this.f12222b++;
            this.f12221a.c();
        }
    }

    public void setCnReportUrl(String str, boolean z) {
        if (c.f() == 0) {
            c cVar = this.f12221a;
            cVar.getClass();
            if (str != null && !str.equals(b.f12195a) && z) {
                cVar.a("updateUrl");
            }
            b.f12195a = str;
        }
    }

    public void setCnTokenUrl(String str, boolean z) {
        if (c.f() == 0) {
            this.f12221a.getClass();
            if (str != null && !str.equals(b.f12196b) && z) {
                S.c();
            }
            b.f12196b = str;
        }
    }

    public void setCustomInfo(Map<String, Object> map) {
        if (c.f() == 0) {
            this.f12221a.a(map);
            AbstractC1372c.a(new Runnable() { // from class: com.pgl.ssdk.ces.out.PglSSManager.1
                @Override // java.lang.Runnable
                public void run() {
                    PglSSManager.this.f12221a.b();
                }
            });
        }
    }

    public void setDeviceId(String str) {
        if (c.f() == 0) {
            this.f12221a.b(str);
        }
    }

    public void setGaid(String str) {
        if (c.f() == 0) {
            this.f12221a.c(str);
        }
    }

    public void setOaid(String str) {
        if (c.f() == 0) {
            this.f12221a.d(str);
        }
    }
}
