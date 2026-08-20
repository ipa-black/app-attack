package com.ironsource.mediationsdk.utils;

import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.AbstractC1345b;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.TimeZone;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public final class e {

    /* renamed from: b  reason: collision with root package name */
    d f11413b;

    /* renamed from: f  reason: collision with root package name */
    private String f11417f;

    /* renamed from: g  reason: collision with root package name */
    private Timer f11418g = null;

    /* renamed from: a  reason: collision with root package name */
    public Map<String, Integer> f11412a = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private Map<String, Integer> f11415d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private Map<String, String> f11416e = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public IronSourceLoggerManager f11414c = IronSourceLoggerManager.getLogger();

    public e(String str, d dVar) {
        this.f11417f = str;
        this.f11413b = dVar;
        a();
    }

    private void a(String str, int i) {
        this.f11415d.put(str, Integer.valueOf(i));
        this.f11416e.put(str, c());
        IronSourceUtils.saveIntToSharedPrefs(ContextProvider.getInstance().getApplicationContext(), e(str), i);
        IronSourceUtils.saveStringToSharedPrefs(ContextProvider.getInstance().getApplicationContext(), f(str), c());
    }

    private int b(String str) {
        if (!c().equalsIgnoreCase(c(str))) {
            a(str);
        }
        return d(str);
    }

    private static Date b() {
        Random random = new Random();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("UTC"), Locale.US);
        gregorianCalendar.set(11, 0);
        gregorianCalendar.set(12, random.nextInt(10));
        gregorianCalendar.set(13, random.nextInt(60));
        gregorianCalendar.set(14, random.nextInt(1000));
        gregorianCalendar.add(5, 1);
        return gregorianCalendar.getTime();
    }

    private static String c() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(new Date());
    }

    private String c(String str) {
        if (this.f11416e.containsKey(str)) {
            return this.f11416e.get(str);
        }
        String stringFromSharedPrefs = IronSourceUtils.getStringFromSharedPrefs(ContextProvider.getInstance().getApplicationContext(), f(str), c());
        this.f11416e.put(str, stringFromSharedPrefs);
        return stringFromSharedPrefs;
    }

    private int d(String str) {
        if (this.f11415d.containsKey(str)) {
            return this.f11415d.get(str).intValue();
        }
        int intFromSharedPrefs = IronSourceUtils.getIntFromSharedPrefs(ContextProvider.getInstance().getApplicationContext(), e(str), 0);
        this.f11415d.put(str, Integer.valueOf(intFromSharedPrefs));
        return intFromSharedPrefs;
    }

    private static String e(String str) {
        return str + "_counter";
    }

    private static String f(String str) {
        return str + "_day";
    }

    void a() {
        Timer timer = this.f11418g;
        if (timer != null) {
            timer.cancel();
        }
        Timer timer2 = new Timer();
        this.f11418g = timer2;
        timer2.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.utils.e.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public final void run() {
                e eVar = e.this;
                synchronized (eVar) {
                    try {
                        for (String str : eVar.f11412a.keySet()) {
                            eVar.a(str);
                        }
                        eVar.f11413b.g();
                        eVar.a();
                    } catch (Exception e2) {
                        eVar.f11414c.logException(IronSourceLogger.IronSourceTag.INTERNAL, "onTimerTick", e2);
                    }
                }
            }
        }, b());
    }

    public final void a(AbstractC1345b abstractC1345b) {
        String d2;
        synchronized (this) {
            try {
                d2 = d(abstractC1345b);
            } catch (Exception e2) {
                this.f11414c.logException(IronSourceLogger.IronSourceTag.INTERNAL, "increaseShowCounter", e2);
            }
            if (this.f11412a.containsKey(d2)) {
                a(d2, b(d2) + 1);
            }
        }
    }

    void a(String str) {
        this.f11415d.put(str, 0);
        this.f11416e.put(str, c());
        IronSourceUtils.saveIntToSharedPrefs(ContextProvider.getInstance().getApplicationContext(), e(str), 0);
        IronSourceUtils.saveStringToSharedPrefs(ContextProvider.getInstance().getApplicationContext(), f(str), c());
    }

    public final boolean b(AbstractC1345b abstractC1345b) {
        synchronized (this) {
            try {
                try {
                    String d2 = d(abstractC1345b);
                    if (this.f11412a.containsKey(d2)) {
                        if (c().equalsIgnoreCase(c(d2))) {
                            return false;
                        }
                        return this.f11412a.get(d2).intValue() <= d(d2);
                    }
                    return false;
                } catch (Exception e2) {
                    this.f11414c.logException(IronSourceLogger.IronSourceTag.INTERNAL, "shouldSendCapReleasedEvent", e2);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean c(AbstractC1345b abstractC1345b) {
        synchronized (this) {
            try {
                try {
                    String d2 = d(abstractC1345b);
                    if (this.f11412a.containsKey(d2)) {
                        return this.f11412a.get(d2).intValue() <= b(d2);
                    }
                    return false;
                } catch (Exception e2) {
                    this.f11414c.logException(IronSourceLogger.IronSourceTag.INTERNAL, "isCapped", e2);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String d(AbstractC1345b abstractC1345b) {
        return this.f11417f + "_" + abstractC1345b.f11079f + "_" + abstractC1345b.j();
    }
}
