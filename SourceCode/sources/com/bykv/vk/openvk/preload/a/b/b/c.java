package com.bykv.vk.openvk.preload.a.b.b;

import com.bykv.vk.openvk.preload.a.l;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
/* compiled from: UnsafeReflectionAccessor.java */
/* loaded from: classes2.dex */
final class c extends b {

    /* renamed from: a  reason: collision with root package name */
    private static Class f8258a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f8259b = b();

    /* renamed from: c  reason: collision with root package name */
    private final Field f8260c = c();

    @Override // com.bykv.vk.openvk.preload.a.b.b.b
    public final void a(AccessibleObject accessibleObject) {
        if (b(accessibleObject)) {
            return;
        }
        try {
            accessibleObject.setAccessible(true);
        } catch (SecurityException e2) {
            throw new l("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e2);
        }
    }

    private boolean b(AccessibleObject accessibleObject) {
        if (this.f8259b != null && this.f8260c != null) {
            try {
                f8258a.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f8259b, accessibleObject, Long.valueOf(((Long) f8258a.getMethod("objectFieldOffset", Field.class).invoke(this.f8259b, this.f8260c)).longValue()), Boolean.TRUE);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static Object b() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f8258a = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    private static Field c() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }
}
