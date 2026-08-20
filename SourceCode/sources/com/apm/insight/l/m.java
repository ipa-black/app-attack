package com.apm.insight.l;

import android.app.ActivityManager;
/* loaded from: classes.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    static final a f1012a = new b();

    /* loaded from: classes.dex */
    private static class a {
        private a() {
        }

        public long a(ActivityManager.MemoryInfo memoryInfo) {
            return 0L;
        }
    }

    /* loaded from: classes.dex */
    private static class b extends a {
        private b() {
            super();
        }

        @Override // com.apm.insight.l.m.a
        public long a(ActivityManager.MemoryInfo memoryInfo) {
            return memoryInfo.totalMem;
        }
    }

    public static long a(ActivityManager.MemoryInfo memoryInfo) {
        return f1012a.a(memoryInfo);
    }
}
