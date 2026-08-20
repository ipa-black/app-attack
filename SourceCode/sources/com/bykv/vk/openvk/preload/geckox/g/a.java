package com.bykv.vk.openvk.preload.geckox.g;

import com.bykv.vk.openvk.preload.geckox.utils.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* compiled from: ChannelUpdateLock.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, Lock> f8539a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private FileLock f8540b;

    /* renamed from: c  reason: collision with root package name */
    private String f8541c;

    private a(String str, FileLock fileLock) {
        this.f8541c = str;
        this.f8540b = fileLock;
    }

    public static a a(String str) throws Exception {
        Map<String, Lock> map = f8539a;
        synchronized (map) {
            Lock lock = map.get(str);
            if (lock == null) {
                lock = new ReentrantLock();
                map.put(str, lock);
            }
            if (lock.tryLock()) {
                try {
                    FileLock c2 = FileLock.c(str);
                    if (c2 == null) {
                        lock.unlock();
                        return null;
                    }
                    return new a(str, c2);
                } catch (Exception e2) {
                    lock.lock();
                    com.bykv.vk.openvk.preload.geckox.utils.b.a(new RuntimeException(e2));
                    return null;
                }
            }
            return null;
        }
    }

    public final void a() {
        Map<String, Lock> map = f8539a;
        synchronized (map) {
            this.f8540b.a();
            this.f8540b.b();
            map.get(this.f8541c).unlock();
        }
    }
}
