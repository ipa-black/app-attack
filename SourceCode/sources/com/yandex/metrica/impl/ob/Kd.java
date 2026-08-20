package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public abstract class Kd {

    /* renamed from: e  reason: collision with root package name */
    private static final Rd f13365e = new Rd("UNDEFINED_", null);

    /* renamed from: a  reason: collision with root package name */
    protected final String f13366a;

    /* renamed from: b  reason: collision with root package name */
    protected final SharedPreferences f13367b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Object> f13368c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private boolean f13369d = false;

    public Kd(Context context, String str) {
        this.f13366a = str;
        this.f13367b = a(context);
        new Rd(f13365e.b(), str);
    }

    private SharedPreferences a(Context context) {
        return C1422b.a(context, d());
    }

    public void b() {
        synchronized (this) {
            a();
            this.f13368c.clear();
            this.f13369d = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String c() {
        return this.f13366a;
    }

    protected abstract String d();

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public <T extends Kd> T e() {
        synchronized (this) {
            this.f13369d = true;
            this.f13368c.clear();
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public <T extends Kd> T a(String str, Object obj) {
        synchronized (this) {
            if (obj != null) {
                this.f13368c.put(str, obj);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public <T extends Kd> T a(String str) {
        synchronized (this) {
            this.f13368c.put(str, this);
        }
        return this;
    }

    private void a() {
        SharedPreferences.Editor edit = this.f13367b.edit();
        if (this.f13369d) {
            edit.clear();
            edit.apply();
            return;
        }
        for (Map.Entry<String, Object> entry : this.f13368c.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value == this) {
                edit.remove(key);
            } else if (value instanceof String) {
                edit.putString(key, (String) value);
            } else if (value instanceof Long) {
                edit.putLong(key, ((Long) value).longValue());
            } else if (value instanceof Integer) {
                edit.putInt(key, ((Integer) value).intValue());
            } else if (value instanceof Boolean) {
                edit.putBoolean(key, ((Boolean) value).booleanValue());
            } else if (value != null) {
                throw new UnsupportedOperationException();
            }
        }
        edit.apply();
    }
}
