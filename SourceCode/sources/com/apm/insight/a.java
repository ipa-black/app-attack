package com.apm.insight;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Map<CrashType, List<AttachUserData>> f685a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private Map<CrashType, List<AttachUserData>> f686b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private Map<String, String> f687c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private ICrashFilter f688d = null;

    private void c(CrashType crashType, AttachUserData attachUserData) {
        List<AttachUserData> list;
        if (this.f685a.get(crashType) == null) {
            list = new ArrayList<>();
            this.f685a.put(crashType, list);
        } else {
            list = this.f685a.get(crashType);
        }
        list.add(attachUserData);
    }

    private void d(CrashType crashType, AttachUserData attachUserData) {
        List<AttachUserData> list;
        if (this.f686b.get(crashType) == null) {
            list = new ArrayList<>();
            this.f686b.put(crashType, list);
        } else {
            list = this.f686b.get(crashType);
        }
        list.add(attachUserData);
    }

    private void e(CrashType crashType, AttachUserData attachUserData) {
        List<AttachUserData> list = this.f685a.get(crashType);
        if (list != null) {
            list.remove(attachUserData);
        }
    }

    private void f(CrashType crashType, AttachUserData attachUserData) {
        List<AttachUserData> list = this.f686b.get(crashType);
        if (list != null) {
            list.remove(attachUserData);
        }
    }

    public List<AttachUserData> a(CrashType crashType) {
        return this.f685a.get(crashType);
    }

    public Map<String, String> a() {
        return this.f687c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AttachUserData attachUserData, CrashType crashType) {
        if (crashType == CrashType.ALL) {
            c(CrashType.LAUNCH, attachUserData);
            c(CrashType.JAVA, attachUserData);
            c(CrashType.CUSTOM_JAVA, attachUserData);
            c(CrashType.NATIVE, attachUserData);
            c(CrashType.ANR, attachUserData);
            crashType = CrashType.DART;
        }
        c(crashType, attachUserData);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(CrashType crashType, AttachUserData attachUserData) {
        if (crashType == CrashType.ALL) {
            e(CrashType.LAUNCH, attachUserData);
            e(CrashType.JAVA, attachUserData);
            e(CrashType.CUSTOM_JAVA, attachUserData);
            e(CrashType.NATIVE, attachUserData);
            e(CrashType.ANR, attachUserData);
            crashType = CrashType.DART;
        }
        e(crashType, attachUserData);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ICrashFilter iCrashFilter) {
        this.f688d = iCrashFilter;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Map<? extends String, ? extends String> map) {
        this.f687c.putAll(map);
    }

    public ICrashFilter b() {
        return this.f688d;
    }

    public List<AttachUserData> b(CrashType crashType) {
        return this.f686b.get(crashType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(AttachUserData attachUserData, CrashType crashType) {
        if (crashType == CrashType.ALL) {
            d(CrashType.LAUNCH, attachUserData);
            d(CrashType.JAVA, attachUserData);
            d(CrashType.CUSTOM_JAVA, attachUserData);
            d(CrashType.NATIVE, attachUserData);
            d(CrashType.ANR, attachUserData);
            crashType = CrashType.DART;
        }
        d(crashType, attachUserData);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(CrashType crashType, AttachUserData attachUserData) {
        if (crashType == CrashType.ALL) {
            f(CrashType.LAUNCH, attachUserData);
            f(CrashType.JAVA, attachUserData);
            f(CrashType.CUSTOM_JAVA, attachUserData);
            f(CrashType.NATIVE, attachUserData);
            f(CrashType.ANR, attachUserData);
            crashType = CrashType.DART;
        }
        f(crashType, attachUserData);
    }
}
