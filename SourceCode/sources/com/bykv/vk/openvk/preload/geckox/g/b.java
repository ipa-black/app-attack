package com.bykv.vk.openvk.preload.geckox.g;

import com.bykv.vk.openvk.preload.geckox.utils.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* compiled from: SelectChannelVersionLock.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, Lock> f8542a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static ReentrantLock f8543b = new ReentrantLock();

    /* renamed from: c  reason: collision with root package name */
    private String f8544c;

    /* renamed from: d  reason: collision with root package name */
    private FileLock f8545d;

    private b(String str, FileLock fileLock) {
        this.f8544c = str;
        this.f8545d = fileLock;
    }

    public static b a(String str) throws Exception {
        f8543b.lock();
        try {
            FileLock a2 = FileLock.a(str);
            Map<String, Lock> map = f8542a;
            Lock lock = map.get(str);
            if (lock == null) {
                lock = new ReentrantLock();
                map.put(str, lock);
            }
            lock.lock();
            return new b(str, a2);
        } catch (Exception e2) {
            f8543b.unlock();
            throw e2;
        }
    }

    public final void a() {
        try {
            this.f8545d.a();
            this.f8545d.b();
            Lock lock = f8542a.get(this.f8544c);
            if (lock != null) {
                lock.unlock();
            }
        } finally {
            f8543b.unlock();
        }
    }
}
