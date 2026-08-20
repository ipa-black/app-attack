package com.bykv.vk.openvk.preload.geckox.utils;

import android.os.Process;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class FileLock {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, Integer> f8590a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final int f8591b;

    /* renamed from: c  reason: collision with root package name */
    private final String f8592c;

    private static native int nGetFD(String str) throws Exception;

    private static native void nLockFile(int i) throws Exception;

    private static native void nLockFileSegment(int i, int i2) throws Exception;

    private static native void nRelease(int i) throws Exception;

    private static native boolean nTryLock(int i) throws Exception;

    private static native void nUnlockFile(int i) throws Exception;

    static {
        System.loadLibrary("file_lock_pg");
    }

    private FileLock(String str, int i) {
        this.f8592c = str;
        this.f8591b = i;
    }

    public static FileLock a(String str) {
        try {
            int d2 = d(str);
            nLockFile(d2);
            return new FileLock(str, d2);
        } catch (Exception e2) {
            throw new RuntimeException("lock failed, file:" + str + ", pid:" + Process.myPid() + " caused by:" + e2.getMessage());
        }
    }

    public static FileLock b(String str) {
        try {
            int d2 = d(str);
            if (nTryLock(d2)) {
                return new FileLock(str, d2);
            }
            return null;
        } catch (Exception e2) {
            throw new RuntimeException("try lock failed, file:" + str + " caused by:" + e2.getMessage());
        }
    }

    public static FileLock c(String str) throws Exception {
        try {
            int d2 = d(str);
            if (!nTryLock(d2)) {
                new FileLock(str, d2).b();
                return null;
            }
            return new FileLock(str, d2);
        } catch (Exception e2) {
            throw new RuntimeException("try lock failed, file:" + str + " caused by:" + e2.getMessage());
        }
    }

    public static FileLock a(String str, int i) {
        try {
            int d2 = d(str);
            nLockFileSegment(d2, i);
            return new FileLock(str, d2);
        } catch (Exception e2) {
            throw new RuntimeException("lock segment failed, file:" + str + " caused by:" + e2.getMessage());
        }
    }

    private static int d(String str) throws Exception {
        Integer num;
        Map<String, Integer> map = f8590a;
        synchronized (map) {
            num = map.get(str);
            if (num == null) {
                new File(str).getParentFile().mkdirs();
                num = Integer.valueOf(nGetFD(str));
                map.put(str, num);
            }
        }
        return num.intValue();
    }

    public final void a() {
        try {
            nUnlockFile(this.f8591b);
        } catch (Exception unused) {
            throw new RuntimeException("release lock failed，path:" + this.f8592c);
        }
    }

    public final void b() {
        Integer remove;
        Map<String, Integer> map = f8590a;
        synchronized (map) {
            remove = map.remove(this.f8592c);
        }
        try {
            nRelease(remove.intValue());
        } catch (Exception e2) {
            throw new RuntimeException("release lock failed, file:" + this.f8592c + " caused by:" + e2.getMessage());
        }
    }
}
