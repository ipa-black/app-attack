package com.apm.insight.b;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.Printer;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static int f781a = 5;

    /* renamed from: b  reason: collision with root package name */
    private static b f782b;

    /* renamed from: c  reason: collision with root package name */
    private static a f783c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f784d;

    /* renamed from: e  reason: collision with root package name */
    private static Printer f785e;

    /* loaded from: classes.dex */
    public interface a {
        void a(long j);
    }

    /* loaded from: classes.dex */
    static class b implements Printer {

        /* renamed from: a  reason: collision with root package name */
        List<Printer> f786a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        List<Printer> f787b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        List<Printer> f788c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        boolean f789d = false;

        /* renamed from: e  reason: collision with root package name */
        boolean f790e = false;

        b() {
        }

        @Override // android.util.Printer
        public void println(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            long currentTimeMillis = j.f783c != null ? System.currentTimeMillis() : 0L;
            if (str.charAt(0) == '>' && this.f790e) {
                for (Printer printer : this.f788c) {
                    if (!this.f786a.contains(printer)) {
                        this.f786a.add(printer);
                    }
                }
                this.f788c.clear();
                this.f790e = false;
            }
            if (this.f786a.size() > j.f781a) {
                Log.e("LooperPrinterUtils", "wrapper contains too many printer,please check if the useless printer have been removed");
            }
            for (Printer printer2 : this.f786a) {
                if (printer2 != null) {
                    printer2.println(str);
                }
            }
            if (str.charAt(0) == '<' && this.f789d) {
                for (Printer printer3 : this.f787b) {
                    this.f786a.remove(printer3);
                    this.f788c.remove(printer3);
                }
                this.f787b.clear();
                this.f789d = false;
            }
            if (j.f783c == null || currentTimeMillis <= 0) {
                return;
            }
            j.f783c.a(System.currentTimeMillis() - currentTimeMillis);
        }
    }

    public static void a() {
        if (f784d) {
            return;
        }
        f784d = true;
        f782b = new b();
        Printer d2 = d();
        f785e = d2;
        if (d2 != null) {
            f782b.f786a.add(f785e);
        }
        if (com.apm.insight.i.r()) {
            Looper.getMainLooper().setMessageLogging(f782b);
        }
    }

    public static void a(Printer printer) {
        if (printer == null || f782b.f788c.contains(printer)) {
            return;
        }
        f782b.f788c.add(printer);
        f782b.f790e = true;
    }

    private static Printer d() {
        try {
            Field declaredField = Class.forName("android.os.Looper").getDeclaredField("mLogging");
            declaredField.setAccessible(true);
            return (Printer) declaredField.get(Looper.getMainLooper());
        } catch (Exception unused) {
            return null;
        }
    }
}
