package com.yandex.metrica.impl.ob;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes5.dex */
public class Fd implements InterfaceC1952wd {

    /* renamed from: a  reason: collision with root package name */
    private Set<String> f12937a;

    public Fd(List<Bd> list) {
        if (list == null) {
            this.f12937a = new HashSet();
            return;
        }
        this.f12937a = new HashSet(list.size());
        for (Bd bd : list) {
            if (bd.f12698b) {
                this.f12937a.add(bd.f12697a);
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1952wd
    public boolean a(String str) {
        return this.f12937a.contains(str);
    }

    public String toString() {
        return "StartupBasedPermissionStrategy{mEnabledPermissions=" + this.f12937a + '}';
    }
}
