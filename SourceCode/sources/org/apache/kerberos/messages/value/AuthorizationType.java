package org.apache.kerberos.messages.value;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class AuthorizationType implements Comparable {
    public static final AuthorizationType IF_RELEVANT;
    public static final AuthorizationType INTENDED_FOR_APPLICATION_CLASS;
    public static final AuthorizationType INTENDED_FOR_SERVER;
    public static final AuthorizationType IN_TICKET_EXTENSIONS;
    public static final AuthorizationType KDC_ISSUED;
    public static final AuthorizationType MANDATORY_TICKET_EXTENSIONS;
    public static final AuthorizationType NULL;
    public static final AuthorizationType OR;
    public static final AuthorizationType OSF_DCE;
    public static final AuthorizationType SESAME;
    public static final List VALUES;
    private static final AuthorizationType[] fValues;
    private final String _fName;
    private final int _fOrdinal;

    static {
        AuthorizationType authorizationType = new AuthorizationType(0, "null");
        NULL = authorizationType;
        AuthorizationType authorizationType2 = new AuthorizationType(1, "if relevant");
        IF_RELEVANT = authorizationType2;
        AuthorizationType authorizationType3 = new AuthorizationType(2, "intended for server");
        INTENDED_FOR_SERVER = authorizationType3;
        AuthorizationType authorizationType4 = new AuthorizationType(3, "intended for application class");
        INTENDED_FOR_APPLICATION_CLASS = authorizationType4;
        AuthorizationType authorizationType5 = new AuthorizationType(4, "kdc issued");
        KDC_ISSUED = authorizationType5;
        AuthorizationType authorizationType6 = new AuthorizationType(5, "or");
        OR = authorizationType6;
        AuthorizationType authorizationType7 = new AuthorizationType(6, "mandatory ticket extensions");
        MANDATORY_TICKET_EXTENSIONS = authorizationType7;
        AuthorizationType authorizationType8 = new AuthorizationType(7, "in ticket extensions");
        IN_TICKET_EXTENSIONS = authorizationType8;
        AuthorizationType authorizationType9 = new AuthorizationType(64, "OSF DCE");
        OSF_DCE = authorizationType9;
        AuthorizationType authorizationType10 = new AuthorizationType(65, TtmlNode.TEXT_EMPHASIS_MARK_SESAME);
        SESAME = authorizationType10;
        AuthorizationType[] authorizationTypeArr = {authorizationType, authorizationType2, authorizationType3, authorizationType4, authorizationType5, authorizationType6, authorizationType7, authorizationType8, authorizationType9, authorizationType10};
        fValues = authorizationTypeArr;
        VALUES = Collections.unmodifiableList(Arrays.asList(authorizationTypeArr));
    }

    public String toString() {
        return new StringBuffer().append(this._fName).append(" (").append(this._fOrdinal).append(")").toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this._fOrdinal - ((AuthorizationType) obj)._fOrdinal;
    }

    public static AuthorizationType getTypeByOrdinal(int i) {
        int i2 = 0;
        while (true) {
            AuthorizationType[] authorizationTypeArr = fValues;
            if (i2 < authorizationTypeArr.length) {
                AuthorizationType authorizationType = authorizationTypeArr[i2];
                if (authorizationType._fOrdinal == i) {
                    return authorizationType;
                }
                i2++;
            } else {
                return NULL;
            }
        }
    }

    public int getOrdinal() {
        return this._fOrdinal;
    }

    private AuthorizationType(int i, String str) {
        this._fOrdinal = i;
        this._fName = str;
    }
}
