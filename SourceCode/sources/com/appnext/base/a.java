package com.appnext.base;
/* loaded from: classes.dex */
public final class a {
    private int ds;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.appnext.base.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class EnumC0090a {
        private static final /* synthetic */ int[] $VALUES$47a19cef = {1, 2, 3};
        public static final int Internal$1d8b5b4a = 1;
        public static final int NoInternet$1d8b5b4a = 2;
        public static final int NoPermission$1d8b5b4a = 3;

        private EnumC0090a(String str, int i) {
        }

        public static int[] W() {
            return (int[]) $VALUES$47a19cef.clone();
        }
    }

    public a(int i) {
        this.ds = i;
    }

    public final int V() {
        return this.ds;
    }
}
