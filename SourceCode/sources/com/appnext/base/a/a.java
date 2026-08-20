package com.appnext.base.a;

import com.appnext.base.a.c.c;
/* loaded from: classes.dex */
public class a {
    private static volatile a dw;
    private com.appnext.base.a.c.a dt = new com.appnext.base.a.c.a();
    private com.appnext.base.a.c.b du = new com.appnext.base.a.c.b();
    private c dv = new c();

    public static a X() {
        if (dw == null) {
            synchronized (a.class) {
                if (dw == null) {
                    dw = new a();
                }
            }
        }
        return dw;
    }

    private a() {
    }

    private void Y() {
        this.dt = new com.appnext.base.a.c.a();
        this.du = new com.appnext.base.a.c.b();
        this.dv = new c();
    }

    public final com.appnext.base.a.c.a Z() {
        return this.dt;
    }

    public final com.appnext.base.a.c.b aa() {
        return this.du;
    }

    public final c ab() {
        return this.dv;
    }
}
