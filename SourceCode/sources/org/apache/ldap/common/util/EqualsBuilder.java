package org.apache.ldap.common.util;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
/* loaded from: classes3.dex */
public class EqualsBuilder {
    private boolean isEquals = true;

    public static boolean reflectionEquals(Object obj, Object obj2) {
        return reflectionEquals(obj, obj2, false, null);
    }

    public static boolean reflectionEquals(Object obj, Object obj2, boolean z) {
        return reflectionEquals(obj, obj2, z, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001c, code lost:
        if (r2.isInstance(r4) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0029, code lost:
        if (r1.isInstance(r5) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002c, code lost:
        r1 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean reflectionEquals(java.lang.Object r4, java.lang.Object r5, boolean r6, java.lang.Class r7) {
        /*
            if (r4 != r5) goto L4
            r4 = 1
            return r4
        L4:
            r0 = 0
            if (r4 == 0) goto L4a
            if (r5 != 0) goto La
            goto L4a
        La:
            java.lang.Class r1 = r4.getClass()
            java.lang.Class r2 = r5.getClass()
            boolean r3 = r1.isInstance(r5)
            if (r3 == 0) goto L1f
            boolean r3 = r2.isInstance(r4)
            if (r3 != 0) goto L2d
            goto L2c
        L1f:
            boolean r3 = r2.isInstance(r4)
            if (r3 == 0) goto L4a
            boolean r3 = r1.isInstance(r5)
            if (r3 != 0) goto L2c
            goto L2d
        L2c:
            r1 = r2
        L2d:
            org.apache.ldap.common.util.EqualsBuilder r2 = new org.apache.ldap.common.util.EqualsBuilder
            r2.<init>()
            reflectionAppend(r4, r5, r1, r2, r6)     // Catch: java.lang.IllegalArgumentException -> L4a
        L35:
            java.lang.Class r3 = r1.getSuperclass()     // Catch: java.lang.IllegalArgumentException -> L4a
            if (r3 == 0) goto L45
            if (r1 == r7) goto L45
            java.lang.Class r1 = r1.getSuperclass()     // Catch: java.lang.IllegalArgumentException -> L4a
            reflectionAppend(r4, r5, r1, r2, r6)     // Catch: java.lang.IllegalArgumentException -> L4a
            goto L35
        L45:
            boolean r4 = r2.isEquals()
            return r4
        L4a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.ldap.common.util.EqualsBuilder.reflectionEquals(java.lang.Object, java.lang.Object, boolean, java.lang.Class):boolean");
    }

    private static void reflectionAppend(Object obj, Object obj2, Class cls, EqualsBuilder equalsBuilder, boolean z) {
        Field[] declaredFields = cls.getDeclaredFields();
        AccessibleObject.setAccessible(declaredFields, true);
        for (int i = 0; i < declaredFields.length && equalsBuilder.isEquals; i++) {
            Field field = declaredFields[i];
            if (field.getName().indexOf(36) == -1 && ((z || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()))) {
                try {
                    equalsBuilder.append(field.get(obj), field.get(obj2));
                } catch (IllegalAccessException unused) {
                    throw new InternalError("Unexpected IllegalAccessException");
                }
            }
        }
    }

    public EqualsBuilder appendSuper(boolean z) {
        if (this.isEquals) {
            this.isEquals = z;
            return this;
        }
        return this;
    }

    public EqualsBuilder append(Object obj, Object obj2) {
        if (this.isEquals && obj != obj2) {
            if (obj == null || obj2 == null) {
                setEquals(false);
                return this;
            }
            if (!obj.getClass().isArray()) {
                this.isEquals = obj.equals(obj2);
            } else if (obj.getClass() != obj2.getClass()) {
                setEquals(false);
            } else if (obj instanceof long[]) {
                append((long[]) obj, (long[]) obj2);
            } else if (obj instanceof int[]) {
                append((int[]) obj, (int[]) obj2);
            } else if (obj instanceof short[]) {
                append((short[]) obj, (short[]) obj2);
            } else if (obj instanceof char[]) {
                append((char[]) obj, (char[]) obj2);
            } else if (obj instanceof byte[]) {
                append((byte[]) obj, (byte[]) obj2);
            } else if (obj instanceof double[]) {
                append((double[]) obj, (double[]) obj2);
            } else if (obj instanceof float[]) {
                append((float[]) obj, (float[]) obj2);
            } else if (obj instanceof boolean[]) {
                append((boolean[]) obj, (boolean[]) obj2);
            } else {
                append((Object[]) obj, (Object[]) obj2);
            }
            return this;
        }
        return this;
    }

    public EqualsBuilder append(long j, long j2) {
        if (this.isEquals) {
            this.isEquals = j == j2;
            return this;
        }
        return this;
    }

    public EqualsBuilder append(int i, int i2) {
        if (this.isEquals) {
            this.isEquals = i == i2;
            return this;
        }
        return this;
    }

    public EqualsBuilder append(short s, short s2) {
        if (this.isEquals) {
            this.isEquals = s == s2;
            return this;
        }
        return this;
    }

    public EqualsBuilder append(char c2, char c3) {
        if (this.isEquals) {
            this.isEquals = c2 == c3;
            return this;
        }
        return this;
    }

    public EqualsBuilder append(byte b2, byte b3) {
        if (this.isEquals) {
            this.isEquals = b2 == b3;
            return this;
        }
        return this;
    }

    public EqualsBuilder append(double d2, double d3) {
        return !this.isEquals ? this : append(Double.doubleToLongBits(d2), Double.doubleToLongBits(d3));
    }

    public EqualsBuilder append(float f2, float f3) {
        return !this.isEquals ? this : append(Float.floatToIntBits(f2), Float.floatToIntBits(f3));
    }

    public EqualsBuilder append(boolean z, boolean z2) {
        if (this.isEquals) {
            this.isEquals = z == z2;
            return this;
        }
        return this;
    }

    public EqualsBuilder append(Object[] objArr, Object[] objArr2) {
        if (this.isEquals && objArr != objArr2) {
            if (objArr == null || objArr2 == null) {
                setEquals(false);
                return this;
            } else if (objArr.length != objArr2.length) {
                setEquals(false);
                return this;
            } else {
                for (int i = 0; i < objArr.length && this.isEquals; i++) {
                    append(objArr[i], objArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(long[] jArr, long[] jArr2) {
        if (this.isEquals && jArr != jArr2) {
            if (jArr == null || jArr2 == null) {
                setEquals(false);
                return this;
            } else if (jArr.length != jArr2.length) {
                setEquals(false);
                return this;
            } else {
                for (int i = 0; i < jArr.length && this.isEquals; i++) {
                    append(jArr[i], jArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(int[] iArr, int[] iArr2) {
        if (this.isEquals && iArr != iArr2) {
            if (iArr == null || iArr2 == null) {
                setEquals(false);
                return this;
            } else if (iArr.length != iArr2.length) {
                setEquals(false);
                return this;
            } else {
                for (int i = 0; i < iArr.length && this.isEquals; i++) {
                    append(iArr[i], iArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(short[] sArr, short[] sArr2) {
        if (this.isEquals && sArr != sArr2) {
            if (sArr == null || sArr2 == null) {
                setEquals(false);
                return this;
            } else if (sArr.length != sArr2.length) {
                setEquals(false);
                return this;
            } else {
                for (int i = 0; i < sArr.length && this.isEquals; i++) {
                    append(sArr[i], sArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(char[] cArr, char[] cArr2) {
        if (this.isEquals && cArr != cArr2) {
            if (cArr == null || cArr2 == null) {
                setEquals(false);
                return this;
            } else if (cArr.length != cArr2.length) {
                setEquals(false);
                return this;
            } else {
                for (int i = 0; i < cArr.length && this.isEquals; i++) {
                    append(cArr[i], cArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(byte[] bArr, byte[] bArr2) {
        if (this.isEquals && bArr != bArr2) {
            if (bArr == null || bArr2 == null) {
                setEquals(false);
                return this;
            } else if (bArr.length != bArr2.length) {
                setEquals(false);
                return this;
            } else {
                for (int i = 0; i < bArr.length && this.isEquals; i++) {
                    append(bArr[i], bArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(double[] dArr, double[] dArr2) {
        if (this.isEquals && dArr != dArr2) {
            if (dArr == null || dArr2 == null) {
                setEquals(false);
                return this;
            } else if (dArr.length != dArr2.length) {
                setEquals(false);
                return this;
            } else {
                for (int i = 0; i < dArr.length && this.isEquals; i++) {
                    append(dArr[i], dArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(float[] fArr, float[] fArr2) {
        if (this.isEquals && fArr != fArr2) {
            if (fArr == null || fArr2 == null) {
                setEquals(false);
                return this;
            } else if (fArr.length != fArr2.length) {
                setEquals(false);
                return this;
            } else {
                for (int i = 0; i < fArr.length && this.isEquals; i++) {
                    append(fArr[i], fArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(boolean[] zArr, boolean[] zArr2) {
        if (this.isEquals && zArr != zArr2) {
            if (zArr == null || zArr2 == null) {
                setEquals(false);
                return this;
            } else if (zArr.length != zArr2.length) {
                setEquals(false);
                return this;
            } else {
                for (int i = 0; i < zArr.length && this.isEquals; i++) {
                    append(zArr[i], zArr2[i]);
                }
                return this;
            }
        }
        return this;
    }

    public boolean isEquals() {
        return this.isEquals;
    }

    protected void setEquals(boolean z) {
        this.isEquals = z;
    }
}
