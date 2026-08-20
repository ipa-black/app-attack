package com.appodeal.ads.utils;

import android.content.Context;
import android.graphics.Color;
import android.text.Html;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.appodeal.ads.y0;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class h extends ArrayAdapter<k> {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ boolean f7772d = true;

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f7773a;

    /* renamed from: b  reason: collision with root package name */
    public final int f7774b;

    /* renamed from: c  reason: collision with root package name */
    public final a f7775c;

    /* loaded from: classes2.dex */
    public class a extends Filter {
        public a() {
        }

        @Override // android.widget.Filter
        public final Filter.FilterResults performFiltering(CharSequence charSequence) {
            ArrayList arrayList = new ArrayList();
            if (TextUtils.isEmpty(charSequence)) {
                arrayList.addAll(h.this.f7773a);
            } else {
                Iterator it = h.this.f7773a.iterator();
                while (it.hasNext()) {
                    k kVar = (k) it.next();
                    if (kVar.f7778b.toLowerCase().startsWith(charSequence.toString().toLowerCase())) {
                        arrayList.add(kVar);
                    }
                }
            }
            Filter.FilterResults filterResults = new Filter.FilterResults();
            filterResults.count = arrayList.size();
            filterResults.values = arrayList;
            return filterResults;
        }

        @Override // android.widget.Filter
        public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            h.this.setNotifyOnChange(false);
            h.this.clear();
            h.this.setNotifyOnChange(true);
            h.this.addAll((List) filterResults.values);
        }
    }

    public h(Context context, y0 y0Var) {
        super(context, -1, y0Var);
        this.f7775c = new a();
        this.f7773a = new ArrayList(y0Var);
        this.f7774b = (int) TypedValue.applyDimension(1, 8.0f, context.getResources().getDisplayMetrics());
    }

    @Override // android.widget.ArrayAdapter, android.widget.Filterable
    public final Filter getFilter() {
        return this.f7775c;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        k item = getItem(i);
        if (f7772d || item != null) {
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
            linearLayout.setOrientation(1);
            int i2 = this.f7774b;
            linearLayout.setPadding(i2, i2, i2, i2);
            TextView textView = new TextView(getContext());
            textView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            textView.setTextSize(22.0f);
            textView.setTextColor(-1);
            textView.setText(item.f7778b);
            linearLayout.addView(textView);
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(5);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            TextView textView2 = new TextView(getContext());
            textView2.setLayoutParams(layoutParams);
            textView2.setText(Html.fromHtml("№ <b>" + item.f7777a + "</b>"));
            textView2.setTextSize(16.0f);
            textView2.setGravity(5);
            textView2.setTextColor(Color.parseColor("#B3ffffff"));
            textView2.setPadding(0, 0, this.f7774b, 0);
            linearLayout2.addView(textView2);
            TextView textView3 = new TextView(getContext());
            textView3.setLayoutParams(layoutParams);
            textView3.setText(Html.fromHtml("cid: <b>" + item.f7780d + "</b>"));
            textView3.setTextSize(16.0f);
            textView3.setTextColor(Color.parseColor("#B3ffffff"));
            textView3.setGravity(5);
            textView3.setPadding(0, 0, this.f7774b, 0);
            linearLayout2.addView(textView3);
            TextView textView4 = new TextView(getContext());
            textView4.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
            textView4.setGravity(5);
            textView4.setText(Html.fromHtml("ecpm: <b>" + new DecimalFormat("#.##").format(item.f7781e) + "</b>"));
            textView4.setTextSize(16.0f);
            textView4.setTextColor(Color.parseColor("#B3ffffff"));
            linearLayout2.addView(textView4);
            if (item.f7782f) {
                TextView textView5 = new TextView(getContext());
                textView5.setText(Html.fromHtml("<b><i>(precache)</i></b>"));
                textView5.setTextSize(16.0f);
                textView5.setGravity(5);
                textView5.setTextColor(Color.parseColor("#B3ffffff"));
                textView5.setLayoutParams(layoutParams);
                linearLayout2.addView(textView5);
                textView4.setPadding(0, 0, this.f7774b, 0);
                linearLayout.setBackgroundColor(Color.parseColor("#1A000000"));
            }
            linearLayout.addView(linearLayout2);
            return linearLayout;
        }
        throw new AssertionError();
    }
}
