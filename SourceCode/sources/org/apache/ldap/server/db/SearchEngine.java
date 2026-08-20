package org.apache.ldap.server.db;

import java.math.BigInteger;
import java.util.Map;
import javax.naming.Name;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.SearchControls;
import org.apache.ldap.common.filter.ExprNode;
/* loaded from: classes3.dex */
public interface SearchEngine {
    public static final String ALIASMODE_KEY = "java.naming.ldap.derefAliases";
    public static final String ALWAYS = "always";
    public static final String FINDING = "finding";
    public static final String NEVER = "never";
    public static final String SEARCHING = "searching";

    boolean evaluate(ExprNode exprNode, BigInteger bigInteger) throws NamingException;

    Optimizer getOptimizer();

    NamingEnumeration search(Name name, Map map, ExprNode exprNode, SearchControls searchControls) throws NamingException;
}
