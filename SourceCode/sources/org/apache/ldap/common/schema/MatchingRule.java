package org.apache.ldap.common.schema;

import java.util.Comparator;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface MatchingRule extends SchemaObject {
    Comparator getComparator() throws NamingException;

    Normalizer getNormalizer() throws NamingException;

    Syntax getSyntax() throws NamingException;
}
