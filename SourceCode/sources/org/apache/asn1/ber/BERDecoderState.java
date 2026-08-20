package org.apache.asn1.ber;

import java.util.List;
import java.util.Map;
import org.apache.commons.lang.p003enum.EnumUtils;
import org.apache.commons.lang.p003enum.ValuedEnum;
/* loaded from: classes5.dex */
public final class BERDecoderState extends ValuedEnum {
    public static final int LENGTH_VAL = 1;
    public static final int TAG_VAL = 0;
    public static final int VALUE_VAL = 2;
    static /* synthetic */ Class class$org$apache$asn1$ber$BERDecoderState;
    public static final BERDecoderState TAG = new BERDecoderState("TAG", 0);
    public static final BERDecoderState LENGTH = new BERDecoderState("LENGTH", 1);
    public static final BERDecoderState VALUE = new BERDecoderState("VALUE", 2);

    private BERDecoderState(String str, int i) {
        super(str, i);
    }

    public final BERDecoderState getNext(boolean z) {
        int value = getValue();
        if (value != 0) {
            if (value != 1) {
                if (value != 2) {
                    return null;
                }
                return TAG;
            } else if (z) {
                return VALUE;
            } else {
                return TAG;
            }
        }
        return LENGTH;
    }

    public final boolean isEndState(boolean z) {
        int value = getValue();
        if (value != 0) {
            if (value != 1) {
                if (value != 2) {
                    return false;
                }
            } else if (z) {
                return false;
            }
            return true;
        }
        return false;
    }

    public static final BERDecoderState getStartState() {
        return TAG;
    }

    public static final BERDecoderState getState(String str) {
        BERDecoderState bERDecoderState = TAG;
        if (str == bERDecoderState.getName()) {
            return bERDecoderState;
        }
        BERDecoderState bERDecoderState2 = LENGTH;
        if (str == bERDecoderState2.getName()) {
            return bERDecoderState2;
        }
        BERDecoderState bERDecoderState3 = VALUE;
        if (str == bERDecoderState3.getName()) {
            return bERDecoderState3;
        }
        if (str.equalsIgnoreCase(bERDecoderState.getName())) {
            return bERDecoderState;
        }
        if (str.equalsIgnoreCase(bERDecoderState2.getName())) {
            return bERDecoderState2;
        }
        if (str.equalsIgnoreCase(bERDecoderState3.getName())) {
            return bERDecoderState3;
        }
        throw new IllegalArgumentException(new StringBuffer("Unknown decoder state").append(str).toString());
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static final List list() {
        Class cls = class$org$apache$asn1$ber$BERDecoderState;
        if (cls == null) {
            cls = class$("org.apache.asn1.ber.BERDecoderState");
            class$org$apache$asn1$ber$BERDecoderState = cls;
        }
        return EnumUtils.getEnumList(cls);
    }

    public static final Map map() {
        Class cls = class$org$apache$asn1$ber$BERDecoderState;
        if (cls == null) {
            cls = class$("org.apache.asn1.ber.BERDecoderState");
            class$org$apache$asn1$ber$BERDecoderState = cls;
        }
        return EnumUtils.getEnumMap(cls);
    }

    public static final BERDecoderState getState(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return VALUE;
                }
                throw new IllegalStateException("Should not be here!");
            }
            return LENGTH;
        }
        return TAG;
    }
}
