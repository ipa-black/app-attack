package com.applovin.impl.mediation.debugger.ui.d;

import android.content.Context;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.utils.g;
import com.applovin.sdk.R;
/* loaded from: classes.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    protected b f5114b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f5115c;

    /* renamed from: d  reason: collision with root package name */
    protected SpannedString f5116d;

    /* renamed from: e  reason: collision with root package name */
    protected SpannedString f5117e;

    /* renamed from: f  reason: collision with root package name */
    protected String f5118f;

    /* renamed from: g  reason: collision with root package name */
    protected String f5119g;

    /* renamed from: h  reason: collision with root package name */
    protected int f5120h;
    protected int i;
    protected int j;
    protected int k;
    protected int l;
    protected int m;
    protected boolean n;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final b f5121a;

        /* renamed from: b  reason: collision with root package name */
        boolean f5122b;

        /* renamed from: c  reason: collision with root package name */
        SpannedString f5123c;

        /* renamed from: d  reason: collision with root package name */
        SpannedString f5124d;

        /* renamed from: e  reason: collision with root package name */
        String f5125e;

        /* renamed from: f  reason: collision with root package name */
        String f5126f;

        /* renamed from: g  reason: collision with root package name */
        int f5127g = 0;

        /* renamed from: h  reason: collision with root package name */
        int f5128h = 0;
        int i = ViewCompat.MEASURED_STATE_MASK;
        int j = ViewCompat.MEASURED_STATE_MASK;
        int k = 0;
        int l = 0;
        boolean m;

        public a(b bVar) {
            this.f5121a = bVar;
        }

        public a a(int i) {
            this.f5128h = i;
            return this;
        }

        public a a(Context context) {
            this.f5128h = R.drawable.applovin_ic_disclosure_arrow;
            this.l = g.a(R.color.applovin_sdk_disclosureButtonColor, context);
            return this;
        }

        public a a(SpannedString spannedString) {
            this.f5123c = spannedString;
            return this;
        }

        public a a(String str) {
            return a(!TextUtils.isEmpty(str) ? new SpannedString(str) : null);
        }

        public a a(boolean z) {
            this.f5122b = z;
            return this;
        }

        public c a() {
            return new c(this);
        }

        public a b(int i) {
            this.j = i;
            return this;
        }

        public a b(SpannedString spannedString) {
            this.f5124d = spannedString;
            return this;
        }

        public a b(String str) {
            return b(!TextUtils.isEmpty(str) ? new SpannedString(str) : null);
        }

        public a b(boolean z) {
            this.m = z;
            return this;
        }

        public a c(int i) {
            this.l = i;
            return this;
        }

        public a c(String str) {
            this.f5125e = str;
            return this;
        }

        public a d(String str) {
            this.f5126f = str;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public enum b {
        SECTION(0),
        SECTION_CENTERED(1),
        SIMPLE(2),
        DETAIL(3),
        RIGHT_DETAIL(4),
        COUNT(5);
        

        /* renamed from: g  reason: collision with root package name */
        private final int f5136g;

        b(int i) {
            this.f5136g = i;
        }

        public int a() {
            return this.f5136g;
        }

        public int b() {
            if (this == SECTION) {
                return R.layout.mediation_debugger_list_section;
            }
            if (this == SECTION_CENTERED) {
                return R.layout.mediation_debugger_list_section_centered;
            }
            if (this == SIMPLE) {
                return 17367043;
            }
            return this == DETAIL ? R.layout.applovin_debugger_list_item_detail : R.layout.mediation_debugger_list_item_right_detail;
        }
    }

    private c(a aVar) {
        this.f5120h = 0;
        this.i = 0;
        this.j = ViewCompat.MEASURED_STATE_MASK;
        this.k = ViewCompat.MEASURED_STATE_MASK;
        this.l = 0;
        this.m = 0;
        this.f5114b = aVar.f5121a;
        this.f5115c = aVar.f5122b;
        this.f5116d = aVar.f5123c;
        this.f5117e = aVar.f5124d;
        this.f5118f = aVar.f5125e;
        this.f5119g = aVar.f5126f;
        this.f5120h = aVar.f5127g;
        this.i = aVar.f5128h;
        this.j = aVar.i;
        this.k = aVar.j;
        this.l = aVar.k;
        this.m = aVar.l;
        this.n = aVar.m;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(b bVar) {
        this.f5120h = 0;
        this.i = 0;
        this.j = ViewCompat.MEASURED_STATE_MASK;
        this.k = ViewCompat.MEASURED_STATE_MASK;
        this.l = 0;
        this.m = 0;
        this.f5114b = bVar;
    }

    public static a a(b bVar) {
        return new a(bVar);
    }

    public static int h() {
        return b.COUNT.a();
    }

    public static a p() {
        return a(b.RIGHT_DETAIL);
    }

    public int a() {
        return this.i;
    }

    public int b() {
        return this.m;
    }

    public boolean c() {
        return this.f5115c;
    }

    public int e() {
        return this.k;
    }

    public int g() {
        return this.f5120h;
    }

    public int i() {
        return this.f5114b.a();
    }

    public SpannedString i_() {
        return this.f5117e;
    }

    public int j() {
        return this.f5114b.b();
    }

    public boolean j_() {
        return this.n;
    }

    public SpannedString k() {
        return this.f5116d;
    }

    public String l() {
        return this.f5118f;
    }

    public String m() {
        return this.f5119g;
    }

    public int n() {
        return this.j;
    }

    public int o() {
        return this.l;
    }
}
