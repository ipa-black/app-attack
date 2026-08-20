package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C1840rl;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.bl  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1444bl extends C1840rl {

    /* renamed from: h  reason: collision with root package name */
    public String f14492h;
    public final int i;
    public Integer j;
    public final boolean k;
    public final b l;
    public final Float m;
    public final Float n;
    public final Float o;
    public final String p;
    public final Boolean q;
    public final Boolean r;
    public Integer s;

    /* renamed from: com.yandex.metrica.impl.ob.bl$a */
    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14493a;

        static {
            int[] iArr = new int[TextUtils.TruncateAt.values().length];
            f14493a = iArr;
            try {
                iArr[TextUtils.TruncateAt.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14493a[TextUtils.TruncateAt.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14493a[TextUtils.TruncateAt.MIDDLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14493a[TextUtils.TruncateAt.MARQUEE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.bl$b */
    /* loaded from: classes5.dex */
    public enum b {
        START("START"),
        END("END"),
        MIDDLE("MIDDLE"),
        MARQUEE("MARQUEE"),
        NONE("NONE"),
        UNKNOWN("UNKNOWN");
        

        /* renamed from: a  reason: collision with root package name */
        final String f14501a;

        b(String str) {
            this.f14501a = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1444bl(String str, String str2, C1840rl.b bVar, int i, boolean z, C1840rl.a aVar, String str3, Float f2, Float f3, Float f4, String str4, Boolean bool, Boolean bool2, boolean z2, int i2, b bVar2) {
        super(str, str2, null, i, z, C1840rl.c.VIEW, aVar);
        this.f14492h = str3;
        this.i = i2;
        this.l = bVar2;
        this.k = z2;
        this.m = f2;
        this.n = f3;
        this.o = f4;
        this.p = str4;
        this.q = bool;
        this.r = bool2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.yandex.metrica.impl.ob.C1840rl
    public C1840rl.b a(Ak ak) {
        C1840rl.b bVar = this.f15668c;
        return bVar == null ? ak.a(this.f14492h) : bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.yandex.metrica.impl.ob.C1840rl
    public boolean a() {
        return true;
    }

    @Override // com.yandex.metrica.impl.ob.C1840rl
    public String toString() {
        return "TextViewElement{mText='" + this.f14492h + "', mVisibleTextLength=" + this.i + ", mOriginalTextLength=" + this.j + ", mIsVisible=" + this.k + ", mTextShorteningType=" + this.l + ", mSizePx=" + this.m + ", mSizeDp=" + this.n + ", mSizeSp=" + this.o + ", mColor='" + this.p + "', mIsBold=" + this.q + ", mIsItalic=" + this.r + ", mRelativeTextSize=" + this.s + ", mClassName='" + this.f15666a + "', mId='" + this.f15667b + "', mParseFilterReason=" + this.f15668c + ", mDepth=" + this.f15669d + ", mListItem=" + this.f15670e + ", mViewType=" + this.f15671f + ", mClassType=" + this.f15672g + '}';
    }

    @Override // com.yandex.metrica.impl.ob.C1840rl
    JSONArray a(C1594hl c1594hl) {
        JSONArray jSONArray = new JSONArray();
        try {
            JSONObject jSONObject = new JSONObject();
            String str = this.f14492h;
            if (str.length() > c1594hl.l) {
                this.j = Integer.valueOf(this.f14492h.length());
                str = this.f14492h.substring(0, c1594hl.l);
            }
            jSONObject.put(com.appnext.base.a.c.d.COLUMN_TYPE, "TEXT");
            jSONObject.put("vl", str);
            jSONObject.put("i", a(c1594hl, str));
            jSONArray.put(jSONObject);
        } catch (Throwable unused) {
        }
        return jSONArray;
    }

    private JSONObject a(C1594hl c1594hl, String str) {
        int length;
        JSONObject jSONObject = new JSONObject();
        try {
            if (c1594hl.f14876a) {
                jSONObject.putOpt("sp", this.m).putOpt("sd", this.n).putOpt("ss", this.o);
            }
            if (c1594hl.f14877b) {
                jSONObject.put("rts", this.s);
            }
            if (c1594hl.f14879d) {
                jSONObject.putOpt("c", this.p).putOpt("ib", this.q).putOpt("ii", this.r);
            }
            if (c1594hl.f14878c) {
                jSONObject.put("vtl", this.i).put("iv", this.k).put("tst", this.l.f14501a);
            }
            Integer num = this.j;
            if (num != null) {
                length = num.intValue();
            } else {
                length = this.f14492h.length();
            }
            if (c1594hl.f14882g) {
                jSONObject.put("tl", str.length()).put("otl", length);
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
