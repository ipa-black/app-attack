package h;

import android.content.Context;
import android.database.sqlite.SQLiteOpenHelper;
import h.a;
import java.util.List;
/* loaded from: classes5.dex */
public class b implements g.a {

    /* renamed from: a  reason: collision with root package name */
    public final SQLiteOpenHelper f16349a;

    public b(Context context) {
        this.f16349a = new a(context);
    }

    @Override // g.a
    public List<b.a> a() {
        return a.C0364a.a(this.f16349a, (Integer) null);
    }

    @Override // g.a
    public List<b.a> a(int i) {
        return a.C0364a.a(this.f16349a, Integer.valueOf(i));
    }

    @Override // g.a
    public void a(List<b.a> list) {
        a.C0364a.a(this.f16349a, list);
    }

    @Override // g.a
    public boolean a(b.a aVar) {
        return a.C0364a.a(this.f16349a, aVar);
    }

    public void b() {
        a.C0364a.a(this.f16349a);
    }

    @Override // g.a
    public void b(List<b.a> list) {
        a.C0364a.c(this.f16349a, list);
    }

    @Override // g.a
    public void c(List<b.a> list) {
        a.C0364a.b(this.f16349a, list);
    }
}
