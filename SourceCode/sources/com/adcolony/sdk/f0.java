package com.adcolony.sdk;

import com.appodeal.ads.modules.common.internal.LogConstants;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.apache.ldap.server.db.gui.FilterDialog;
/* loaded from: classes.dex */
class f0 {

    /* renamed from: e  reason: collision with root package name */
    static final SimpleDateFormat f303e = new SimpleDateFormat("yyyyMMdd'T'HHmmss.SSSZ", Locale.US);

    /* renamed from: a  reason: collision with root package name */
    private Date f304a;

    /* renamed from: b  reason: collision with root package name */
    private int f305b;

    /* renamed from: c  reason: collision with root package name */
    private b0 f306c;

    /* renamed from: d  reason: collision with root package name */
    protected String f307d;

    /* loaded from: classes.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        protected f0 f308a = new f0();

        /* JADX INFO: Access modifiers changed from: package-private */
        public a a(int i) {
            this.f308a.f305b = i;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a a(b0 b0Var) {
            this.f308a.f306c = b0Var;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a a(String str) {
            this.f308a.f307d = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public f0 a() {
            if (this.f308a.f304a == null) {
                this.f308a.f304a = new Date(System.currentTimeMillis());
            }
            return this.f308a;
        }
    }

    f0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        int i = this.f305b;
        if (i != -1) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return "UNKNOWN LOG LEVEL";
                        }
                        return FilterDialog.DEBUG_MODE;
                    }
                    return LogConstants.EVENT_INFO;
                }
                return "Warn";
            }
            return LogConstants.EVENT_ERROR;
        }
        return "Fatal";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return this.f307d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        return f303e.format(this.f304a);
    }

    public String toString() {
        return d() + " " + b() + "/" + a().a() + ": " + c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0 a() {
        return this.f306c;
    }
}
