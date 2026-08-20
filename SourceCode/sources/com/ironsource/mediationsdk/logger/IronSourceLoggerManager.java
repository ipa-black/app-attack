package com.ironsource.mediationsdk.logger;

import com.ironsource.mediationsdk.logger.IronSourceLogger;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class IronSourceLoggerManager extends IronSourceLogger implements LogListener {

    /* renamed from: c  reason: collision with root package name */
    private static IronSourceLoggerManager f11206c;

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<IronSourceLogger> f11207d;

    private IronSourceLoggerManager(String str) {
        super(str);
        ArrayList<IronSourceLogger> arrayList = new ArrayList<>();
        this.f11207d = arrayList;
        arrayList.add(new a(0));
    }

    public static synchronized IronSourceLoggerManager getLogger() {
        IronSourceLoggerManager ironSourceLoggerManager;
        synchronized (IronSourceLoggerManager.class) {
            if (f11206c == null) {
                f11206c = new IronSourceLoggerManager("IronSourceLoggerManager");
            }
            ironSourceLoggerManager = f11206c;
        }
        return ironSourceLoggerManager;
    }

    public static synchronized IronSourceLoggerManager getLogger(int i) {
        IronSourceLoggerManager ironSourceLoggerManager;
        synchronized (IronSourceLoggerManager.class) {
            IronSourceLoggerManager ironSourceLoggerManager2 = f11206c;
            if (ironSourceLoggerManager2 == null) {
                f11206c = new IronSourceLoggerManager("IronSourceLoggerManager");
            } else {
                ironSourceLoggerManager2.f11202a = i;
            }
            ironSourceLoggerManager = f11206c;
        }
        return ironSourceLoggerManager;
    }

    public void addLogger(IronSourceLogger ironSourceLogger) {
        this.f11207d.add(ironSourceLogger);
    }

    @Override // com.ironsource.mediationsdk.logger.IronSourceLogger
    public synchronized void log(IronSourceLogger.IronSourceTag ironSourceTag, String str, int i) {
        if (i < this.f11202a) {
            return;
        }
        Iterator<IronSourceLogger> it = this.f11207d.iterator();
        while (it.hasNext()) {
            IronSourceLogger next = it.next();
            if (next.f11202a <= i) {
                next.log(ironSourceTag, str, i);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.logger.IronSourceLogger
    public synchronized void logException(IronSourceLogger.IronSourceTag ironSourceTag, String str, Throwable th) {
        if (th == null) {
            Iterator<IronSourceLogger> it = this.f11207d.iterator();
            while (it.hasNext()) {
                it.next().log(ironSourceTag, str, 3);
            }
            return;
        }
        Iterator<IronSourceLogger> it2 = this.f11207d.iterator();
        while (it2.hasNext()) {
            it2.next().logException(ironSourceTag, str, th);
        }
    }

    @Override // com.ironsource.mediationsdk.logger.LogListener
    public synchronized void onLog(IronSourceLogger.IronSourceTag ironSourceTag, String str, int i) {
        log(ironSourceTag, str, i);
    }

    public void setLoggerDebugLevel(String str, int i) {
        IronSourceLogger ironSourceLogger;
        if (str == null) {
            return;
        }
        Iterator<IronSourceLogger> it = this.f11207d.iterator();
        while (true) {
            if (!it.hasNext()) {
                ironSourceLogger = null;
                break;
            }
            ironSourceLogger = it.next();
            if (ironSourceLogger.f11203b.equals(str)) {
                break;
            }
        }
        if (ironSourceLogger == null) {
            log(IronSourceLogger.IronSourceTag.NATIVE, "Failed to find logger:setLoggerDebugLevel(loggerName:" + str + " ,debugLevel:" + i + ")", 0);
        } else if (i < 0 || i > 3) {
            this.f11207d.remove(ironSourceLogger);
        } else {
            log(IronSourceLogger.IronSourceTag.NATIVE, "setLoggerDebugLevel(loggerName:" + str + " ,debugLevel:" + i + ")", 0);
            ironSourceLogger.setDebugLevel(i);
        }
    }
}
