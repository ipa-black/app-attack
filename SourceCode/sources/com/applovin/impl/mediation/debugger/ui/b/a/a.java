package com.applovin.impl.mediation.debugger.ui.b.a;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.applovin.impl.mediation.debugger.b.c.b;
import com.applovin.impl.mediation.debugger.ui.d.c;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.g;
import com.applovin.sdk.R;
/* loaded from: classes.dex */
public class a extends c {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.mediation.debugger.b.c.b f5060a;
    private final Context o;

    public a(com.applovin.impl.mediation.debugger.b.c.b bVar, Context context) {
        super(c.b.DETAIL);
        this.f5060a = bVar;
        this.o = context;
        this.f5116d = q();
        this.f5117e = r();
    }

    private SpannedString q() {
        return StringUtils.createSpannedString(this.f5060a.i(), c() ? ViewCompat.MEASURED_STATE_MASK : -7829368, 18, 1);
    }

    private SpannedString r() {
        if (c()) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) s());
            spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
            spannableStringBuilder.append((CharSequence) t());
            if (this.f5060a.a() == b.a.INVALID_INTEGRATION) {
                spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
                spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString("Invalid Integration", SupportMenu.CATEGORY_MASK));
            }
            return new SpannedString(spannableStringBuilder);
        }
        return null;
    }

    private SpannedString s() {
        if (this.f5060a.d()) {
            if (TextUtils.isEmpty(this.f5060a.j())) {
                return StringUtils.createListItemDetailSpannedString(this.f5060a.e() ? "Retrieving SDK Version..." : "SDK Found", ViewCompat.MEASURED_STATE_MASK);
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("SDK\t\t\t\t\t  ", -7829368));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.f5060a.j(), ViewCompat.MEASURED_STATE_MASK));
            return new SpannedString(spannableStringBuilder);
        }
        return StringUtils.createListItemDetailSpannedString("SDK Missing", SupportMenu.CATEGORY_MASK);
    }

    private SpannedString t() {
        String str;
        int i;
        if (this.f5060a.e()) {
            boolean isEmpty = TextUtils.isEmpty(this.f5060a.k());
            i = ViewCompat.MEASURED_STATE_MASK;
            if (!isEmpty) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("ADAPTER  ", -7829368));
                spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.f5060a.k(), ViewCompat.MEASURED_STATE_MASK));
                if (this.f5060a.f()) {
                    spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSubSpannedString("  LATEST  ", Color.rgb(255, 127, 0)));
                    spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.f5060a.l(), ViewCompat.MEASURED_STATE_MASK));
                }
                return new SpannedString(spannableStringBuilder);
            }
            str = "Adapter Found";
        } else {
            str = "Adapter Missing";
            i = SupportMenu.CATEGORY_MASK;
        }
        return StringUtils.createListItemDetailSpannedString(str, i);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.c
    public int a() {
        return c() ? R.drawable.applovin_ic_disclosure_arrow : super.g();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.c
    public int b() {
        return g.a(R.color.applovin_sdk_disclosureButtonColor, this.o);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.c
    public boolean c() {
        return this.f5060a.a() != b.a.MISSING;
    }

    public com.applovin.impl.mediation.debugger.b.c.b f() {
        return this.f5060a;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.c
    public int g() {
        int o = this.f5060a.o();
        return o > 0 ? o : R.drawable.applovin_ic_mediation_placeholder;
    }

    public String toString() {
        return "MediatedNetworkListItemViewModel{text=" + ((Object) this.f5116d) + ", detailText=" + ((Object) this.f5117e) + ", network=" + this.f5060a + "}";
    }
}
