package com.bytedance.sdk.component.Qhi;
/* compiled from: PermissionGroup.java */
/* loaded from: classes2.dex */
public enum Dww {
    PUBLIC,
    PROTECTED,
    PRIVATE;

    @Override // java.lang.Enum
    public String toString() {
        if (this == PRIVATE) {
            return "private";
        }
        if (this == PROTECTED) {
            return "protected";
        }
        return "public";
    }
}
