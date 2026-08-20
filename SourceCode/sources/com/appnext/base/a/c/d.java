package com.appnext.base.a.c;

import android.content.ContentValues;
import android.database.Cursor;
import com.appnext.base.a.c.e;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.ListIterator;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class d extends e<com.appnext.base.a.b.b> {
    public static final String COLUMN_TYPE = "t";
    public static final String ec = "pk";
    public static final String ed = "cd";
    public static final String ee = "cdd";
    public static final String ef = "cdt";
    private String[] dU = {ec, COLUMN_TYPE, ed, ee, ef};
    private String eg;

    public d(String str) {
        this.eg = str;
    }

    public final long a(com.appnext.base.a.b.b bVar) {
        return e.a(this.eg, c(bVar));
    }

    public final long a(JSONArray jSONArray) {
        return super.b(this.eg, jSONArray);
    }

    public final long b(com.appnext.base.a.b.b bVar) {
        u(bVar.getType());
        return e.a(this.eg, c(bVar));
    }

    public final void u(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(e.a.Equals);
        super.a(this.eg, new String[]{COLUMN_TYPE}, new String[]{str}, arrayList);
    }

    public final int b(String str, long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(e.a.Equals);
        arrayList.add(e.a.LessThan);
        return super.a(this.eg, new String[]{COLUMN_TYPE, ee}, new String[]{str, String.valueOf(j)}, arrayList);
    }

    public final void delete() {
        super.delete(this.eg);
    }

    public final List<com.appnext.base.a.b.b> as() {
        return super.y(this.eg);
    }

    public final List<com.appnext.base.a.b.b> v(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(e.a.Equals);
        return super.a(this.eg, new String[]{COLUMN_TYPE}, new String[]{str}, null, arrayList);
    }

    public final List<com.appnext.base.a.b.b> w(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(e.a.Equals);
        return super.a(this.eg, new String[]{ec}, new String[]{str}, null, arrayList);
    }

    public final List<com.appnext.base.a.b.b> c(String str, long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(e.a.Equals);
        arrayList.add(e.a.GreaterThan);
        return super.a(this.eg, new String[]{COLUMN_TYPE, ee}, new String[]{str, String.valueOf(j)}, null, arrayList);
    }

    public final List<com.appnext.base.a.b.b> x(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(e.a.Equals);
        List<com.appnext.base.a.b.b> a2 = super.a(this.eg, new String[]{COLUMN_TYPE}, new String[]{str}, "cdd DESC", arrayList);
        if (a2 == null || a2.isEmpty()) {
            return null;
        }
        ListIterator<com.appnext.base.a.b.b> listIterator = a2.listIterator();
        listIterator.next();
        while (listIterator.hasNext()) {
            listIterator.next();
            listIterator.remove();
        }
        return a2;
    }

    private static ContentValues c(com.appnext.base.a.b.b bVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(ec, bVar.ah());
        contentValues.put(COLUMN_TYPE, bVar.getType());
        contentValues.put(ed, bVar.ai());
        contentValues.put(ef, bVar.getDataType());
        return contentValues;
    }

    @Override // com.appnext.base.a.c.e
    protected final String[] at() {
        return this.dU;
    }

    protected static com.appnext.base.a.b.b d(Cursor cursor) {
        String string = cursor.getString(cursor.getColumnIndex(ec));
        String string2 = cursor.getString(cursor.getColumnIndex(COLUMN_TYPE));
        String string3 = cursor.getString(cursor.getColumnIndex(ed));
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(cursor.getLong(cursor.getColumnIndex(ee)) * 1000);
        return new com.appnext.base.a.b.b(string, string2, string3, calendar.getTime(), cursor.getString(cursor.getColumnIndex(ef)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String b(String str, boolean z) {
        StringBuilder sb = new StringBuilder("create table ");
        sb.append(str);
        sb.append(" ( pk text not null, t text not null , cd text not null, cdd text default (strftime('%s','now')), cdt text)");
        return sb.toString();
    }

    private static String a(boolean z) {
        if (z) {
            return "primary key";
        }
        return "";
    }

    @Override // com.appnext.base.a.c.e
    protected final /* synthetic */ com.appnext.base.a.b.b b(Cursor cursor) {
        String string = cursor.getString(cursor.getColumnIndex(ec));
        String string2 = cursor.getString(cursor.getColumnIndex(COLUMN_TYPE));
        String string3 = cursor.getString(cursor.getColumnIndex(ed));
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(cursor.getLong(cursor.getColumnIndex(ee)) * 1000);
        return new com.appnext.base.a.b.b(string, string2, string3, calendar.getTime(), cursor.getString(cursor.getColumnIndex(ef)));
    }
}
