package com.applovin.impl.mediation.debugger.ui.d;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class d extends BaseAdapter implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private List<c> f5137a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private Map<Integer, Integer> f5138b = CollectionUtils.map();

    /* renamed from: c  reason: collision with root package name */
    protected Context f5139c;

    /* renamed from: d  reason: collision with root package name */
    private a f5140d;

    /* loaded from: classes.dex */
    public interface a {
        void a(com.applovin.impl.mediation.debugger.ui.d.a aVar, c cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(Context context) {
        this.f5139c = context.getApplicationContext();
    }

    private com.applovin.impl.mediation.debugger.ui.d.a e(int i) {
        for (int i2 = 0; i2 < e(); i2++) {
            Integer num = this.f5138b.get(Integer.valueOf(i2));
            if (num != null) {
                if (i <= num.intValue() + a(i2)) {
                    return new com.applovin.impl.mediation.debugger.ui.d.a(i2, i - (num.intValue() + 1));
                }
            }
        }
        return null;
    }

    protected abstract int a(int i);

    public void a(a aVar) {
        this.f5140d = aVar;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    protected abstract c b(int i);

    protected abstract List<c> c(int i);

    @Override // android.widget.Adapter
    /* renamed from: d */
    public c getItem(int i) {
        return this.f5137a.get(i);
    }

    protected abstract int e();

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f5137a.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return getItem(i).i();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        c item = getItem(i);
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(item.j(), viewGroup, false);
            bVar = new b();
            bVar.f5108a = (TextView) view.findViewById(16908308);
            bVar.f5109b = (TextView) view.findViewById(16908309);
            bVar.f5110c = (ImageView) view.findViewById(R.id.imageView);
            bVar.f5111d = (ImageView) view.findViewById(R.id.detailImageView);
            view.setTag(bVar);
            view.setOnClickListener(this);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.a(i);
        bVar.a(item);
        view.setEnabled(item.c());
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return c.h();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return getItem(i).c();
    }

    public void n() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.debugger.ui.d.d.1
            @Override // java.lang.Runnable
            public void run() {
                d.this.notifyDataSetChanged();
            }
        });
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        int i;
        super.notifyDataSetChanged();
        this.f5137a = new ArrayList();
        int e2 = e();
        this.f5138b = CollectionUtils.map(e2);
        c o = o();
        if (o != null) {
            this.f5137a.add(o);
            i = 1;
        } else {
            i = 0;
        }
        for (int i2 = 0; i2 < e2; i2++) {
            int a2 = a(i2);
            if (a2 != 0) {
                this.f5137a.add(b(i2));
                this.f5137a.addAll(c(i2));
                this.f5138b.put(Integer.valueOf(i2), Integer.valueOf(i));
                i += a2 + 1;
            }
        }
        this.f5137a.add(new e(""));
    }

    protected c o() {
        return null;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        b bVar = (b) view.getTag();
        c b2 = bVar.b();
        com.applovin.impl.mediation.debugger.ui.d.a e2 = e(bVar.a());
        a aVar = this.f5140d;
        if (aVar == null || e2 == null) {
            return;
        }
        aVar.a(e2, b2);
    }
}
