package com.yandex.metrica.networktasks.api;
/* loaded from: classes5.dex */
class c {

    /* renamed from: a  reason: collision with root package name */
    final NetworkTask f16269a;

    /* renamed from: b  reason: collision with root package name */
    private final String f16270b;

    private c(NetworkTask networkTask) {
        this.f16269a = networkTask;
        this.f16270b = networkTask.description();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return this.f16270b.equals(((c) obj).f16270b);
    }

    public int hashCode() {
        return this.f16270b.hashCode();
    }
}
