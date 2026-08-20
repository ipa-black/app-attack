package org.apache.ldap.common.url;

import java.util.List;
import javax.naming.Name;
import org.apache.ldap.common.filter.ExprNode;
/* loaded from: classes3.dex */
public interface LdapUrl {
    List getAttributes();

    List getExtensions();

    ExprNode getFilter();

    String getHostName();

    Name getName();

    int getPort();

    int getScope();

    boolean isSecure();
}
